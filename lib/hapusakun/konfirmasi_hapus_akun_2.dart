import 'package:flutter/material.dart';
import 'akun_berhasil_dihapus.dart';

class ConfirmDeleteAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Ikon untuk kembali
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever), // Ikon untuk menghapus akun
            onPressed: () {
              // Tindakan jika ikon di AppBar ditekan (misalnya menampilkan pesan konfirmasi)
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Konfirmasi Penghapusan Akun'),
                  content: Text('Apakah Anda yakin ingin menghapus akun ini?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Tutup dialog
                      },
                      child: Text('Batal'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Logika hapus akun
                        Navigator.pop(context); // Tutup dialog
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Akun berhasil dihapus')),
                        );
                        // Arahkan ke halaman konfirmasi penghapusan
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountDeletedPage()),
                        );
                      },
                      child: Text('Hapus', style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/images/profil.png'), // Ganti dengan path gambar Anda
            ),
            SizedBox(height: 20),
            Text(
              'Demi keamanan, masukkan ulang\nkata sandi Anda untuk melanjutkan',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'kata sandi',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logika untuk konfirmasi penghapusan akun
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Konfirmasi Penghapusan Akun'),
                    content: Text(
                        'Apakah Anda yakin ingin menghapus akun ini? Aksi ini tidak dapat dibatalkan.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Kembali dari dialog
                        },
                        child: Text('Batal'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Logika hapus akun
                          Navigator.pop(context); // Tutup dialog konfirmasi
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Akun berhasil dihapus'),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountDeletedPage()),
                          );
                        },
                        child:
                            Text('Hapus', style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: Text('Lanjut'),
            ),
          ],
        ),
      ),
    );
  }
}
