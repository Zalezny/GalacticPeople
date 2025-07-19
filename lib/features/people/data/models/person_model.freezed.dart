// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonModel {

 String get name; String get height; String get mass;@JsonKey(name: 'hair_color') String get hairColor;@JsonKey(name: 'skin_color') String get skinColor;@JsonKey(name: 'eye_color') String get eyeColor;@JsonKey(name: 'birth_year') String get birthYear; String get gender; String get homeworld; List<String> get films; List<String> get species; List<String> get vehicles; List<String> get starships; String get created; String get edited; String get url;
/// Create a copy of PersonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonModelCopyWith<PersonModel> get copyWith => _$PersonModelCopyWithImpl<PersonModel>(this as PersonModel, _$identity);

  /// Serializes this PersonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonModel&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.mass, mass) || other.mass == mass)&&(identical(other.hairColor, hairColor) || other.hairColor == hairColor)&&(identical(other.skinColor, skinColor) || other.skinColor == skinColor)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.birthYear, birthYear) || other.birthYear == birthYear)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.homeworld, homeworld) || other.homeworld == homeworld)&&const DeepCollectionEquality().equals(other.films, films)&&const DeepCollectionEquality().equals(other.species, species)&&const DeepCollectionEquality().equals(other.vehicles, vehicles)&&const DeepCollectionEquality().equals(other.starships, starships)&&(identical(other.created, created) || other.created == created)&&(identical(other.edited, edited) || other.edited == edited)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,height,mass,hairColor,skinColor,eyeColor,birthYear,gender,homeworld,const DeepCollectionEquality().hash(films),const DeepCollectionEquality().hash(species),const DeepCollectionEquality().hash(vehicles),const DeepCollectionEquality().hash(starships),created,edited,url);

@override
String toString() {
  return 'PersonModel(name: $name, height: $height, mass: $mass, hairColor: $hairColor, skinColor: $skinColor, eyeColor: $eyeColor, birthYear: $birthYear, gender: $gender, homeworld: $homeworld, films: $films, species: $species, vehicles: $vehicles, starships: $starships, created: $created, edited: $edited, url: $url)';
}


}

