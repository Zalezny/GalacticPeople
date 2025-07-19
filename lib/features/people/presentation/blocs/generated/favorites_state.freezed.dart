// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../favorites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritesState {

 List<PersonModel> get favorites; Map<String, bool> get favoriteStatus; bool get isLoading; String? get error;
/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesStateCopyWith<FavoritesState> get copyWith => _$FavoritesStateCopyWithImpl<FavoritesState>(this as FavoritesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesState&&const DeepCollectionEquality().equals(other.favorites, favorites)&&const DeepCollectionEquality().equals(other.favoriteStatus, favoriteStatus)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(favorites),const DeepCollectionEquality().hash(favoriteStatus),isLoading,error);

@override
String toString() {
  return 'FavoritesState(favorites: $favorites, favoriteStatus: $favoriteStatus, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $FavoritesStateCopyWith<$Res>  {
  factory $FavoritesStateCopyWith(FavoritesState value, $Res Function(FavoritesState) _then) = _$FavoritesStateCopyWithImpl;
@useResult
$Res call({
 List<PersonModel> favorites, Map<String, bool> favoriteStatus, bool isLoading, String? error
});




}
/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._self, this._then);

  final FavoritesState _self;
  final $Res Function(FavoritesState) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? favorites = null,Object? favoriteStatus = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
favorites: null == favorites ? _self.favorites : favorites // ignore: cast_nullable_to_non_nullable
as List<PersonModel>,favoriteStatus: null == favoriteStatus ? _self.favoriteStatus : favoriteStatus // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoritesState].
extension FavoritesStatePatterns on FavoritesState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoritesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoritesState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoritesState value)  $default,){
final _that = this;
switch (_that) {
case _FavoritesState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoritesState value)?  $default,){
final _that = this;
switch (_that) {
case _FavoritesState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PersonModel> favorites,  Map<String, bool> favoriteStatus,  bool isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoritesState() when $default != null:
return $default(_that.favorites,_that.favoriteStatus,_that.isLoading,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PersonModel> favorites,  Map<String, bool> favoriteStatus,  bool isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _FavoritesState():
return $default(_that.favorites,_that.favoriteStatus,_that.isLoading,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PersonModel> favorites,  Map<String, bool> favoriteStatus,  bool isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _FavoritesState() when $default != null:
return $default(_that.favorites,_that.favoriteStatus,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _FavoritesState implements FavoritesState {
  const _FavoritesState({final  List<PersonModel> favorites = const [], final  Map<String, bool> favoriteStatus = const {}, this.isLoading = false, this.error}): _favorites = favorites,_favoriteStatus = favoriteStatus;
  

 final  List<PersonModel> _favorites;
@override@JsonKey() List<PersonModel> get favorites {
  if (_favorites is EqualUnmodifiableListView) return _favorites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favorites);
}

 final  Map<String, bool> _favoriteStatus;
@override@JsonKey() Map<String, bool> get favoriteStatus {
  if (_favoriteStatus is EqualUnmodifiableMapView) return _favoriteStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_favoriteStatus);
}

@override@JsonKey() final  bool isLoading;
@override final  String? error;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoritesStateCopyWith<_FavoritesState> get copyWith => __$FavoritesStateCopyWithImpl<_FavoritesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoritesState&&const DeepCollectionEquality().equals(other._favorites, _favorites)&&const DeepCollectionEquality().equals(other._favoriteStatus, _favoriteStatus)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_favorites),const DeepCollectionEquality().hash(_favoriteStatus),isLoading,error);

@override
String toString() {
  return 'FavoritesState(favorites: $favorites, favoriteStatus: $favoriteStatus, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$FavoritesStateCopyWith<$Res> implements $FavoritesStateCopyWith<$Res> {
  factory _$FavoritesStateCopyWith(_FavoritesState value, $Res Function(_FavoritesState) _then) = __$FavoritesStateCopyWithImpl;
@override @useResult
$Res call({
 List<PersonModel> favorites, Map<String, bool> favoriteStatus, bool isLoading, String? error
});




}
/// @nodoc
class __$FavoritesStateCopyWithImpl<$Res>
    implements _$FavoritesStateCopyWith<$Res> {
  __$FavoritesStateCopyWithImpl(this._self, this._then);

  final _FavoritesState _self;
  final $Res Function(_FavoritesState) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? favorites = null,Object? favoriteStatus = null,Object? isLoading = null,Object? error = freezed,}) {
  return _then(_FavoritesState(
favorites: null == favorites ? _self._favorites : favorites // ignore: cast_nullable_to_non_nullable
as List<PersonModel>,favoriteStatus: null == favoriteStatus ? _self._favoriteStatus : favoriteStatus // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
