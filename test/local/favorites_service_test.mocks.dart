// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// MockGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:shared_preferences/shared_preferences.dart' as _i2;

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
class MockSharedPreferences extends _i1.Mock implements _i2.SharedPreferences {
  @override
  _i3.Future<bool> setString(String? key, String? value) =>
      (super.noSuchMethod(
            Invocation.method(#setString, [key, value]),
            returnValue: _i3.Future<bool>.value(false),
            returnValueForMissingStub: _i3.Future<bool>.value(false),
          )
          as _i3.Future<bool>);

  @override
  _i3.Future<bool> setStringList(String? key, List<String>? value) =>
      (super.noSuchMethod(
            Invocation.method(#setStringList, [key, value]),
            returnValue: _i3.Future<bool>.value(false),
            returnValueForMissingStub: _i3.Future<bool>.value(false),
          )
          as _i3.Future<bool>);

  @override
  String? getString(String? key) =>
      (super.noSuchMethod(Invocation.method(#getString, [key]), returnValue: null, returnValueForMissingStub: null) as String?);

  @override
  List<String>? getStringList(String? key) =>
      (super.noSuchMethod(Invocation.method(#getStringList, [key]), returnValue: null, returnValueForMissingStub: null) as List<String>?);

  @override
  _i3.Future<bool> remove(String? key) =>
      (super.noSuchMethod(
            Invocation.method(#remove, [key]),
            returnValue: _i3.Future<bool>.value(false),
            returnValueForMissingStub: _i3.Future<bool>.value(false),
          )
          as _i3.Future<bool>);

  @override
  _i3.Future<bool> clear() =>
      (super.noSuchMethod(
            Invocation.method(#clear, []),
            returnValue: _i3.Future<bool>.value(false),
            returnValueForMissingStub: _i3.Future<bool>.value(false),
          )
          as _i3.Future<bool>);
}
