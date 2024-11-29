// import 'package:flutter/material.dart';
// import 'package:scedula/forgotpassword/lupapass3.dart';
// import 'lupapass1.dart';

// class VerificationPage extends StatefulWidget {
//   @override
//   _VerificationPageState createState() => _VerificationPageState();
// }

// class _VerificationPageState extends State<VerificationPage> {
//   final List<TextEditingController> _controllers =
//       List.generate(6, (_) => TextEditingController());
//   String _verificationCode = '';

//   void _combineVerificationCode() {
//     // Menggabungkan kode dari semua TextField
//     setState(() {
//       _verificationCode =
//           _controllers.map((controller) => controller.text).join();
//     });
//   }

//   void _submitCode() {
//     // Validasi input
//     if (_verificationCode.length == 6) {
//       // Logika verifikasi kode (sesuaikan dengan kebutuhan backend Anda)
//       // Contoh:
//       if (_verificationCode == "123456") {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Kode verifikasi valid!')),
//         );
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => NewPasswordPage()),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Kode verifikasi salah!')),
//         );
//       }
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Masukkan semua 6 digit kode!')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
//             );
//           },
//         ),
//         title: const Text(
//           'Kode Verifikasi',
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text(
//               'Masukkan kode verifikasi yang telah dikirim ke Email',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 16,
//               ),
//             ),
//             const SizedBox(height: 40),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(6, (index) {
//                 return Container(
//                   width: 50,
//                   height: 50,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: TextField(
//                     cursorColor: Colors.black,
//                     controller: _controllers[index],
//                     textAlign: TextAlign.center,
//                     keyboardType: TextInputType.number,
//                     maxLength: 1,
//                     style: const TextStyle(
//                       fontSize: 22,
//                       color: Colors.black,
//                     ),
//                     decoration: InputDecoration(
//                       contentPadding: EdgeInsets.zero,
//                       counterText: '',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide(color: Colors.grey.shade300),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: BorderSide(color: Colors.grey.shade300),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                         borderSide: const BorderSide(color: Colors.orange),
//                       ),
//                     ),
//                     onChanged: (value) {
//                       if (value.isNotEmpty && index < 5) {
//                         FocusScope.of(context)
//                             .nextFocus(); // Pindah ke field berikutnya
//                       }
//                       _combineVerificationCode();
//                     },
//                   ),
//                 );
//               }),
//             ),
//             const SizedBox(height: 40),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: _submitCode,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange,
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: const Text(
//                   'Kirim',
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
