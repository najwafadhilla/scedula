import 'package:flutter/material.dart';
import 'package:scedula/Screen/Login/Loginscreen.dart';

class AccountDeletedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Dihapus'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 100),
            SizedBox(height: 20),
            Text(
              'Akun Anda berhasil dihapus.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Loginscreen()), 
                );
              },
              child: Text('Kembali ke Halaman Login'),
            ),
          ],
        ),
      ),
    );
  }
}
