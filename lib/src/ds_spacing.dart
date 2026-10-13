import 'package:flutter/painting.dart';

/// 공용 간격 토큰 — 이유미 · 커플래닛이 **이름·값이 같게** 쓰는 것만 둔다.
///
/// 2계층이다. 팔레트(`space*`·`xxs~xxxl`)는 숫자에 접두어만 붙은 원시 값이고,
/// 시맨틱은 "이 자리는 무엇인가"를 담는다. 두 앱 화면 코드는 시맨틱만 쓴다 —
/// 팔레트는 토큰 파일 안에서 시맨틱을 정의할 때만 쓴다(각 앱 가드가 막는다).
///
/// 앱마다 일부러 다른 값(`sectionHorizontalMargin` 등)과 한 앱에만 있는 토큰은
/// 여기 두지 않는다. 각 앱 토큰 파일에 남는다.
class DsSpacing {
  DsSpacing._();

  // ═══════════════════════════════════════════════════════════════
  // PALETTE — 두 앱의 팔레트를 합친 것(값은 원래 전부 같았다)
  // ═══════════════════════════════════════════════════════════════

  static const double space0 = 0.0;

  /// 머리카락 선 두께. 간격이 아니라 선의 두께다.
  static const double space1 = 1.0;
  static const double space2 = 2.0;
  static const double space4 = 4.0;
  static const double space6 = 6.0;
  static const double space8 = 8.0;
  static const double space10 = 10.0;
  static const double space12 = 12.0;
  static const double space14 = 14.0;
  static const double space16 = 16.0;
  static const double space20 = 20.0;
  static const double space24 = 24.0;
  static const double space28 = 28.0;
  static const double space32 = 32.0;
  static const double space34 = 34.0;
  static const double space36 = 36.0;
  static const double space40 = 40.0;
  static const double space44 = 44.0;
  static const double space48 = 48.0;
  static const double space52 = 52.0;
  static const double space56 = 56.0;
  static const double space60 = 60.0;
  static const double space64 = 64.0;
  static const double space72 = 72.0;
  static const double space80 = 80.0;
  static const double space160 = 160.0;

  /// 크기 별칭 — 이름은 시맨틱처럼 보이지만 팔레트다.
  static const double xxs = space4;
  static const double xs = space8;
  static const double sm = space12;
  static const double md = space16;
  static const double lg = space20;
  static const double xl = space24;
  static const double xxl = space32;
  static const double xxxl = space48;

  // ═══════════════════════════════════════════════════════════════
  // SEMANTIC — 1차 박스(CardSection)
  // ═══════════════════════════════════════════════════════════════

  /// 1차 박스 좌우 패딩(면선 20). 글자는 여기에 [cardTextInset] 을 더한다.
  static const double sectionPaddingHorizontal = space20;

  /// 1차 박스 위 패딩 — 타이틀(글자)로 시작한다.
  static const double sectionPaddingVertical = space32;

  /// 1차 박스 아래 패딩 — 면으로 끝날 때. 좌우와 같아 마지막 박스 둘레가 고르다.
  static const double sectionPaddingBottom = space20;

  /// 1차 박스 아래 패딩 — 글자로 끝날 때(`endsWithText`).
  static const double sectionPaddingBottomText = space32;

  static const EdgeInsets sectionPadding = EdgeInsets.fromLTRB(
    sectionPaddingHorizontal,
    sectionPaddingVertical,
    sectionPaddingHorizontal,
    sectionPaddingBottom,
  );

  /// 홈 최상위 섹션 헤더 ↔ 콘텐츠 블록. 카드 안 타이틀 간격(커플래닛
  /// `cardTitleGap` 16)보다 한 단 넓어 섹션 경계가 카드 내부와 구분된다.
  static const double sectionHeaderGap = space24;

  /// 면 대비 글자 추가 인셋 — 면 20 → 글자 30.
  static const double cardTextInset = space10;

  // ═══════════════════════════════════════════════════════════════
  // SEMANTIC — 2차 박스(CardItem) · 카드 안
  // ═══════════════════════════════════════════════════════════════

