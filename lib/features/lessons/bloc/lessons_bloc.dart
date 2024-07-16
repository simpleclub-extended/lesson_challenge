import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

import '../../../core/core.dart';
import '../../../data/repository/repository.dart';

part 'lessons_bloc.g.dart';
part 'lessons_event.dart';
part 'lessons_state.dart';

class LessonsBloc extends Bloc<LessonsEvent, LessonsState> {
  LessonsBloc(this._repository) : super(const LessonsState()) {
    on<LessonsBlocCreated>(_onLessonsBlocCreated);
  }

  final AppRepository _repository;

  Future<void> _onLessonsBlocCreated(LessonsBlocCreated event, Emitter<LessonsState> emit) async {
    emit(state.copyWith(status: LessonsStatus.loading));
    final result = await _repository.getLessons();
    emit(
      result.fold(
        (left) => state.copyWith(status: LessonsStatus.error, failure: left),
        (right) => state.copyWith(status: LessonsStatus.success, lessons: right),
      ),
    );
  }
}
