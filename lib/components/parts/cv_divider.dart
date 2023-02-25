import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/components/tabelling/cv_row.dart';

class CvDivider extends StatelessWidget {
  const CvDivider({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CvRow(
      crossAxisAlignment: CrossAxisAlignment.center,
      lChild: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      rChild: const [
        Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ],
    );
  }
}
