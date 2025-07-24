import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.orange,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Home Finder", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 4),
                Text("Welcome back, Amanya!", style: TextStyle(color: Colors.white)),
                Text("Discover your perfect home in Uganda", style: TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Column(children: [Text("0", style: TextStyle(fontWeight: FontWeight.bold)), Text("New Today")]),
                Column(children: [Text("0", style: TextStyle(fontWeight: FontWeight.bold)), Text("Saved Homes")]),
                Column(children: [Text("0", style: TextStyle(fontWeight: FontWeight.bold)), Text("New Messages")]),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Featured Properties", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
