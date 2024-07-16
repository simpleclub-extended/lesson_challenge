# lesson_challenge

Lesson details feature presents a screen that allows viewing and interacting
with Pages and Tasks of a selected Lesson.

## Expected Criteria:

- The screen allows to move between Pages of the Lesson

- Each Page displays its content (list of `ContentComponent`) including text and
  image components

- After user saw all Pages the screen presents Tasks of the Lesson in a single
  list view

- User is able to interact with the Tasks by selecting an answer from the given
  options

- At any moment the user is able to move freely between the Pages and the Tasks
  view

- Saving or maintaining the list of provided Task answers is out of scope

Screen entry point widget: `LessonDetailsPage`.
Use existing bloc that loads the lesson data by id `LessonDetailsBloc`.
