import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Screen/Login/Loginscreen.dart';
import '../theme/color_theme.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _resetPassword() async {
    try {
      // Mengirim email reset password
      await _auth.sendPasswordResetEmail(email: _emailController.text.trim());

      // Notifikasi sukses
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email reset password telah dikirim!')),
      );
    } catch (e) {
      // Menampilkan error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Gagal mengirim email: ${e.toString()}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Lupa Password',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              'Lupa Password?',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: blackColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Masukkan email Anda untuk reset password.',
              style: TextStyle(fontSize: 16, color: blackColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // TextField terhubung ke _emailController
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Masukkan email Anda',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Tombol "Kirim" memanggil _resetPassword()
            ElevatedButton(
              onPressed: _resetPassword,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('Kirim',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
            SizedBox(height: 20),
            // Tombol kembali ke halaman login
            TextButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Loginscreen(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back, color: Colors.orange),
              label: Text(
                'Kembali ke Halaman Login',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
