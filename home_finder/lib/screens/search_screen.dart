import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search location, property type...",
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
              ),
            ),
          ),
          Wrap(
            spacing: 10,
            children: [
              FilterChip(label: Text("All"), onSelected: (_) {}),
              FilterChip(label: Text("Apartments"), onSelected: (_) {}),
              FilterChip(label: Text("Houses"), onSelected: (_) {}),
              FilterChip(label: Text("Lodges"), onSelected: (_) {}),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text("No properties found
Try adjusting your search criteria or filters", textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }
}
