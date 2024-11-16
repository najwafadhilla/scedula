import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scedula/theme/color_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Anggotaml(),
    );
  }
}

class Anggotaml extends StatefulWidget {
  @override
  _AnggotamlState createState() => _AnggotamlState();
}

class _AnggotamlState extends State<Anggotaml> {
  final List<String> _members = [
    'nadadwiaprilia',
    'fathiaadmawi',
    'raihanah',
    'fitriaanisah',
    'lisniharahap',
    'keziamonica',
    'najwafadhilla',
    'cimeng',
    'Popo',
  ];

  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    List<String> _filteredMembers = _members
        .where((member) =>
            member.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Daftar Anggota',
          style: GoogleFonts.inter(fontSize: 20, color: blackColor),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Pencarian
            TextField(
              onChanged: (text) {
                setState(() {
                  _searchText = text;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Cari nama anggota',
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Daftar Anggota
            Expanded(
              child: ListView.builder(
                itemCount: _filteredMembers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    title: Text(_filteredMembers[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
