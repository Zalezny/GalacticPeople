// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../people_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PeopleEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeopleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PeopleEvent()';
}


}

/// @nodoc
class $PeopleEventCopyWith<$Res>  {
$PeopleEventCopyWith(PeopleEvent _, $Res Function(PeopleEvent) __);
}


/// Adds pattern-matching-related methods to [PeopleEvent].
extension PeopleEventPatterns on PeopleEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadPeople value)?  loadPeople,TResult Function( RefreshPeople value)?  refreshPeople,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadPeople() when loadPeople != null:
return loadPeople(_that);case RefreshPeople() when refreshPeople != null:
return refreshPeople(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadPeople value)  loadPeople,required TResult Function( RefreshPeople value)  refreshPeople,}){
final _that = this;
switch (_that) {
case LoadPeople():
return loadPeople(_that);case RefreshPeople():
return refreshPeople(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadPeople value)?  loadPeople,TResult? Function( RefreshPeople value)?  refreshPeople,}){
final _that = this;
switch (_that) {
case LoadPeople() when loadPeople != null:
return loadPeople(_that);case RefreshPeople() when refreshPeople != null:
return refreshPeople(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadPeople,TResult Function()?  refreshPeople,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadPeople() when loadPeople != null:
return loadPeople();case RefreshPeople() when refreshPeople != null:
return refreshPeople();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadPeople,required TResult Function()  refreshPeople,}) {final _that = this;
switch (_that) {
case LoadPeople():
return loadPeople();case RefreshPeople():
return refreshPeople();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadPeople,TResult? Function()?  refreshPeople,}) {final _that = this;
switch (_that) {
case LoadPeople() when loadPeople != null:
return loadPeople();case RefreshPeople() when refreshPeople != null:
return refreshPeople();case _:
  return null;

}
}

}

/// @nodoc


class LoadPeople implements PeopleEvent {
  const LoadPeople();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadPeople);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PeopleEvent.loadPeople()';
}


}




/// @nodoc


class RefreshPeople implements PeopleEvent {
  const RefreshPeople();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshPeople);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PeopleEvent.refreshPeople()';
}


}




// dart format on
