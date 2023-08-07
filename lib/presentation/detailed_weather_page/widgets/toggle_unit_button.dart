import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class ToggleUnitButton extends StatelessWidget {
  const ToggleUnitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: $styles.insets.sm),
      child: InkWell(
        onTap: () {
          //TODO: Implement toggle units
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Text(
            'F',
            style: $styles.text.title1.copyWith(
              color: Colors.white,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
