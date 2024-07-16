part of 'lessons_bloc.dart';

abstract class LessonsEvent {
    const LessonsEvent();
}

class LessonsBlocCreated extends LessonsEvent {
    const LessonsBlocCreated();
}