  static const double itemPaddingHorizontal = space20;
  static const double itemPaddingVertical = space24;
  static const EdgeInsets itemPadding = EdgeInsets.symmetric(
    horizontal: itemPaddingHorizontal,
    vertical: itemPaddingVertical,
  );

  /// 카드 안 보조 박스·배너의 안쪽 — 사방 고르게.
  static const EdgeInsets innerBoxPadding = EdgeInsets.all(space20);

  /// 카드 사이 간격 — 같은 종류가 이어진다는 뜻.
  static const double cardGap = space4;

  /// 카드 안 서로 다른 덩어리 사이(그리드 ↔ 버튼, 값 목록 ↔ 설명).
  static const double cardChunkGap = space16;

  /// 카드 안 '라벨·값' 칸끼리 — [cardChunkGap] 보다 반드시 좁다.
  static const double cardValueRowGap = space4;

  /// 칩 묶음(Wrap)의 칩 사이 — 가로·세로 같은 값.
  static const double chipWrapGap = space8;

  /// 한 그룹으로 읽히는 글자 사이(제목 ↔ 부제).
  static const double textGroupGap = space8;

  /// 라벨 ↔ 바로 딸린 한 줄.
  static const double textPairGap = space4;

  /// 떠 있는 글라스 카드(AI 채팅 입력바)의 사방 안쪽.
  static const double glassCardPadding = space16;

  // ═══════════════════════════════════════════════════════════════
  // SEMANTIC — 화면 골격
  // ═══════════════════════════════════════════════════════════════

  /// 화면 최상단 글자 위 마진.
  static const double screenTopMargin = space28;

  /// 헤더(카드 밖) 좌우 패딩.
  static const double headerHorizontalPadding = space20;

  /// 상단 내비 바로 아래 첫 글자까지.
  static const double belowNavTextGap = space16;

  /// 질문 제목 묶음 ↔ 그 아래 선택지·입력.
  static const double headToContentGap = space32;

  /// 터치 타깃 하한.
  static const double minTouchTarget = space44;

  /// 글자 줄에 붙는 작은 아이콘(행 끝 셰브론·닫기·휴지통).
  static const double rowActionIcon = space20;

  // ── 버튼 2티어 ──
  static const double buttonHeightLarge = space56;
  static const double buttonHeightMedium = space48;

  // ── 하단 독바 ──
  static const double dockBarHeight = space64;
  static const double dockBarBottomMargin = space12;
  static const double dockBarSideMargin = space12;

  /// 독바가 차지하는 세로 총량(SafeArea 제외).
  static const double dockBarExtent = dockBarHeight + dockBarBottomMargin;

  // ── 경계 페이드 4단계 ──
  static const double fadeCompact = space16;
  static const double fadeSheet = space24;
  static const double fadeInline = space28;
  static const double scrollFadeHeight = space32;

  // ═══════════════════════════════════════════════════════════════
  // SEMANTIC — 팝업 · 시트 · 토스트
  // ═══════════════════════════════════════════════════════════════

  /// 팝업 ↔ 화면 좌우.
  static const double popupInsetHorizontal = space20;

  /// 팝업 제목 ↔ 본문 — 한 그룹.
  static const double popupTitleGap = textGroupGap;

  /// 팝업 버튼 줄 ↔ 보조 경로(글자 링크).
  static const double popupLinkGap = space4;

  /// 바텀시트 본문 — 좌우 시트 면선 20, 위 0(헤더가 간격을 가짐), 아래 20.
  static const EdgeInsets sheetBodyPadding = EdgeInsets.fromLTRB(
    space20,
    space0,
    space20,
    sectionPaddingBottom,
  );

  /// 토스트 안쪽 — 반경 32 라 한 줄이면 알약이 된다.
  static const EdgeInsets toastPadding = EdgeInsets.symmetric(
    horizontal: space20,
    vertical: space16,
  );

  /// 토스트 ↔ 아래에 있는 CTA·입력창·독바.
  static const double toastDockGap = space8;
}
