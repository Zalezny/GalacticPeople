// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../swapi_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwapiResponseModel {

 List<PersonModel> get results;
/// Create a copy of SwapiResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwapiResponseModelCopyWith<SwapiResponseModel> get copyWith => _$SwapiResponseModelCopyWithImpl<SwapiResponseModel>(this as SwapiResponseModel, _$identity);

  /// Serializes this SwapiResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwapiResponseModel&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'SwapiResponseModel(results: $results)';
}


}

/// @nodoc
abstract mixin class $SwapiResponseModelCopyWith<$Res>  {
  factory $SwapiResponseModelCopyWith(SwapiResponseModel value, $Res Function(SwapiResponseModel) _then) = _$SwapiResponseModelCopyWithImpl;
@useResult
$Res call({
 List<PersonModel> results
});




}
/// @nodoc
class _$SwapiResponseModelCopyWithImpl<$Res>
    implements $SwapiResponseModelCopyWith<$Res> {
  _$SwapiResponseModelCopyWithImpl(this._self, this._then);

  final SwapiResponseModel _self;
  final $Res Function(SwapiResponseModel) _then;

/// Create a copy of SwapiResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<PersonModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SwapiResponseModel].
extension SwapiResponseModelPatterns on SwapiResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SwapiResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SwapiResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SwapiResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SwapiResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SwapiResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SwapiResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PersonModel> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SwapiResponseModel() when $default != null:
return $default(_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PersonModel> results)  $default,) {final _that = this;
switch (_that) {
case _SwapiResponseModel():
return $default(_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PersonModel> results)?  $default,) {final _that = this;
switch (_that) {
case _SwapiResponseModel() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SwapiResponseModel implements SwapiResponseModel {
  const _SwapiResponseModel({required final  List<PersonModel> results}): _results = results;
  factory _SwapiResponseModel.fromJson(Map<String, dynamic> json) => _$SwapiResponseModelFromJson(json);

 final  List<PersonModel> _results;
@override List<PersonModel> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of SwapiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwapiResponseModelCopyWith<_SwapiResponseModel> get copyWith => __$SwapiResponseModelCopyWithImpl<_SwapiResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SwapiResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwapiResponseModel&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'SwapiResponseModel(results: $results)';
}


}

/// @nodoc
abstract mixin class _$SwapiResponseModelCopyWith<$Res> implements $SwapiResponseModelCopyWith<$Res> {
  factory _$SwapiResponseModelCopyWith(_SwapiResponseModel value, $Res Function(_SwapiResponseModel) _then) = __$SwapiResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<PersonModel> results
});




}
/// @nodoc
class __$SwapiResponseModelCopyWithImpl<$Res>
    implements _$SwapiResponseModelCopyWith<$Res> {
  __$SwapiResponseModelCopyWithImpl(this._self, this._then);

  final _SwapiResponseModel _self;
  final $Res Function(_SwapiResponseModel) _then;

/// Create a copy of SwapiResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_SwapiResponseModel(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<PersonModel>,
  ));
}


}

// dart format on
