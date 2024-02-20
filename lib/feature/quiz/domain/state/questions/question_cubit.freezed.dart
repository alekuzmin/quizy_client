// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionState _$QuestionStateFromJson(Map<String, dynamic> json) {
  return _QuestionState.fromJson(json);
}

/// @nodoc
mixin _$QuestionState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<QuestionEntity> get questionsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionStateCopyWith<QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res, QuestionState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<QuestionEntity> questionsList});
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? questionsList = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      questionsList: null == questionsList
          ? _value.questionsList
          : questionsList // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionStateImplCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$QuestionStateImplCopyWith(
          _$QuestionStateImpl value, $Res Function(_$QuestionStateImpl) then) =
      __$$QuestionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<QuestionEntity> questionsList});
}

/// @nodoc
class __$$QuestionStateImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$QuestionStateImpl>
    implements _$$QuestionStateImplCopyWith<$Res> {
  __$$QuestionStateImplCopyWithImpl(
      _$QuestionStateImpl _value, $Res Function(_$QuestionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? questionsList = null,
  }) {
    return _then(_$QuestionStateImpl(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      questionsList: null == questionsList
          ? _value._questionsList
          : questionsList // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionStateImpl implements _QuestionState {
  const _$QuestionStateImpl(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<QuestionEntity> questionsList = const []})
      : _questionsList = questionsList;

  factory _$QuestionStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionStateImplFromJson(json);

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<QuestionEntity> _questionsList;
  @override
  @JsonKey()
  List<QuestionEntity> get questionsList {
    if (_questionsList is EqualUnmodifiableListView) return _questionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionsList);
  }

  @override
  String toString() {
    return 'QuestionState(asyncSnapshot: $asyncSnapshot, questionsList: $questionsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionStateImpl &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._questionsList, _questionsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot,
      const DeepCollectionEquality().hash(_questionsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      __$$QuestionStateImplCopyWithImpl<_$QuestionStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionStateImplToJson(
      this,
    );
  }
}

abstract class _QuestionState implements QuestionState {
  const factory _QuestionState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<QuestionEntity> questionsList}) = _$QuestionStateImpl;

  factory _QuestionState.fromJson(Map<String, dynamic> json) =
      _$QuestionStateImpl.fromJson;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<QuestionEntity> get questionsList;
  @override
  @JsonKey(ignore: true)
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