/// @nodoc
abstract mixin class $PersonModelCopyWith<$Res>  {
  factory $PersonModelCopyWith(PersonModel value, $Res Function(PersonModel) _then) = _$PersonModelCopyWithImpl;
@useResult
$Res call({
 String name, String height, String mass,@JsonKey(name: 'hair_color') String hairColor,@JsonKey(name: 'skin_color') String skinColor,@JsonKey(name: 'eye_color') String eyeColor,@JsonKey(name: 'birth_year') String birthYear, String gender, String homeworld, List<String> films, List<String> species, List<String> vehicles, List<String> starships, String created, String edited, String url
});




}
/// @nodoc
class _$PersonModelCopyWithImpl<$Res>
    implements $PersonModelCopyWith<$Res> {
  _$PersonModelCopyWithImpl(this._self, this._then);

  final PersonModel _self;
  final $Res Function(PersonModel) _then;

/// Create a copy of PersonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? height = null,Object? mass = null,Object? hairColor = null,Object? skinColor = null,Object? eyeColor = null,Object? birthYear = null,Object? gender = null,Object? homeworld = null,Object? films = null,Object? species = null,Object? vehicles = null,Object? starships = null,Object? created = null,Object? edited = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String,mass: null == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as String,hairColor: null == hairColor ? _self.hairColor : hairColor // ignore: cast_nullable_to_non_nullable
as String,skinColor: null == skinColor ? _self.skinColor : skinColor // ignore: cast_nullable_to_non_nullable
as String,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,birthYear: null == birthYear ? _self.birthYear : birthYear // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,homeworld: null == homeworld ? _self.homeworld : homeworld // ignore: cast_nullable_to_non_nullable
as String,films: null == films ? _self.films : films // ignore: cast_nullable_to_non_nullable
as List<String>,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as List<String>,vehicles: null == vehicles ? _self.vehicles : vehicles // ignore: cast_nullable_to_non_nullable
as List<String>,starships: null == starships ? _self.starships : starships // ignore: cast_nullable_to_non_nullable
as List<String>,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,edited: null == edited ? _self.edited : edited // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonModel].
extension PersonModelPatterns on PersonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonModel value)  $default,){
final _that = this;
switch (_that) {
case _PersonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonModel value)?  $default,){
final _that = this;
switch (_that) {
case _PersonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String height,  String mass, @JsonKey(name: 'hair_color')  String hairColor, @JsonKey(name: 'skin_color')  String skinColor, @JsonKey(name: 'eye_color')  String eyeColor, @JsonKey(name: 'birth_year')  String birthYear,  String gender,  String homeworld,  List<String> films,  List<String> species,  List<String> vehicles,  List<String> starships,  String created,  String edited,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonModel() when $default != null:
return $default(_that.name,_that.height,_that.mass,_that.hairColor,_that.skinColor,_that.eyeColor,_that.birthYear,_that.gender,_that.homeworld,_that.films,_that.species,_that.vehicles,_that.starships,_that.created,_that.edited,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String height,  String mass, @JsonKey(name: 'hair_color')  String hairColor, @JsonKey(name: 'skin_color')  String skinColor, @JsonKey(name: 'eye_color')  String eyeColor, @JsonKey(name: 'birth_year')  String birthYear,  String gender,  String homeworld,  List<String> films,  List<String> species,  List<String> vehicles,  List<String> starships,  String created,  String edited,  String url)  $default,) {final _that = this;
switch (_that) {
case _PersonModel():
return $default(_that.name,_that.height,_that.mass,_that.hairColor,_that.skinColor,_that.eyeColor,_that.birthYear,_that.gender,_that.homeworld,_that.films,_that.species,_that.vehicles,_that.starships,_that.created,_that.edited,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String height,  String mass, @JsonKey(name: 'hair_color')  String hairColor, @JsonKey(name: 'skin_color')  String skinColor, @JsonKey(name: 'eye_color')  String eyeColor, @JsonKey(name: 'birth_year')  String birthYear,  String gender,  String homeworld,  List<String> films,  List<String> species,  List<String> vehicles,  List<String> starships,  String created,  String edited,  String url)?  $default,) {final _that = this;
switch (_that) {
case _PersonModel() when $default != null:
return $default(_that.name,_that.height,_that.mass,_that.hairColor,_that.skinColor,_that.eyeColor,_that.birthYear,_that.gender,_that.homeworld,_that.films,_that.species,_that.vehicles,_that.starships,_that.created,_that.edited,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonModel implements PersonModel {
  const _PersonModel({required this.name, required this.height, required this.mass, @JsonKey(name: 'hair_color') required this.hairColor, @JsonKey(name: 'skin_color') required this.skinColor, @JsonKey(name: 'eye_color') required this.eyeColor, @JsonKey(name: 'birth_year') required this.birthYear, required this.gender, required this.homeworld, required final  List<String> films, required final  List<String> species, required final  List<String> vehicles, required final  List<String> starships, required this.created, required this.edited, required this.url}): _films = films,_species = species,_vehicles = vehicles,_starships = starships;
  factory _PersonModel.fromJson(Map<String, dynamic> json) => _$PersonModelFromJson(json);

@override final  String name;
@override final  String height;
@override final  String mass;
@override@JsonKey(name: 'hair_color') final  String hairColor;
@override@JsonKey(name: 'skin_color') final  String skinColor;
@override@JsonKey(name: 'eye_color') final  String eyeColor;
@override@JsonKey(name: 'birth_year') final  String birthYear;
@override final  String gender;
@override final  String homeworld;
 final  List<String> _films;
@override List<String> get films {
  if (_films is EqualUnmodifiableListView) return _films;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_films);
}

 final  List<String> _species;
@override List<String> get species {
  if (_species is EqualUnmodifiableListView) return _species;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_species);
}

 final  List<String> _vehicles;
@override List<String> get vehicles {
  if (_vehicles is EqualUnmodifiableListView) return _vehicles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vehicles);
}

 final  List<String> _starships;
@override List<String> get starships {
  if (_starships is EqualUnmodifiableListView) return _starships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_starships);
}

@override final  String created;
@override final  String edited;
@override final  String url;

/// Create a copy of PersonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonModelCopyWith<_PersonModel> get copyWith => __$PersonModelCopyWithImpl<_PersonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonModel&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.mass, mass) || other.mass == mass)&&(identical(other.hairColor, hairColor) || other.hairColor == hairColor)&&(identical(other.skinColor, skinColor) || other.skinColor == skinColor)&&(identical(other.eyeColor, eyeColor) || other.eyeColor == eyeColor)&&(identical(other.birthYear, birthYear) || other.birthYear == birthYear)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.homeworld, homeworld) || other.homeworld == homeworld)&&const DeepCollectionEquality().equals(other._films, _films)&&const DeepCollectionEquality().equals(other._species, _species)&&const DeepCollectionEquality().equals(other._vehicles, _vehicles)&&const DeepCollectionEquality().equals(other._starships, _starships)&&(identical(other.created, created) || other.created == created)&&(identical(other.edited, edited) || other.edited == edited)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,height,mass,hairColor,skinColor,eyeColor,birthYear,gender,homeworld,const DeepCollectionEquality().hash(_films),const DeepCollectionEquality().hash(_species),const DeepCollectionEquality().hash(_vehicles),const DeepCollectionEquality().hash(_starships),created,edited,url);

@override
String toString() {
  return 'PersonModel(name: $name, height: $height, mass: $mass, hairColor: $hairColor, skinColor: $skinColor, eyeColor: $eyeColor, birthYear: $birthYear, gender: $gender, homeworld: $homeworld, films: $films, species: $species, vehicles: $vehicles, starships: $starships, created: $created, edited: $edited, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PersonModelCopyWith<$Res> implements $PersonModelCopyWith<$Res> {
  factory _$PersonModelCopyWith(_PersonModel value, $Res Function(_PersonModel) _then) = __$PersonModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String height, String mass,@JsonKey(name: 'hair_color') String hairColor,@JsonKey(name: 'skin_color') String skinColor,@JsonKey(name: 'eye_color') String eyeColor,@JsonKey(name: 'birth_year') String birthYear, String gender, String homeworld, List<String> films, List<String> species, List<String> vehicles, List<String> starships, String created, String edited, String url
});




}
/// @nodoc
class __$PersonModelCopyWithImpl<$Res>
    implements _$PersonModelCopyWith<$Res> {
  __$PersonModelCopyWithImpl(this._self, this._then);

  final _PersonModel _self;
  final $Res Function(_PersonModel) _then;

/// Create a copy of PersonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? height = null,Object? mass = null,Object? hairColor = null,Object? skinColor = null,Object? eyeColor = null,Object? birthYear = null,Object? gender = null,Object? homeworld = null,Object? films = null,Object? species = null,Object? vehicles = null,Object? starships = null,Object? created = null,Object? edited = null,Object? url = null,}) {
  return _then(_PersonModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String,mass: null == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as String,hairColor: null == hairColor ? _self.hairColor : hairColor // ignore: cast_nullable_to_non_nullable
as String,skinColor: null == skinColor ? _self.skinColor : skinColor // ignore: cast_nullable_to_non_nullable
as String,eyeColor: null == eyeColor ? _self.eyeColor : eyeColor // ignore: cast_nullable_to_non_nullable
as String,birthYear: null == birthYear ? _self.birthYear : birthYear // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,homeworld: null == homeworld ? _self.homeworld : homeworld // ignore: cast_nullable_to_non_nullable
as String,films: null == films ? _self._films : films // ignore: cast_nullable_to_non_nullable
as List<String>,species: null == species ? _self._species : species // ignore: cast_nullable_to_non_nullable
as List<String>,vehicles: null == vehicles ? _self._vehicles : vehicles // ignore: cast_nullable_to_non_nullable
as List<String>,starships: null == starships ? _self._starships : starships // ignore: cast_nullable_to_non_nullable
as List<String>,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,edited: null == edited ? _self.edited : edited // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
