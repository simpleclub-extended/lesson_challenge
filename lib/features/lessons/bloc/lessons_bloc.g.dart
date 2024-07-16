// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lessons_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LessonsStateCWProxy {
  LessonsState status(LessonsStatus status);

  LessonsState lessons(List<Lesson> lessons);

  LessonsState failure(Failure? failure);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LessonsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LessonsState(...).copyWith(id: 12, name: "My name")
  /// ````
  LessonsState call({
    LessonsStatus? status,
    List<Lesson>? lessons,
    Failure? failure,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLessonsState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLessonsState.copyWith.fieldName(...)`
class _$LessonsStateCWProxyImpl implements _$LessonsStateCWProxy {
  const _$LessonsStateCWProxyImpl(this._value);

  final LessonsState _value;

  @override
  LessonsState status(LessonsStatus status) => this(status: status);

  @override
  LessonsState lessons(List<Lesson> lessons) => this(lessons: lessons);

  @override
  LessonsState failure(Failure? failure) => this(failure: failure);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LessonsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LessonsState(...).copyWith(id: 12, name: "My name")
  /// ````
  LessonsState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? lessons = const $CopyWithPlaceholder(),
    Object? failure = const $CopyWithPlaceholder(),
  }) {
    return LessonsState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as LessonsStatus,
      lessons: lessons == const $CopyWithPlaceholder() || lessons == null
          ? _value.lessons
          // ignore: cast_nullable_to_non_nullable
          : lessons as List<Lesson>,
      failure: failure == const $CopyWithPlaceholder()
          ? _value.failure
          // ignore: cast_nullable_to_non_nullable
          : failure as Failure?,
    );
  }
}

extension $LessonsStateCopyWith on LessonsState {
  /// Returns a callable class that can be used as follows: `instanceOfLessonsState.copyWith(...)` or like so:`instanceOfLessonsState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LessonsStateCWProxy get copyWith => _$LessonsStateCWProxyImpl(this);
}
