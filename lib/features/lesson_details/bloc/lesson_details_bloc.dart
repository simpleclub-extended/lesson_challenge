import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

import '../../../core/core.dart';
import '../../../data/repository/repository.dart';

part 'lesson_details_bloc.g.dart';

part 'lesson_details_event.dart';

part 'lesson_details_state.dart';

class LessonDetailsBloc extends Bloc<LessonDetailsEvent, LessonDetailsState> {
  LessonDetailsBloc(
    this._repository, {
    required this.id,
  }) : super(const LessonDetailsState()) {
    on<LessonDetailsBlocCreated>(_onLessonDetailsBlocCreated);
    on<LessonDetailsNextPageSelected>(_onLessonDetailsNextPageSelected);
    on<LessonDetailsPreviousPageSelected>(_onLessonDetailsPreviousPageSelected);
  }

  final AppRepository _repository;
  final String id;

  Future<void> _onLessonDetailsBlocCreated(
      LessonDetailsBlocCreated event, Emitter<LessonDetailsState> emit) async {
    emit(state.copyWith(status: LessonDetailsStatus.loading));
    final result = await _repository.getLesson(id);
    emit(
      result.fold(
        (left) =>
            state.copyWith(status: LessonDetailsStatus.error, failure: left),
        (right) =>
            state.copyWith(status: LessonDetailsStatus.success, lesson: right),
      ),
    );
  }

  Future<void> _onLessonDetailsNextPageSelected(
      LessonDetailsNextPageSelected event,
      Emitter<LessonDetailsState> emit) async {
    if (state.lesson == null) return;
    if (state.currentPage >= state.pageCount - 1) return;

    emit(state.copyWith(currentPage: state.currentPage + 1));
  }

  Future<void> _onLessonDetailsPreviousPageSelected(
      LessonDetailsPreviousPageSelected event,
      Emitter<LessonDetailsState> emit) async {
    if (state.lesson == null) return;
    if (state.currentPage <= 0) return;

    emit(state.copyWith(currentPage: state.currentPage - 1));
  }
}
