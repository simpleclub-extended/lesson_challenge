import 'package:flutter/material.dart';

import '../core.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({
    super.key,
    required this.failure,
  });

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ErrorMessages.forFailure(failure),
        style: TextStyle(color: Theme.of(context).colorScheme.error),
      ),
    );
  }
}
