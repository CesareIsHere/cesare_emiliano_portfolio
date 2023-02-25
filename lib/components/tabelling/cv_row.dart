import 'package:flutter/material.dart';

class CvRow extends StatelessWidget {
  const CvRow(
      {super.key,
      required this.lChild,
      required this.rChild,
      this.rIsColumn = true,
      this.crossAxisAlignment = CrossAxisAlignment.start});

  final List<Widget> lChild;
  final List<Widget> rChild;
  final bool rIsColumn;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SizedBox(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: lChild,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: rIsColumn
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: rChild,
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: rChild,
                ),
        ),
      ],
    );
  }
}
