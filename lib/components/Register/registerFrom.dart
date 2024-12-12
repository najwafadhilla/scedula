import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scedula/components/custom_surfix_icon.dart';
import 'package:scedula/components/default_button_custome_color.dart';
import 'package:scedula/size_config.dart';
import 'package:scedula/utils/constants.dart';
import 'package:scedula/Screen/Login/Loginscreen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  _SignUpForm createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  TextEditingController txtNamaLengkap = TextEditingController();
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool _isLoading = false;

  // Fungsi untuk register user dengan email dan password
  Future<void> _registerUser() async {
    setState(() {
      _isLoading = true;
    });

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: txtEmail.text,
        password: txtPassword.text,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registrasi berhasil!')),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Loginscreen()),
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = '';
      if (e.code == 'weak-password') {
        errorMessage = 'Password terlalu lemah.';
      } else if (e.code == 'email-already-in-use') {
        errorMessage = 'Email sudah digunakan.';
      } else {
        errorMessage = 'Terjadi kesalahan: ${e.message}';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // Fungsi untuk sign in dengan Google
  Future<void> _signInWithGoogle() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Menjalankan proses sign-in dengan Google
      GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        setState(() {
          _isLoading = false;
        });
        return;
      }

      // Mendapatkan kredensial dari Google SignIn
      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      // Masuk menggunakan kredensial Google
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Google Sign-In berhasil!')),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const Loginscreen()), // Ganti dengan halaman yang sesuai
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.message}')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Terjadi kesalahan: $e')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNamaLengkap(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          _isLoading
              ? const CircularProgressIndicator()
              : DefaultButtonCustomeColor(
                  color: kPrimaryColor,
                  text: "Register",
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      _registerUser();
                    }
                  },
                ),
          const SizedBox(
            height: 10,
          ),

          // Tombol untuk Sign In dengan Google
          DefaultButtonCustomeColor(
            color: Colors.blue, // Tombol Google menggunakan warna biru
            text: "Sign in with Google",
            press: _signInWithGoogle, // Memanggil fungsi Google Sign-In
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Loginscreen.routeName);
            },
            child: const Text(
              "Sudah punya akun? Masuk Disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  // Input untuk Nama Lengkap
  TextFormField buildNamaLengkap() {
    return TextFormField(
      controller: txtNamaLengkap,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Nama Lengkap',
        hintText: 'Masukan Nama Lengkap ',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSurffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }

  // Input untuk Username
  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUsername,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukan Username',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  // Input untuk Email
  TextFormField buildEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: txtEmail,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Masukan Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSurffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email tidak boleh kosong.';
        } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
          return 'Masukan email yang valid.';
        }
        return null;
      },
    );
  }

  // Input untuk Password
  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukan Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password tidak boleh kosong.';
        } else if (value.length < 6) {
          return 'Password harus minimal 6 karakter.';
        }
        return null;
      },
    );
  }
}
