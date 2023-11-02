import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://ekrishsjmkmxbfssdryz.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVrcmlzaHNqbWtteGJmc3Nkcnl6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTg3OTQ3ODQsImV4cCI6MjAxNDM3MDc4NH0.pO0ytpZZQ5pfQImskcVI4tAqaD9kJieCZzZi0JdXnXs';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
