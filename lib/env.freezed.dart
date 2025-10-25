// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'env.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Environment {

// Name of the environment (dev, prod, ...) just for debug purpose
 String get name;/// Url of your backend API / or Supabase URL / or Firebase Functions region
 String get backendUrl;/// Supabase anonymous token
 String get supabaseToken;
/// Create a copy of Environment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnvironmentCopyWith<Environment> get copyWith => _$EnvironmentCopyWithImpl<Environment>(this as Environment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Environment&&(identical(other.name, name) || other.name == name)&&(identical(other.backendUrl, backendUrl) || other.backendUrl == backendUrl)&&(identical(other.supabaseToken, supabaseToken) || other.supabaseToken == supabaseToken));
}


@override
int get hashCode => Object.hash(runtimeType,name,backendUrl,supabaseToken);

@override
String toString() {
  return 'Environment(name: $name, backendUrl: $backendUrl, supabaseToken: $supabaseToken)';
}


}

/// @nodoc
abstract mixin class $EnvironmentCopyWith<$Res>  {
  factory $EnvironmentCopyWith(Environment value, $Res Function(Environment) _then) = _$EnvironmentCopyWithImpl;
@useResult
$Res call({
 String name, String backendUrl, String supabaseToken
});




}
/// @nodoc
class _$EnvironmentCopyWithImpl<$Res>
    implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._self, this._then);

  final Environment _self;
  final $Res Function(Environment) _then;

/// Create a copy of Environment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? backendUrl = null,Object? supabaseToken = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,backendUrl: null == backendUrl ? _self.backendUrl : backendUrl // ignore: cast_nullable_to_non_nullable
as String,supabaseToken: null == supabaseToken ? _self.supabaseToken : supabaseToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Environment].
extension EnvironmentPatterns on Environment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DevEnvironment value)?  dev,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DevEnvironment() when dev != null:
return dev(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DevEnvironment value)  dev,}){
final _that = this;
switch (_that) {
case DevEnvironment():
return dev(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DevEnvironment value)?  dev,}){
final _that = this;
switch (_that) {
case DevEnvironment() when dev != null:
return dev(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name,  String backendUrl,  String supabaseToken)?  dev,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DevEnvironment() when dev != null:
return dev(_that.name,_that.backendUrl,_that.supabaseToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name,  String backendUrl,  String supabaseToken)  dev,}) {final _that = this;
switch (_that) {
case DevEnvironment():
return dev(_that.name,_that.backendUrl,_that.supabaseToken);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name,  String backendUrl,  String supabaseToken)?  dev,}) {final _that = this;
switch (_that) {
case DevEnvironment() when dev != null:
return dev(_that.name,_that.backendUrl,_that.supabaseToken);case _:
  return null;

}
}

}

/// @nodoc


class DevEnvironment extends Environment {
  const DevEnvironment({required this.name, required this.backendUrl, required this.supabaseToken}): super._();
  

// Name of the environment (dev, prod, ...) just for debug purpose
@override final  String name;
/// Url of your backend API / or Supabase URL / or Firebase Functions region
@override final  String backendUrl;
/// Supabase anonymous token
@override final  String supabaseToken;

/// Create a copy of Environment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevEnvironmentCopyWith<DevEnvironment> get copyWith => _$DevEnvironmentCopyWithImpl<DevEnvironment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevEnvironment&&(identical(other.name, name) || other.name == name)&&(identical(other.backendUrl, backendUrl) || other.backendUrl == backendUrl)&&(identical(other.supabaseToken, supabaseToken) || other.supabaseToken == supabaseToken));
}


@override
int get hashCode => Object.hash(runtimeType,name,backendUrl,supabaseToken);

@override
String toString() {
  return 'Environment.dev(name: $name, backendUrl: $backendUrl, supabaseToken: $supabaseToken)';
}


}

/// @nodoc
abstract mixin class $DevEnvironmentCopyWith<$Res> implements $EnvironmentCopyWith<$Res> {
  factory $DevEnvironmentCopyWith(DevEnvironment value, $Res Function(DevEnvironment) _then) = _$DevEnvironmentCopyWithImpl;
@override @useResult
$Res call({
 String name, String backendUrl, String supabaseToken
});




}
/// @nodoc
class _$DevEnvironmentCopyWithImpl<$Res>
    implements $DevEnvironmentCopyWith<$Res> {
  _$DevEnvironmentCopyWithImpl(this._self, this._then);

  final DevEnvironment _self;
  final $Res Function(DevEnvironment) _then;

/// Create a copy of Environment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? backendUrl = null,Object? supabaseToken = null,}) {
  return _then(DevEnvironment(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,backendUrl: null == backendUrl ? _self.backendUrl : backendUrl // ignore: cast_nullable_to_non_nullable
as String,supabaseToken: null == supabaseToken ? _self.supabaseToken : supabaseToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
