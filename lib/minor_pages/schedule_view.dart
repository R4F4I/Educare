import 'package:educare/config.dart';
import 'package:flutter/material.dart';

// A simple data model for an event
class Event {
  final String title;
  final String description;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final Duration duration;
  final Color color;

  Event({
    required this.title,
    required this.description,
    required this.startTime,
    required this.duration,
    this.color = Colors.blue,
  }):
    endTime = TimeOfDay(
      hour: (startTime.hour * 60 + startTime.minute + duration.inMinutes) ~/ 60,
      minute: (startTime.hour * 60 + startTime.minute + duration.inMinutes) % 60,
    );
}

class ScheduleView extends StatefulWidget {
  const ScheduleView({super.key});

  @override
  State<ScheduleView> createState() => _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  // Let's define some sample events to display
  final List<Event> _events = [
    Event(
      title: 'Flutter Meetup',
      description: 'Flutter Meetup',
      startTime: const TimeOfDay(hour: 4, minute: 0),
      duration: const Duration(hours: 2),
      color: educareYellow,
    ),
    Event(
      title: 'Code Review',
      description: 'Code Review',
      startTime: const TimeOfDay(hour: 11, minute: 30),
      duration: const Duration(minutes: 90),
      color: educareGreen,
    ),
    Event(
      title: 'Lunch with Team',
      description: 'Lunch with Team',
      startTime: const TimeOfDay(hour: 13, minute: 0),
      duration: const Duration(hours: 2),
      color: educarePurple,
    ),
  ];

  final double hourHeight = 80.0;
  final double timeColWidth = 60.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24 * hourHeight, // Total height for 24 hours
      child: Row(
        children: [
          _buildTimeLabels(),
          Expanded(
            child: Stack(
              children: [
                _buildGrid(),
                ..._buildEvents(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Builds the column of time labels on the left
  Widget _buildTimeLabels() {
    return SizedBox(
      width: timeColWidth,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling for this column
        itemCount: 24,
        itemBuilder: (context, index) {
          return SizedBox(
            height: hourHeight,
            child: Text(
              '${index.toString().padLeft(2, '0')}:00',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          );
        },
      ),
    );
  }

  // Builds the horizontal grid lines for each hour
  Widget _buildGrid() {
    return Column(
      children: List.generate(
        23,
        (index) =>
        Column(
          children: [
            Divider(
              color: Colors.grey.shade300,
              thickness: 1.0,
            ),
            SizedBox(
              height: hourHeight-14,
            ),
          ]
        )
      ),
    );
  }

  // Builds the event widgets and positions them on the grid
  List<Widget> _buildEvents() {
    return _events.map((event) {
      final double top = (event.startTime.hour + event.startTime.minute / 60.0) * hourHeight; // position of block on the time grid
      final double height = (event.duration.inMinutes / 60.0) * hourHeight; // height of the time block

      return Positioned(
        top: top,
        left: 0,
        right: 10, // A little padding on the right
        child: SizedBox(
          height: height,
          child: Card(
            color: event.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(event.title, style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(event.description, style: TextStyle(color: Colors.white, fontFamily: 'Poppins'))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${event.startTime.hour.toString().padLeft(2, '0')}:${event.startTime.minute.toString().padLeft(2, '0')} - ${event.endTime.hour.toString().padLeft(2, '0')}:${event.endTime.minute.toString().padLeft(2, '0')}', 
                        style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      );
    }).toList();
  }
}