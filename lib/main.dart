import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.deepPurple, Icons.adb, 'ALIEN'),
        _buildButtonColumn(Colors.deepPurple, Icons.rocket_launch, 'ROCKET'),
        _buildButtonColumn(
            Colors.deepPurple, Icons.satellite_rounded, 'SATELLITE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Galaxies, those sprawling cosmic islands, ignite our imagination and beckon us to explore the boundless reaches of the universe. Each galaxy is a tapestry of stars, gas, dust, and dark matter, woven together by gravity\'s gentle hand. From the majestic spirals, like the Milky Way, to the enigmatic ellipticals, galaxies come in diverse forms, reflecting eons of cosmic ballet.',
        softWrap: true,
      ),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Lysandra Prime',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Lysandra Prime is an awe-inspiring spiral galaxy',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      theme: ThemeData(
        primarySwatch:
            Colors.deepPurple, // This sets the primary color to deepPurple
      ),
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Space App By Thom'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/galaxy.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
