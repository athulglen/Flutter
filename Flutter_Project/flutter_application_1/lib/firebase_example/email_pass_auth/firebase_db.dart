import 'package:firebase_auth/firebase_auth.dart';

class FirebaseHelper{
  final FirebaseAuth auth=FirebaseAuth.instance;
  get user=> auth.currentUser;


  //register user
  Future<String?> register({required String useremail,required String password})async{
    try {
    await auth.createUserWithEmailAndPassword(
    email: useremail,
    password: password,
  );
  return null;
} on FirebaseAuthException catch (e) {
  
  return e.message;
}
    

  }
  Future<String?>login({required String email,required String password})async{
    try {
  auth.signInWithEmailAndPassword(
    email: email,
    password: password
  );
  return null;
} on FirebaseAuthException catch (e) {
  return e.message;
}
  }
  Future<void> logOut()async{
    await auth.signOut();
  }
}