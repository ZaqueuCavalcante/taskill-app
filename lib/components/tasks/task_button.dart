import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaskButton extends StatefulWidget {
  final String id;
  final String title;
  bool isDone;

  TaskButton({
    super.key,
    required this.id,
    required this.title,
    required this.isDone,
  });

  @override
  State<TaskButton> createState() => _TaskButtonState();
}

class _TaskButtonState extends State<TaskButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () => context.push('/task/${widget.id}'),
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: ThemeData.dark().cardColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
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
          ),
        ),
      ],
    );
  }
}
