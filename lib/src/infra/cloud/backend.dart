import 'package:get_arch_core/get_arch_core.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@module
abstract class Backend {
  @prod
  @test
  @dev
  @preResolve
  @lazySingleton
  Future<Supabase> backend() async => await Supabase.initialize(
        url: 'https://fzwanpopclmbxqjcbunx.supabase.co',
        anonKey:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6d2FucG9wY2xtYnhxamNidW54Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzg0NDYwMTQsImV4cCI6MTk5NDAyMjAxNH0.50JfoYFoxQfico33kL12eqNIDsPPnQa6aQWJKruzYhU',
      );
}
