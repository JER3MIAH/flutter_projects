import 'package:digital_clock_app/provider/stopwatch_provider.dart';
import 'package:digital_clock_app/utils/popup_menu_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StopwatchScreen extends StatelessWidget {
  const StopwatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    StopWatchProvider stopWatchProvider = Provider.of<StopWatchProvider>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [popupMenuButton()],
        title: const Text('Stopwatch'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .43,
                  child: Expanded(
                    child: FloatingActionButton.large(
                      backgroundColor: const Color.fromARGB(255, 149, 216, 248),
                      shape: stopWatchProvider.shape
                          ? const CircleBorder()
                          : RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: const BorderSide()),
                      child: Icon(
                        stopWatchProvider.shape ? Icons.play_arrow : Icons.pause,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        stopWatchProvider.shapeChange();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}