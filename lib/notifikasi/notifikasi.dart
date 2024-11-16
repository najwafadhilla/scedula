import 'package:flutter/material.dart';
import 'package:scedula/Screen/HomePage/home.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Notifikasi', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildSectionTitle('Hari ini'),
          buildNotificationCard(
            'assets/images/sanggar.png',
            'Sanggar',
            'Latihan di sanggar Unimal',
            'Pukul 16.00-18.00 WIB',
          ),
          buildNotificationCard(
            'assets/images/badminton.png',
            'Badminton',
            'Latihan di Gor Arun',
            'Pukul 19.00-20.00 WIB',
          ),
          SizedBox(height: 16.0),
          buildSectionTitle('Kemarin'),
          buildNotificationCard(
            'assets/images/sanggar.png',
            'Sanggar',
            'Latihan di sanggar Unimal',
            'Pukul 16.00-18.00 WIB',
          ),
          buildNotificationCard(
            'assets/images/sanggar.png',
            'Sanggar',
            'Latihan di sanggar Unimal',
            'Pukul 16.00-18.00 WIB',
          ),
          SizedBox(height: 16.0),
          buildSectionTitle('Sebelumnya'),
          buildNotificationCard(
            'assets/images/badminton.png',
            'Badminton',
            'Latihan di Gor Arun',
            'Pukul 19.00-20.00 WIB',
          ),
          buildNotificationCard(
            'assets/images/badminton.png',
            'Badminton',
            'Latihan di Gor Arun',
            'Pukul 19.00-20.00 WIB',
          ),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700]),
      ),
    );
  }

  Widget buildNotificationCard(
      String imagePath, String title, String subtitle, String time) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.orange, width: 1),
      ),
      margin: EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(12.0),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            width: 93,
            height: 97,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
              color: Colors.orange, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  time,
                  style: TextStyle(color: Color(0xFFE7BD9B)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
