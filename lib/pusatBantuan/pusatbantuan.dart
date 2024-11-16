import 'package:flutter/material.dart';

class Bantuan extends StatelessWidget {
  const Bantuan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pusat Bantuan',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Butuh Bantuan ?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Mohon hubungi CS Scedula. Pastikan kamu menghubungi pada kanal resmi Scedula di bawah ini.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.access_time, color: Colors.white),
                      title: Text(
                        'Senin - Jumat | 08.00 - 16.00 WIB',
                        style: TextStyle(
                            color: Colors.black, fontStyle: FontStyle.italic),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on, color: Colors.white),
                      title: Text('Jalan Batam FT Universitas Malikussaleh',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.white),
                      title: Text('Scedulaamalikussaleh@gmail.com',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
                    ListTile(
                      leading: Icon(Icons.facebook, color: Colors.white),
                      title: Text('Scedulaamalikussaleh',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.white),
                      title: Text('085372802128',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
