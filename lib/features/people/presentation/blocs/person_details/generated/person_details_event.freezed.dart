// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../person_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersonDetailsEvent {

 int get id;
/// Create a copy of PersonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonDetailsEventCopyWith<PersonDetailsEvent> get copyWith => _$PersonDetailsEventCopyWithImpl<PersonDetailsEvent>(this as PersonDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonDetailsEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PersonDetailsEvent(id: $id)';
}


}

/// @nodoc
abstract mixin class $PersonDetailsEventCopyWith<$Res>  {
  factory $PersonDetailsEventCopyWith(PersonDetailsEvent value, $Res Function(PersonDetailsEvent) _then) = _$PersonDetailsEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$PersonDetailsEventCopyWithImpl<$Res>
    implements $PersonDetailsEventCopyWith<$Res> {
  _$PersonDetailsEventCopyWithImpl(this._self, this._then);

  final PersonDetailsEvent _self;
  final $Res Function(PersonDetailsEvent) _then;

/// Create a copy of PersonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonDetailsEvent].
extension PersonDetailsEventPatterns on PersonDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadPerson value)?  loadPerson,TResult Function( RefreshPerson value)?  refreshPerson,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadPerson() when loadPerson != null:
return loadPerson(_that);case RefreshPerson() when refreshPerson != null:
return refreshPerson(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadPerson value)  loadPerson,required TResult Function( RefreshPerson value)  refreshPerson,}){
final _that = this;
switch (_that) {
case LoadPerson():
return loadPerson(_that);case RefreshPerson():
return refreshPerson(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadPerson value)?  loadPerson,TResult? Function( RefreshPerson value)?  refreshPerson,}){
final _that = this;
switch (_that) {
case LoadPerson() when loadPerson != null:
return loadPerson(_that);case RefreshPerson() when refreshPerson != null:
return refreshPerson(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  loadPerson,TResult Function( int id)?  refreshPerson,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadPerson() when loadPerson != null:
return loadPerson(_that.id);case RefreshPerson() when refreshPerson != null:
return refreshPerson(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  loadPerson,required TResult Function( int id)  refreshPerson,}) {final _that = this;
switch (_that) {
case LoadPerson():
return loadPerson(_that.id);case RefreshPerson():
return refreshPerson(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  loadPerson,TResult? Function( int id)?  refreshPerson,}) {final _that = this;
switch (_that) {
case LoadPerson() when loadPerson != null:
return loadPerson(_that.id);case RefreshPerson() when refreshPerson != null:
return refreshPerson(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class LoadPerson implements PersonDetailsEvent {
  const LoadPerson(this.id);
  

@override final  int id;

/// Create a copy of PersonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadPersonCopyWith<LoadPerson> get copyWith => _$LoadPersonCopyWithImpl<LoadPerson>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadPerson&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PersonDetailsEvent.loadPerson(id: $id)';
}


}

/// @nodoc
abstract mixin class $LoadPersonCopyWith<$Res> implements $PersonDetailsEventCopyWith<$Res> {
  factory $LoadPersonCopyWith(LoadPerson value, $Res Function(LoadPerson) _then) = _$LoadPersonCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class _$LoadPersonCopyWithImpl<$Res>
    implements $LoadPersonCopyWith<$Res> {
  _$LoadPersonCopyWithImpl(this._self, this._then);

  final LoadPerson _self;
  final $Res Function(LoadPerson) _then;

/// Create a copy of PersonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(LoadPerson(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RefreshPerson implements PersonDetailsEvent {
  const RefreshPerson(this.id);
  

@override final  int id;

/// Create a copy of PersonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshPersonCopyWith<RefreshPerson> get copyWith => _$RefreshPersonCopyWithImpl<RefreshPerson>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshPerson&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PersonDetailsEvent.refreshPerson(id: $id)';
}


}

/// @nodoc
abstract mixin class $RefreshPersonCopyWith<$Res> implements $PersonDetailsEventCopyWith<$Res> {
  factory $RefreshPersonCopyWith(RefreshPerson value, $Res Function(RefreshPerson) _then) = _$RefreshPersonCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class _$RefreshPersonCopyWithImpl<$Res>
    implements $RefreshPersonCopyWith<$Res> {
  _$RefreshPersonCopyWithImpl(this._self, this._then);

  final RefreshPerson _self;
  final $Res Function(RefreshPerson) _then;

/// Create a copy of PersonDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(RefreshPerson(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
