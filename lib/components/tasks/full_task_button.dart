import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FullTask extends StatefulWidget {
  final String title;
  final String description;
  bool isDone;

  FullTask(
      {super.key,
      required this.title,
      required this.description,
      required this.isDone});

  @override
  State<FullTask> createState() => _FullTaskState();
}

class _FullTaskState extends State<FullTask> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: ThemeData.dark().cardColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.black,
                      value: widget.isDone,
                      onChanged: (bool? value) {
                        setState(() {
                          widget.isDone = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 4),
                    Center(
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    widget.description,
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
