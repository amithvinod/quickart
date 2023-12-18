import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static String verifyId = "";

  //to sent an otp to user
  static Future sentOTP(
      {required int phoneno,
      required Function errorStep,
      required Function nextStep}) async {
    await _firebaseAuth
        .verifyPhoneNumber(
            timeout: const Duration(seconds: 30),
            phoneNumber: "+91$phoneno",
            verificationCompleted: (phoneAuthCredential) async {
              return;
            },
            verificationFailed: (error) async {
              return;
            },
            codeSent: ((verificationId, forceResendingToken) async {
              verifyId = verificationId;
              nextStep();
            }),
            codeAutoRetrievalTimeout: ((verificationId) async {
              return;
            }))
        .onError((error, stackTrace) => errorStep());
  }

  //verify otp and login
  static Future loginWithOTP({required String otp}) async {
    final cred =
        PhoneAuthProvider.credential(verificationId: verifyId, smsCode: otp);
    try {
      final user = await _firebaseAuth.signInWithCredential(cred);
      if (user.user != null) {
        return "Login Successfull";
      } else {
        return "Login Unsuccessfull";
      }
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    } catch (e) {
      return e.toString();
    }
  }

  //to logout
  static Future logOut() async {
    await _firebaseAuth.signOut();
  }

  //user logged in or not
  static Future<bool> isLoggedin() async {
    var user = _firebaseAuth.currentUser;
    return (user != null);
  }
}
