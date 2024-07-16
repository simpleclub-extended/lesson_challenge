// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_details_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LessonDetailsStateCWProxy {
  LessonDetailsState status(LessonDetailsStatus status);

  LessonDetailsState lesson(Lesson? lesson);

  LessonDetailsState currentPage(int currentPage);

  LessonDetailsState failure(Failure? failure);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LessonDetailsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LessonDetailsState(...).copyWith(id: 12, name: "My name")
  /// ````
  LessonDetailsState call({
    LessonDetailsStatus? status,
    Lesson? lesson,
    int? currentPage,
    Failure? failure,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLessonDetailsState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLessonDetailsState.copyWith.fieldName(...)`
class _$LessonDetailsStateCWProxyImpl implements _$LessonDetailsStateCWProxy {
  const _$LessonDetailsStateCWProxyImpl(this._value);

  final LessonDetailsState _value;

  @override
  LessonDetailsState status(LessonDetailsStatus status) => this(status: status);

  @override
  LessonDetailsState lesson(Lesson? lesson) => this(lesson: lesson);

  @override
  LessonDetailsState currentPage(int currentPage) =>
      this(currentPage: currentPage);

  @override
  LessonDetailsState failure(Failure? failure) => this(failure: failure);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LessonDetailsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LessonDetailsState(...).copyWith(id: 12, name: "My name")
  /// ````
  LessonDetailsState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? lesson = const $CopyWithPlaceholder(),
    Object? currentPage = const $CopyWithPlaceholder(),
    Object? failure = const $CopyWithPlaceholder(),
  }) {
    return LessonDetailsState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as LessonDetailsStatus,
      lesson: lesson == const $CopyWithPlaceholder()
          ? _value.lesson
          // ignore: cast_nullable_to_non_nullable
          : lesson as Lesson?,
      currentPage:
          currentPage == const $CopyWithPlaceholder() || currentPage == null
              ? _value.currentPage
              // ignore: cast_nullable_to_non_nullable
              : currentPage as int,
      failure: failure == const $CopyWithPlaceholder()
          ? _value.failure
          // ignore: cast_nullable_to_non_nullable
          : failure as Failure?,
    );
  }
}

extension $LessonDetailsStateCopyWith on LessonDetailsState {
  /// Returns a callable class that can be used as follows: `instanceOfLessonDetailsState.copyWith(...)` or like so:`instanceOfLessonDetailsState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LessonDetailsStateCWProxy get copyWith =>
      _$LessonDetailsStateCWProxyImpl(this);
}
