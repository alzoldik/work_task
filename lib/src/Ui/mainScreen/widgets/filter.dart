import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (c, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/1.png',
                      height: 60,
                      width: 80,
                    ),
                    Text('Sedan'),
                  ],
                ),
              );
            }));
  }
}
