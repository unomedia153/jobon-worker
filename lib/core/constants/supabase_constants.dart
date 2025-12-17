/// Supabase 관련 상수들을 보관하는 파일입니다.
///
/// 실제 값은 로컬 .env, 환경변수, 빌드 설정 등으로 분리해서
/// 주입하는 방식을 권장하며, 아래 값들은 예시/플레이스홀더입니다.
class SupabaseConstants {
  SupabaseConstants._();

  static const String supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://gjaukadbddcbivpmplwz.supabase.co',
  );

  static const String supabaseAnonKey = String.fromEnvironment(
    'SUPABASE_ANON_KEY',
    defaultValue:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdqYXVrYWRiZGRjYml2cG1wbHd6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjU4NzI1OTcsImV4cCI6MjA4MTQ0ODU5N30.YhbjnIwHXcuC2w83aMoSJzcYWrDw_kliuoAQOOnuHs0',
  );
}
