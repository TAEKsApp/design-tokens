import 'ds_spacing.dart';

/// 공용 반경 토큰 — 이유미 · 커플래닛이 **이름·값이 같게** 쓰는 것만 둔다.
///
/// 카드 사다리는 동심 규칙으로 성립한다: 안쪽 반경 = 바깥 반경 − 그 사이 패딩.
///
/// ```
/// 1차 52  ─ 패딩 20 ─▶  2차 32  ─ 패딩 20 ─▶  3차 12
/// ```
///
/// 그래서 [sectionRadius]·[tileRadius] 는 숫자가 아니라 식이다 — 패딩을 바꾸면
/// 반경이 따라 움직인다. `BorderRadius` 게터는 각 앱이 이 값으로 만든다.
/// 앱마다 값이 다른 것(체크박스 이유미 6 / 커플래닛 12)은 여기 없다.
class DsRadius {
  DsRadius._();

  // ═══════════════════════════════════════════════════════════════
  // PALETTE
  // ═══════════════════════════════════════════════════════════════

  static const double xxs = 2.0;
  static const double xs = 4.0;
  static const double sm = 6.0;
  static const double md = 8.0;
  static const double lg = 12.0;
  static const double xl = 16.0;
  static const double xxl = 20.0;
  static const double xxxl = 24.0;
  static const double round = 32.0;

  /// 알약(pill) — 높이가 반경의 2배 이하면 끝이 반원이 된다.
  static const double full = 100.0;

  // ═══════════════════════════════════════════════════════════════
  // SEMANTIC — 카드 사다리
  // ═══════════════════════════════════════════════════════════════

  /// 2차 박스(CardItem).
  static const double itemRadius = round;

  /// 1차 박스(CardSection) = 2차 32 + 1차 패딩 20.
  static const double sectionRadius =
      itemRadius + DsSpacing.sectionPaddingHorizontal;

  /// 2차 박스보다 한 단 작은 면(썸네일·아이콘 박스) = 2차 32 − 2차 패딩 20.
  static const double tileRadius = itemRadius - DsSpacing.itemPaddingHorizontal;

  // ═══════════════════════════════════════════════════════════════
  // SEMANTIC — 자리별
  // ═══════════════════════════════════════════════════════════════

  /// 값을 담는 필드(입력창·값 선택) — 2차 박스와 같은 숫자, 면 색으로 구분.
  static const double input = itemRadius;

  /// 카드 안에 떠 있는 60 이상 정사각 사진.
  static const double photoTileRadius = xxl;

  /// 격자에서 하나를 고르는 셀.
  static const double iconChoiceRadius = xl;

  /// 떠 있는 글라스 입력 카드(AI 채팅 입력바) — 52 면 코너가 안쪽 원형 버튼을 파고든다.
  static const double glassInputRadius = 40.0;

  /// 버튼 계열 옛 반경 — 지금 버튼은 전부 알약([full])이다. 두 앱에 이름이
  /// 남아 있어 값만 맞춰 둔다.
  static const double button = lg;
}
