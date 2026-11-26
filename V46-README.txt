V46 카카오 로그인 게이트
- 로그인 전에는 기존 홈 및 모든 탭을 숨깁니다.
- 카카오 OAuth 성공 후 기존 V45 화면을 그대로 표시합니다.
- 로그인 유지 및 로그아웃은 기존 Supabase 인증 코드를 재사용합니다.
- 기존 일기/사진 저장소는 변경하지 않습니다.
- Supabase Dashboard > Authentication > Providers > Kakao 설정과 URL Configuration의 GitHub Pages Redirect URL 등록이 필요합니다.
- 배포 전에 V45를 백업하세요.
- 이 변경은 로그인 접근 제어 UI이며, 데이터 접근 보안은 Supabase RLS 정책으로 별도 보장해야 합니다.
