// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../people_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PeopleState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeopleState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PeopleState()';
}


}

/// @nodoc
class $PeopleStateCopyWith<$Res>  {
$PeopleStateCopyWith(PeopleState _, $Res Function(PeopleState) __);
}


/// Adds pattern-matching-related methods to [PeopleState].
extension PeopleStatePatterns on PeopleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PeopleInitial value)?  initial,TResult Function( PeopleLoading value)?  loading,TResult Function( PeopleLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PeopleInitial() when initial != null:
return initial(_that);case PeopleLoading() when loading != null:
return loading(_that);case PeopleLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PeopleInitial value)  initial,required TResult Function( PeopleLoading value)  loading,required TResult Function( PeopleLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case PeopleInitial():
return initial(_that);case PeopleLoading():
return loading(_that);case PeopleLoaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PeopleInitial value)?  initial,TResult? Function( PeopleLoading value)?  loading,TResult? Function( PeopleLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case PeopleInitial() when initial != null:
return initial(_that);case PeopleLoading() when loading != null:
return loading(_that);case PeopleLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( Result<List<PersonModel>> result)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PeopleInitial() when initial != null:
return initial();case PeopleLoading() when loading != null:
return loading();case PeopleLoaded() when loaded != null:
return loaded(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( Result<List<PersonModel>> result)  loaded,}) {final _that = this;
switch (_that) {
case PeopleInitial():
return initial();case PeopleLoading():
return loading();case PeopleLoaded():
return loaded(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( Result<List<PersonModel>> result)?  loaded,}) {final _that = this;
switch (_that) {
case PeopleInitial() when initial != null:
return initial();case PeopleLoading() when loading != null:
return loading();case PeopleLoaded() when loaded != null:
return loaded(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class PeopleInitial implements PeopleState {
  const PeopleInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeopleInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PeopleState.initial()';
}


}




/// @nodoc


class PeopleLoading implements PeopleState {
  const PeopleLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeopleLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PeopleState.loading()';
}


}




/// @nodoc


class PeopleLoaded implements PeopleState {
  const PeopleLoaded(this.result);
  

 final  Result<List<PersonModel>> result;

/// Create a copy of PeopleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeopleLoadedCopyWith<PeopleLoaded> get copyWith => _$PeopleLoadedCopyWithImpl<PeopleLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeopleLoaded&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'PeopleState.loaded(result: $result)';
}


}

/// @nodoc
abstract mixin class $PeopleLoadedCopyWith<$Res> implements $PeopleStateCopyWith<$Res> {
  factory $PeopleLoadedCopyWith(PeopleLoaded value, $Res Function(PeopleLoaded) _then) = _$PeopleLoadedCopyWithImpl;
@useResult
$Res call({
 Result<List<PersonModel>> result
});


$ResultCopyWith<List<PersonModel>, $Res> get result;

}
/// @nodoc
class _$PeopleLoadedCopyWithImpl<$Res>
    implements $PeopleLoadedCopyWith<$Res> {
  _$PeopleLoadedCopyWithImpl(this._self, this._then);

  final PeopleLoaded _self;
  final $Res Function(PeopleLoaded) _then;

/// Create a copy of PeopleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(PeopleLoaded(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Result<List<PersonModel>>,
  ));
}

/// Create a copy of PeopleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResultCopyWith<List<PersonModel>, $Res> get result {
  
  return $ResultCopyWith<List<PersonModel>, $Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
