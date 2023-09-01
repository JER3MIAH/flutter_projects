import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  ElevatedButton elevatedButton = ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: const ContinuousRectangleBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 28),
    ),
    onPressed: () {},
    child: const Text(
      '7',
      style: TextStyle(fontSize: 30),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          textAlign: TextAlign.right,
          cursorHeight: 100,
          style: TextStyle(fontSize: 60),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
        const SizedBox(height: 150),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    elevatedButton,
                    elevatedButton,
                    elevatedButton,
                    elevatedButton
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    elevatedButton,
                    elevatedButton,
                    elevatedButton,
                    elevatedButton
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    elevatedButton,
                    elevatedButton,
                    elevatedButton,
                    elevatedButton
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    elevatedButton,
                    elevatedButton,
                    elevatedButton,
                    elevatedButton
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    elevatedButton,
                    elevatedButton,
                    elevatedButton,
                    elevatedButton
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
