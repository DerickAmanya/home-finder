import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(radius: 30, backgroundColor: Colors.white),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Amanya Derick", style: TextStyle(fontSize: 18, color: Colors.white)),
                      Text("derickamanya53@gmail.com", style: TextStyle(color: Colors.white70)),
                      Text("⭐ 0.00 (0 reviews)", style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ],
              ),
            ),
            ToggleButtons(
              isSelected: [true, false],
              children: [Text("Tenant"), Text("Landlord")],
              onPressed: (index) {},
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Column(children: [Icon(Icons.favorite_border), Text("Saved Homes")]),
                Column(children: [Icon(Icons.calendar_today), Text("My Bookings")]),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Recent Searches", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const Center(child: Text("No recent searches")),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Account Settings", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            ListTile(leading: Icon(Icons.edit), title: Text("Edit Profile")),
          ],
        ),
      ),
    );
  }
}
