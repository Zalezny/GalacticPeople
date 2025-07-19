// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../favorites_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesEvent()';
}


}

/// @nodoc
class $FavoritesEventCopyWith<$Res>  {
$FavoritesEventCopyWith(FavoritesEvent _, $Res Function(FavoritesEvent) __);
}


/// Adds pattern-matching-related methods to [FavoritesEvent].
extension FavoritesEventPatterns on FavoritesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddToFavorites value)?  addToFavorites,TResult Function( RemoveFromFavorites value)?  removeFromFavorites,TResult Function( CheckIfFavorite value)?  checkIfFavorite,TResult Function( LoadFavorites value)?  loadFavorites,TResult Function( ToggleFavorite value)?  toggleFavorite,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddToFavorites() when addToFavorites != null:
return addToFavorites(_that);case RemoveFromFavorites() when removeFromFavorites != null:
return removeFromFavorites(_that);case CheckIfFavorite() when checkIfFavorite != null:
return checkIfFavorite(_that);case LoadFavorites() when loadFavorites != null:
return loadFavorites(_that);case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddToFavorites value)  addToFavorites,required TResult Function( RemoveFromFavorites value)  removeFromFavorites,required TResult Function( CheckIfFavorite value)  checkIfFavorite,required TResult Function( LoadFavorites value)  loadFavorites,required TResult Function( ToggleFavorite value)  toggleFavorite,}){
final _that = this;
switch (_that) {
case AddToFavorites():
return addToFavorites(_that);case RemoveFromFavorites():
return removeFromFavorites(_that);case CheckIfFavorite():
return checkIfFavorite(_that);case LoadFavorites():
return loadFavorites(_that);case ToggleFavorite():
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddToFavorites value)?  addToFavorites,TResult? Function( RemoveFromFavorites value)?  removeFromFavorites,TResult? Function( CheckIfFavorite value)?  checkIfFavorite,TResult? Function( LoadFavorites value)?  loadFavorites,TResult? Function( ToggleFavorite value)?  toggleFavorite,}){
final _that = this;
switch (_that) {
case AddToFavorites() when addToFavorites != null:
return addToFavorites(_that);case RemoveFromFavorites() when removeFromFavorites != null:
return removeFromFavorites(_that);case CheckIfFavorite() when checkIfFavorite != null:
return checkIfFavorite(_that);case LoadFavorites() when loadFavorites != null:
return loadFavorites(_that);case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PersonModel person)?  addToFavorites,TResult Function( PersonModel person)?  removeFromFavorites,TResult Function( PersonModel person)?  checkIfFavorite,TResult Function()?  loadFavorites,TResult Function( PersonModel person)?  toggleFavorite,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddToFavorites() when addToFavorites != null:
return addToFavorites(_that.person);case RemoveFromFavorites() when removeFromFavorites != null:
return removeFromFavorites(_that.person);case CheckIfFavorite() when checkIfFavorite != null:
return checkIfFavorite(_that.person);case LoadFavorites() when loadFavorites != null:
return loadFavorites();case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.person);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PersonModel person)  addToFavorites,required TResult Function( PersonModel person)  removeFromFavorites,required TResult Function( PersonModel person)  checkIfFavorite,required TResult Function()  loadFavorites,required TResult Function( PersonModel person)  toggleFavorite,}) {final _that = this;
switch (_that) {
case AddToFavorites():
return addToFavorites(_that.person);case RemoveFromFavorites():
return removeFromFavorites(_that.person);case CheckIfFavorite():
return checkIfFavorite(_that.person);case LoadFavorites():
return loadFavorites();case ToggleFavorite():
return toggleFavorite(_that.person);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PersonModel person)?  addToFavorites,TResult? Function( PersonModel person)?  removeFromFavorites,TResult? Function( PersonModel person)?  checkIfFavorite,TResult? Function()?  loadFavorites,TResult? Function( PersonModel person)?  toggleFavorite,}) {final _that = this;
switch (_that) {
case AddToFavorites() when addToFavorites != null:
return addToFavorites(_that.person);case RemoveFromFavorites() when removeFromFavorites != null:
return removeFromFavorites(_that.person);case CheckIfFavorite() when checkIfFavorite != null:
return checkIfFavorite(_that.person);case LoadFavorites() when loadFavorites != null:
return loadFavorites();case ToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that.person);case _:
  return null;

}
}

}

/// @nodoc


class AddToFavorites implements FavoritesEvent {
  const AddToFavorites(this.person);
  

 final  PersonModel person;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToFavoritesCopyWith<AddToFavorites> get copyWith => _$AddToFavoritesCopyWithImpl<AddToFavorites>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToFavorites&&(identical(other.person, person) || other.person == person));
}


@override
int get hashCode => Object.hash(runtimeType,person);

@override
String toString() {
  return 'FavoritesEvent.addToFavorites(person: $person)';
}


}

/// @nodoc
abstract mixin class $AddToFavoritesCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory $AddToFavoritesCopyWith(AddToFavorites value, $Res Function(AddToFavorites) _then) = _$AddToFavoritesCopyWithImpl;
@useResult
$Res call({
 PersonModel person
});


