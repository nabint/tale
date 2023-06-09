import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class PlaceholderCard extends StatelessWidget {
  const PlaceholderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(20),
            padding: const EdgeInsets.all(6),
            dashPattern: const [8, 4],
            strokeWidth: 4,
            color: Colors.black54,
            child: const SizedBox(
              width: 300,
              height: 300,
              child: Center(
                  child: Text(
                    'Placeholder',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black54
                    )
                  )
              ),
            )
        )
    );
  }
}
