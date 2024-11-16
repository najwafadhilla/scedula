import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/theme/color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KirimAbsenPage(),
    );
  }
}

class KirimAbsenPage extends StatefulWidget {
  const KirimAbsenPage({super.key});

  @override
  _KirimAbsenPageState createState() => _KirimAbsenPageState();
}

class _KirimAbsenPageState extends State<KirimAbsenPage> {
  bool hadir = false;
  bool izin = false;
  bool sakit = false;

  void kirimAbsen() {
    String status = '';
    if (hadir) {
      status = 'Hadir';
    } else if (izin) {
      status = 'Izin';
    } else if (sakit) {
      status = 'Sakit';
    }

    if (status.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AbsenSuksesPage(status: status),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kirim Absen',
          style: GoogleFonts.inter(
              fontSize: 25, fontWeight: FontWeight.bold, color: blackColor),
        ),
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckboxListTile(
              title: const Text('Hadir'),
              value: hadir,
              onChanged: (value) {
                setState(() {
                  hadir = value!;
                  if (hadir) {
                    izin = false;
                    sakit = false;
                  }
                });
              },
              activeColor: Colors.orange,
            ),
            CheckboxListTile(
              title: const Text('Izin'),
              value: izin,
              onChanged: (value) {
                setState(() {
                  izin = value!;
                  if (izin) {
                    hadir = false;
                    sakit = false;
                  }
                });
              },
              activeColor: Colors.orange,
            ),
            CheckboxListTile(
              title: const Text('Sakit'),
              value: sakit,
              onChanged: (value) {
                setState(() {
                  sakit = value!;
                  if (sakit) {
                    hadir = false;
                    izin = false;
                  }
                });
              },
              activeColor: Colors.orange,
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: kirimAbsen,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text(
                  'Kirim',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AbsenSuksesPage extends StatelessWidget {
  final String status;

  const AbsenSuksesPage({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 280,
                height: 220,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.orange[300],
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              // Teks "Absen Terkirim"
              const Text(
                'Absen Terkirim',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              Text(
                'Status: $status',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
