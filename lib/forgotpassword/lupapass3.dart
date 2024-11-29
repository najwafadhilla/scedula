// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:scedula/Screen/Login/Loginscreen.dart';

// class NewPasswordPage extends StatefulWidget {
//   @override
//   _NewPasswordPageState createState() => _NewPasswordPageState();
// }

// class _NewPasswordPageState extends State<NewPasswordPage> {
//   final TextEditingController _newPasswordController = TextEditingController();
//   final TextEditingController _confirmPasswordController =
//       TextEditingController();
//   bool _isPasswordVisible1 = false;
//   bool _isPasswordVisible2 = false;

//   String? _validatePassword(String password) {
//     if (password.length < 8) {
//       return 'Password minimal 8 karakter';
//     }
//     if (!RegExp(r'[A-Z]').hasMatch(password)) {
//       return 'Password harus mengandung huruf besar';
//     }
//     if (!RegExp(r'[a-z]').hasMatch(password)) {
//       return 'Password harus mengandung huruf kecil';
//     }
//     if (!RegExp(r'[0-9]').hasMatch(password)) {
//       return 'Password harus mengandung angka';
//     }
//     if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) {
//       return 'Password harus mengandung simbol';
//     }
//     return null; // Password valid
//   }

//   Future<void> _changePassword() async {
//     final newPassword = _newPasswordController.text;
//     final confirmPassword = _confirmPasswordController.text;

//     // Validasi kekuatan password
//     final passwordError = _validatePassword(newPassword);
//     if (passwordError != null) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(passwordError)),
//       );
//       return;
//     }

//     // Pastikan password dan konfirmasi cocok
//     if (newPassword != confirmPassword) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Password dan konfirmasi tidak cocok')),
//       );
//       return;
//     }

//     try {
//       User? user = FirebaseAuth.instance.currentUser;

//       // Pastikan pengguna telah login
//       if (user != null) {
//         await user.updatePassword(newPassword);
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Password berhasil diperbarui')),
//         );
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => Loginscreen()),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('User tidak ditemukan')),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: Gagal memperbarui password')),
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
//             Navigator.pop(context);
//           },
//         ),
//         title: const Text(
//           'Kata Sandi Baru',
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
//               'Silahkan masukkan kata sandi baru Anda',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 16,
//               ),
//             ),
//             const SizedBox(height: 30),
//             TextField(
//               controller: _newPasswordController,
//               obscureText: !_isPasswordVisible1,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.grey[300],
//                 hintText: 'Masukkan kata sandi baru',
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible1
//                         ? Icons.visibility
//                         : Icons.visibility_off,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible1 = !_isPasswordVisible1;
//                     });
//                   },
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             TextField(
//               controller: _confirmPasswordController,
//               obscureText: !_isPasswordVisible2,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.grey[300],
//                 hintText: 'Konfirmasi kata sandi',
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible2
//                         ? Icons.visibility
//                         : Icons.visibility_off,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible2 = !_isPasswordVisible2;
//                     });
//                   },
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 40),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: _changePassword,
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
