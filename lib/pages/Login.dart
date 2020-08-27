import 'dart:js';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Home.dart';

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final GoogleSignIn googleSignIn = GoogleSignIn();
//   final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   SharedPreferences preferences;
//   bool loading = false;
//   bool isLogin = false;
//   @override
//   void initState() {
//     super.initState();
//     isSignedIn();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         centerTitle:true,
//         title:  Text("Login"),

//       ),
//       body: Stack(
//         children: <Widget>[
//           Center(
//             child: FlatButton(onPressed: (){
//               handleSignin();
//             }, child: Text("Sign in/Sign up with google")),
//           ),
//           Visibility(
//             visible: loading?? true,
//             child: Container(
//               color: Colors.white.withOpacity(0.7),
//               child: CircularProgressIndicator(
//                 valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
//               ),
//             ),
//           )

//         ],
//       ),
//     );
//   }

//   void isSignedIn() async {
//     setState(() {
//       loading = true;
//     });
//     preferences = await SharedPreferences.getInstance();
//     isLogin = await googleSignIn.isSignedIn();
//     if (isLogin) {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => HomePage()));
//     }
//     setState(() {
//       loading = false;
//     });
//   }

//   Future handleSignin() async {
//     preferences = await SharedPreferences.getInstance();
//     setState(() {
//       loading = true;
//     });
//     GoogleSignInAccount googleUser = await googleSignIn.signIn();
//     GoogleSignInAuthentication googleSignInAuthentication =
//         await googleUser.authentication;
//     FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
//         idToken: googleSignInAuthentication.idToken,
//         accessToken: googleSignInAuthentication.accessToken);
//     if (firebaseUser != null) {
//       var uid;
//             final QuerySnapshot result = await Firestore.instance
//                 .collection("users")
//                 .where("id", isEqualTo: FirebaseUser.uid)
//           .getDocuments();
//       final List<DocumentSnapshot> document = result.documents;
//       if (document.length == 0) {
//         Firestore.instance
//             .collection("users")
//             .document(firebaseUser.uid)
//             .setData({
//           "id": firebaseUser.uid,
//           "usename": firebaseUser.displayName,
//           "profilePicture": firebaseUser.photoUrl
//         });
//         await preferences.setString("id", firebaseUser.uid);
//         await preferences.setString("username", firebaseUser.displayName);
//         await preferences.setString("photoUrl", firebaseUser.phoneNumber);
//       } else {
//         await preferences.setString("id", document[0]['id']);
//         await preferences.setString("username", document[0]['username']);
//         await preferences.setString("photoUrl", document[0]['photUrl']);
//       }
//       Fluttertoast.showToast(msg: "Login was successful");
//       setState(() {
//         loading = false;
//       });
//       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
//     } else {
//       Fluttertoast.showToast(msg: "Login Failed");
//     }
//   }
// }

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterBase",
      home: Scaffold(
        appBar: AppBar(
          title: Text("FlutterBase"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              MaterialButton(
                onPressed: null,
                color: Colors.white,
                child: Text("Login with google"),
              
              ),
              MaterialButton(
                onPressed: null,
                color: Colors.white,
                child: Text("Loggout"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
