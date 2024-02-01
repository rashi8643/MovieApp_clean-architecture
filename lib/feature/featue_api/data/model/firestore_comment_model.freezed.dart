// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentFirestoreModel _$CommentFirestoreModelFromJson(
    Map<String, dynamic> json) {
  return _CommentFirestoreModel.fromJson(json);
}

/// @nodoc
mixin _$CommentFirestoreModel {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentFirestoreModelCopyWith<CommentFirestoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentFirestoreModelCopyWith<$Res> {
  factory $CommentFirestoreModelCopyWith(CommentFirestoreModel value,
          $Res Function(CommentFirestoreModel) then) =
      _$CommentFirestoreModelCopyWithImpl<$Res, CommentFirestoreModel>;
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class _$CommentFirestoreModelCopyWithImpl<$Res,
        $Val extends CommentFirestoreModel>
    implements $CommentFirestoreModelCopyWith<$Res> {
  _$CommentFirestoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentFirestoreModelImplCopyWith<$Res>
    implements $CommentFirestoreModelCopyWith<$Res> {
  factory _$$CommentFirestoreModelImplCopyWith(
          _$CommentFirestoreModelImpl value,
          $Res Function(_$CommentFirestoreModelImpl) then) =
      __$$CommentFirestoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class __$$CommentFirestoreModelImplCopyWithImpl<$Res>
    extends _$CommentFirestoreModelCopyWithImpl<$Res,
        _$CommentFirestoreModelImpl>
    implements _$$CommentFirestoreModelImplCopyWith<$Res> {
  __$$CommentFirestoreModelImplCopyWithImpl(_$CommentFirestoreModelImpl _value,
      $Res Function(_$CommentFirestoreModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$CommentFirestoreModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentFirestoreModelImpl extends _CommentFirestoreModel {
  _$CommentFirestoreModelImpl({required this.id, required this.text})
      : super._();

  factory _$CommentFirestoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentFirestoreModelImplFromJson(json);

  @override
  final String id;
  @override
  final String text;

  @override
  String toString() {
    return 'CommentFirestoreModel(id: $id, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentFirestoreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentFirestoreModelImplCopyWith<_$CommentFirestoreModelImpl>
      get copyWith => __$$CommentFirestoreModelImplCopyWithImpl<
          _$CommentFirestoreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentFirestoreModelImplToJson(
      this,
    );
  }
}

abstract class _CommentFirestoreModel extends CommentFirestoreModel {
  factory _CommentFirestoreModel(
      {required final String id,
      required final String text}) = _$CommentFirestoreModelImpl;
  _CommentFirestoreModel._() : super._();

  factory _CommentFirestoreModel.fromJson(Map<String, dynamic> json) =
      _$CommentFirestoreModelImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$CommentFirestoreModelImplCopyWith<_$CommentFirestoreModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
