# design_tokens

이유미 · 커플래닛이 **같이 쓰는** 간격·반경 토큰. 여기 값을 바꾸면 두 앱이 같이 바뀐다.

## 무엇이 여기 있나

| 파일 | 내용 |
|---|---|
| `lib/src/ds_spacing.dart` | 팔레트 전부(`space0`~`space160`, `xxs`~`xxxl`) + 두 앱이 이름·값이 같은 시맨틱 38개 |
| `lib/src/ds_radius.dart` | 팔레트(`xxs`~`full`) + 같은 시맨틱 7개(카드 사다리 52/32/12 는 식으로) |

**여기 없는 것** — 앱마다 일부러 다른 값(`sectionHorizontalMargin` 이유미 8 / 커플래닛 0,
체크박스 반경 6 / 12)과 한 앱에만 있는 토큰(큐브·수유, 커피 게이지·타이머 등)은 각 앱
토큰 파일에 남는다. 모션 토큰은 아직 옮기지 않았다.

## 규칙

- **앱 화면은 이 패키지를 직접 쓰지 않는다.** 각 앱의 `AppSpacing`·`AppRadius` 가 여기
  값을 별칭으로 가리키고(`static const double cardGap = DsSpacing.cardGap;`), 화면은 앱
  클래스만 쓴다. 그래서 화면 코드는 이 패키지가 생겨도 바뀌지 않는다.
- **앱에서 공용 토큰 값을 바꾸지 않는다.** 앱 토큰 파일에서 같은 이름을 다른 값으로 다시
  정의하면 각 앱의 가드 테스트가 실패한다. 한 앱만 달라야 하면 이름을 달리 지어 앱에 둔다.
- 화면 코드는 시맨틱만 쓴다. 팔레트는 토큰 파일 안에서 시맨틱을 정의할 때만 쓴다
  (각 앱 `design_token_guard_test`).
- 수치를 문서·주석에 복제하지 않는다. 궁금하면 이 파일을 읽는다.

## 값을 바꾸는 순서

1. 여기서 값을 고치고 커밋·push 한다.
2. 각 앱 `pubspec.yaml` 의 `design_tokens` → `ref:` 를 새 커밋 해시로 올린다.
3. 각 앱에서 `flutter pub get` → `flutter analyze` · `flutter test`.

이 PC 에서는 각 앱의 `pubspec_overrides.yaml`(git 에 올리지 않음)이 이 폴더를 path 로
가리켜, 1번만 해도 로컬 빌드에 바로 반영된다. 2번은 다른 PC·CI 를 위한 것이다.

```yaml
# 앱 pubspec.yaml
dependencies:
  design_tokens:
    git:
      url: https://github.com/TAEKsApp/design-tokens.git
      ref: <커밋 해시>

# 앱 pubspec_overrides.yaml (로컬 전용, .gitignore)
dependency_overrides:
  design_tokens:
    path: ../design-tokens   # 이유미 기준. 커플래닛 작업본은 ../../design-tokens
```
