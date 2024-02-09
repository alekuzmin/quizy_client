// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_quiz_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailQuizState {
  AsyncSnapshot<dynamic> get asyncSnapshot =>
      throw _privateConstructorUsedError;
  QuizEntity? get quizEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailQuizStateCopyWith<DetailQuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailQuizStateCopyWith<$Res> {
  factory $DetailQuizStateCopyWith(
          DetailQuizState value, $Res Function(DetailQuizState) then) =
      _$DetailQuizStateCopyWithImpl<$Res, DetailQuizState>;
  @useResult
  $Res call({AsyncSnapshot<dynamic> asyncSnapshot, QuizEntity? quizEntity});

  $QuizEntityCopyWith<$Res>? get quizEntity;
}

/// @nodoc
class _$DetailQuizStateCopyWithImpl<$Res, $Val extends DetailQuizState>
    implements $DetailQuizStateCopyWith<$Res> {
  _$DetailQuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? quizEntity = freezed,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      quizEntity: freezed == quizEntity
          ? _value.quizEntity
          : quizEntity // ignore: cast_nullable_to_non_nullable
              as QuizEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizEntityCopyWith<$Res>? get quizEntity {
    if (_value.quizEntity == null) {
      return null;
    }

    return $QuizEntityCopyWith<$Res>(_value.quizEntity!, (value) {
      return _then(_value.copyWith(quizEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailQuizStateImplCopyWith<$Res>
    implements $DetailQuizStateCopyWith<$Res> {
  factory _$$DetailQuizStateImplCopyWith(_$DetailQuizStateImpl value,
          $Res Function(_$DetailQuizStateImpl) then) =
      __$$DetailQuizStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncSnapshot<dynamic> asyncSnapshot, QuizEntity? quizEntity});

  @override
  $QuizEntityCopyWith<$Res>? get quizEntity;
}

/// @nodoc
class __$$DetailQuizStateImplCopyWithImpl<$Res>
    extends _$DetailQuizStateCopyWithImpl<$Res, _$DetailQuizStateImpl>
    implements _$$DetailQuizStateImplCopyWith<$Res> {
  __$$DetailQuizStateImplCopyWithImpl(
      _$DetailQuizStateImpl _value, $Res Function(_$DetailQuizStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? quizEntity = freezed,
  }) {
    return _then(_$DetailQuizStateImpl(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      quizEntity: freezed == quizEntity
          ? _value.quizEntity
          : quizEntity // ignore: cast_nullable_to_non_nullable
              as QuizEntity?,
    ));
  }
}

/// @nodoc

class _$DetailQuizStateImpl implements _DetailQuizState {
  const _$DetailQuizStateImpl(
      {this.asyncSnapshot = const AsyncSnapshot.nothing(), this.quizEntity});

  @override
  @JsonKey()
  final AsyncSnapshot<dynamic> asyncSnapshot;
  @override
  final QuizEntity? quizEntity;

  @override
  String toString() {
    return 'DetailQuizState(asyncSnapshot: $asyncSnapshot, quizEntity: $quizEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailQuizStateImpl &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            (identical(other.quizEntity, quizEntity) ||
                other.quizEntity == quizEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot, quizEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailQuizStateImplCopyWith<_$DetailQuizStateImpl> get copyWith =>
      __$$DetailQuizStateImplCopyWithImpl<_$DetailQuizStateImpl>(
          this, _$identity);
}

abstract class _DetailQuizState implements DetailQuizState {
  const factory _DetailQuizState(
      {final AsyncSnapshot<dynamic> asyncSnapshot,
      final QuizEntity? quizEntity}) = _$DetailQuizStateImpl;

  @override
  AsyncSnapshot<dynamic> get asyncSnapshot;
  @override
  QuizEntity? get quizEntity;
  @override
  @JsonKey(ignore: true)
  _$$DetailQuizStateImplCopyWith<_$DetailQuizStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