$PersonModelCopyWith<$Res> get person;

}
/// @nodoc
class _$AddToFavoritesCopyWithImpl<$Res>
    implements $AddToFavoritesCopyWith<$Res> {
  _$AddToFavoritesCopyWithImpl(this._self, this._then);

  final AddToFavorites _self;
  final $Res Function(AddToFavorites) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? person = null,}) {
  return _then(AddToFavorites(
null == person ? _self.person : person // ignore: cast_nullable_to_non_nullable
as PersonModel,
  ));
}

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonModelCopyWith<$Res> get person {
  
  return $PersonModelCopyWith<$Res>(_self.person, (value) {
    return _then(_self.copyWith(person: value));
  });
}
}

/// @nodoc


class RemoveFromFavorites implements FavoritesEvent {
  const RemoveFromFavorites(this.person);
  

 final  PersonModel person;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFromFavoritesCopyWith<RemoveFromFavorites> get copyWith => _$RemoveFromFavoritesCopyWithImpl<RemoveFromFavorites>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFromFavorites&&(identical(other.person, person) || other.person == person));
}


@override
int get hashCode => Object.hash(runtimeType,person);

@override
String toString() {
  return 'FavoritesEvent.removeFromFavorites(person: $person)';
}


}

/// @nodoc
abstract mixin class $RemoveFromFavoritesCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory $RemoveFromFavoritesCopyWith(RemoveFromFavorites value, $Res Function(RemoveFromFavorites) _then) = _$RemoveFromFavoritesCopyWithImpl;
@useResult
$Res call({
 PersonModel person
});


$PersonModelCopyWith<$Res> get person;

}
/// @nodoc
class _$RemoveFromFavoritesCopyWithImpl<$Res>
    implements $RemoveFromFavoritesCopyWith<$Res> {
  _$RemoveFromFavoritesCopyWithImpl(this._self, this._then);

  final RemoveFromFavorites _self;
  final $Res Function(RemoveFromFavorites) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? person = null,}) {
  return _then(RemoveFromFavorites(
null == person ? _self.person : person // ignore: cast_nullable_to_non_nullable
as PersonModel,
  ));
}

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonModelCopyWith<$Res> get person {
  
  return $PersonModelCopyWith<$Res>(_self.person, (value) {
    return _then(_self.copyWith(person: value));
  });
}
}

/// @nodoc


class CheckIfFavorite implements FavoritesEvent {
  const CheckIfFavorite(this.person);
  

 final  PersonModel person;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckIfFavoriteCopyWith<CheckIfFavorite> get copyWith => _$CheckIfFavoriteCopyWithImpl<CheckIfFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckIfFavorite&&(identical(other.person, person) || other.person == person));
}


@override
int get hashCode => Object.hash(runtimeType,person);

@override
String toString() {
  return 'FavoritesEvent.checkIfFavorite(person: $person)';
}


}

/// @nodoc
abstract mixin class $CheckIfFavoriteCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory $CheckIfFavoriteCopyWith(CheckIfFavorite value, $Res Function(CheckIfFavorite) _then) = _$CheckIfFavoriteCopyWithImpl;
@useResult
$Res call({
 PersonModel person
});


$PersonModelCopyWith<$Res> get person;

}
/// @nodoc
class _$CheckIfFavoriteCopyWithImpl<$Res>
    implements $CheckIfFavoriteCopyWith<$Res> {
  _$CheckIfFavoriteCopyWithImpl(this._self, this._then);

  final CheckIfFavorite _self;
  final $Res Function(CheckIfFavorite) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? person = null,}) {
  return _then(CheckIfFavorite(
null == person ? _self.person : person // ignore: cast_nullable_to_non_nullable
as PersonModel,
  ));
}

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonModelCopyWith<$Res> get person {
  
  return $PersonModelCopyWith<$Res>(_self.person, (value) {
    return _then(_self.copyWith(person: value));
  });
}
}

/// @nodoc


class LoadFavorites implements FavoritesEvent {
  const LoadFavorites();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFavorites);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesEvent.loadFavorites()';
}


}




/// @nodoc


class ToggleFavorite implements FavoritesEvent {
  const ToggleFavorite(this.person);
  

 final  PersonModel person;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFavoriteCopyWith<ToggleFavorite> get copyWith => _$ToggleFavoriteCopyWithImpl<ToggleFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFavorite&&(identical(other.person, person) || other.person == person));
}


@override
int get hashCode => Object.hash(runtimeType,person);

@override
String toString() {
  return 'FavoritesEvent.toggleFavorite(person: $person)';
}


}

/// @nodoc
abstract mixin class $ToggleFavoriteCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory $ToggleFavoriteCopyWith(ToggleFavorite value, $Res Function(ToggleFavorite) _then) = _$ToggleFavoriteCopyWithImpl;
@useResult
$Res call({
 PersonModel person
});


$PersonModelCopyWith<$Res> get person;

}
/// @nodoc
class _$ToggleFavoriteCopyWithImpl<$Res>
    implements $ToggleFavoriteCopyWith<$Res> {
  _$ToggleFavoriteCopyWithImpl(this._self, this._then);

  final ToggleFavorite _self;
  final $Res Function(ToggleFavorite) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? person = null,}) {
  return _then(ToggleFavorite(
null == person ? _self.person : person // ignore: cast_nullable_to_non_nullable
as PersonModel,
  ));
}

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonModelCopyWith<$Res> get person {
  
  return $PersonModelCopyWith<$Res>(_self.person, (value) {
    return _then(_self.copyWith(person: value));
  });
}
}

// dart format on
