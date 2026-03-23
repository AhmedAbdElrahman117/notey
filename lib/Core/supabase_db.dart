import 'package:flutter_animate/flutter_animate.dart';
import 'package:notey/Features/Auth/Models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseDB {
  final _database = Supabase.instance.client.rest;

  Future<void> insertUser({
    required UserModel user,
  }) async {
    await _database
        .from('users')
        .insert(
          user.toMap(),
        )
        .timeout(30.seconds);
  }

  Future<UserModel> getUser({required String email}) async {
    var user = await _database
        .from('users')
        .select()
        .eq('email', email)
        .limit(1)
        .single()
        .timeout(30.seconds);
    return UserModel.fromMap(user);
  }

  Future<void> addNote(List<Map<String, dynamic>> data) async {
    await _database.from('notes').insert(data).timeout(30.seconds);
  }

  Future<void> updateNote(List<Map<String, dynamic>> data) async {
    await _database.from('notes').upsert(data).timeout(30.seconds);
  }

  Future<void> deleteNote(List<int> ids) async {
    await _database
        .from('notes')
        .delete()
        .inFilter('id', ids)
        .timeout(30.seconds);
  }

  Future<void> addCategory(List<Map<String, dynamic>> data) async {
    await _database.from('categories').insert(data).timeout(30.seconds);
  }

  Future<void> updateCategory(List<Map<String, dynamic>> data) async {
    await _database.from('categories').upsert(data).timeout(30.seconds);
  }

  Future<void> deleteCategory(List<int> ids) async {
    await _database
        .from('categories')
        .delete()
        .inFilter('id', ids)
        .timeout(30.seconds);
  }
}
