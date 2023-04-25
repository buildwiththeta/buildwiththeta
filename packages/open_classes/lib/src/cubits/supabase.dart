// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:supabase/supabase.dart';

class SupabaseCubit extends Cubit<SupabaseClient?> {
  SupabaseCubit() : super(null);

  void update(final SupabaseClient value) => emit(value);
}
