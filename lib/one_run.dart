// import 'package:ecommerce/components/responsive_web.dart';
// import 'package:ecommerce/utils/authentication.dart';
// import 'package:flutter/material.dart';

// class SignUp extends StatefulWidget {
//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   late TextEditingController textControllerName;
//   late FocusNode textFocusNodeName;
//   bool _isEditingName = false;

//   late TextEditingController textControllerEmail;
//   late FocusNode textFocusNodeEmail;
//   bool _isEditingEmail = false;

//   late TextEditingController textControllerPassword;
//   late FocusNode textFocusNodePassword;
//   bool _isEditingPassword = false;

//   bool _isRegistering = false;
//   bool _isLoggingIn = false;

//   String? loginStatus;
//   Color loginStringColor = Colors.blueGrey.shade400;

//   String?  _validateName(String value) {
//     value = value.trim();

//     if (textControllerName.text.isNotEmpty) {
//       if (value.isEmpty) {
//         return 'Name can\'t be empty';
//       } else if (!value.contains(RegExp(
//         r"^[a-zA-Z]"))) {
//           return 'Enter a correct name';
//         }
//     }

//     return null;
//   }

//   String?  _validateEmail(String value) {
//     value = value.trim();

//     if (textControllerEmail.text.isNotEmpty) {
//       if (value.isEmpty) {
//         return 'Email can\'t be empty';
//       } else if (!value.contains(RegExp(
//         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
//           return 'Enter a correct email address';
//         }
//     }

//     return null;
//   }

//   String?  _validatePassword(String value) {
//     value = value.trim();

//     if (textControllerPassword.text.isNotEmpty) {
//       if (value.isEmpty) {
//         return 'Password can\'t be empty';
//       } else if (value.length < 6) {
//           return 'Length of password should be greater than 6';
//         }
//     }

//     return null;
//   }

//   @override
//   void initState() {
//     textControllerEmail = TextEditingController();
//     textControllerPassword = TextEditingController();
//     textControllerName = TextEditingController();
//     textControllerName.text = '';
//     textControllerEmail.text = '';
//     textControllerPassword.text = '';
//     textFocusNodeName = FocusNode();
//     textFocusNodeEmail = FocusNode();
//     textFocusNodePassword = FocusNode();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     var rowWidth = screenSize.width / 2;

//     return Scaffold(
//       body: ResponsiveWeb.isSmallScreen(context)
//         ? Container(color: Colors.blueGrey.shade900)
//         : Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 height: screenSize.height,
//                 width: rowWidth,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 50.0, top: 45.0),
//                   // change or display views for email, google and phone
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Sign Up",
//                       style: TextStyle(color: Color.fromRGBO(36, 11, 54, 1.0),fontSize: 50.0)
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 30.0, bottom: 35.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Container(color: Colors.blueGrey.shade400, height:2, width: 60.0),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 25.0),
//                               child: Text("Sign up with", style: TextStyle(color: Colors.blueGrey.shade400)),
//                             ),
//                           ]
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//                             child: MaterialButton(
//                               onPressed: () {},
//                               height: 35,
//                               minWidth: 200,
//                               elevation: 8,
//                               hoverColor: Colors.blueGrey.shade100,
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                       height: 16,
//                                       width: 16,
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: AssetImage("assets/google_icon.png"),
//                                           fit: BoxFit.contain
//                                         )
//                                       ),
//                                     ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 7.0),
//                                     child: Text('Sign up with Google'),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                            Padding(
//                             padding: const EdgeInsets.only(left: 20.0, right: 20.0),
//                             child: MaterialButton(
//                               onPressed: () {},
//                               height: 35,
//                               minWidth: 200,
//                               elevation: 8,
//                               hoverColor: Colors.blueGrey.shade100,
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Icon(Icons.phone, color: Colors.blueGrey.shade400,
//                                     ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left:7.0),
//                                     child: Text('Sign up with Phone'),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 30.0),
//                       Padding(
//                                 padding: const EdgeInsets.only(bottom: 8.0),
//                                 child: Text('Full Name',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                               TextField(
//                                 focusNode: textFocusNodeName,
//                                 keyboardType: TextInputType.name,
//                                 textInputAction: TextInputAction.next,
//                                 controller: textControllerName,
//                                 autofocus: false,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     _isEditingName = true;
//                                   });
//                                 },
//                                 onSubmitted: (value) {
//                                   textFocusNodeName.unfocus();
//                                   FocusScope.of(context).requestFocus(textFocusNodeEmail);
//                                 },
//                                 style: TextStyle(color: Colors.black),
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(
//                                       color: Colors.blueGrey[800] !,
//                                       width: 3,
//                                     ),
//                                   ),
//                                   filled: true,
//                                   hintStyle: TextStyle(color: Colors.blueGrey.shade300),
//                                   hintText: "Full name",
//                                   fillColor: Colors.grey.shade100,
//                                   errorText: _isEditingName ? _validateName(textControllerName.text) 
//                                           : null,
//                                   errorStyle: TextStyle(
//                                     fontSize: 12, color: Colors.redAccent,
//                                   )
//                                 ),
//                               ),
//                           SizedBox(height: 10.0,),
//                           Padding(
//                                 padding: const EdgeInsets.only(bottom: 8.0),
//                                 child: Text('Email Address',
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                               TextField(
//                                 focusNode: textFocusNodeEmail,
//                                 keyboardType: TextInputType.emailAddress,
//                                 textInputAction: TextInputAction.next,
//                                 controller: textControllerEmail,
//                                 autofocus: false,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     _isEditingEmail = true;
//                                   });
//                                 },
//                                 onSubmitted: (value) {
//                                   textFocusNodeName.unfocus();
//                                   FocusScope.of(context).requestFocus(textFocusNodePassword);
//                                 },
//                                 style: TextStyle(color: Colors.black),
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(
//                                       color: Colors.blueGrey[800] !,
//                                       width: 3,
//                                     ),
//                                   ),
//                                   filled: true,
//                                   hintStyle: TextStyle(color: Colors.blueGrey.shade300),
//                                   hintText: "Email",
//                                   fillColor: Colors.grey.shade100,
//                                   errorText: _isEditingEmail ? _validateEmail(textControllerEmail.text) 
//                                           : null,
//                                   errorStyle: TextStyle(
//                                     fontSize: 12, color: Colors.redAccent,
//                                   )
//                                 ),
//                               ),
//                         SizedBox(height: 10.0,),
//                       Padding(
//                                 padding: const EdgeInsets.only(bottom: 8.0),
//                                 child: Text('Password',
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                               TextField(
//                                 focusNode: textFocusNodePassword,
//                                 keyboardType: TextInputType.text,
//                                 textInputAction: TextInputAction.done,
//                                 controller: textControllerPassword,
//                                 autofocus: false,
//                                 onChanged: (value) {
//                                   setState(() {
//                                     _isEditingPassword = true;
//                                   });
//                                 },
//                                 onSubmitted: (value) {
//                                   textFocusNodeName.unfocus();
//                                   FocusScope.of(context).requestFocus(textFocusNodePassword);
//                                 },
//                                 style: TextStyle(color: Colors.black),
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide(
//                                       color: Colors.blueGrey[800] !,
//                                       width: 3,
//                                     ),
//                                   ),
//                                   filled: true,
//                                   hintStyle: TextStyle(color: Colors.blueGrey.shade300),
//                                   hintText: "Password",
//                                   fillColor: Colors.grey.shade100,
//                                   errorText: _isEditingPassword ? _validatePassword(textControllerPassword.text) 
//                                           : null,
//                                   errorStyle: TextStyle(
//                                     fontSize: 12, color: Colors.redAccent,
//                                   )
//                                 ),
//                               ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 15.0),
//                         child: Container(
//                           height: 70,
//                           width: 70,
//                           child: MaterialButton(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20),
//                             ),
//                             elevation: 8,
//                             minWidth: 70,
//                             height: 70,
//                             color: Color.fromRGBO(36, 11, 54, 1.0),
//                             onPressed: () async {
//                               setState(() {
//                                 _isRegistering = true;
//                               });
//                               await registerWithEmailPassword(
//                                 textControllerEmail.text, 
//                                 textControllerPassword.text)
//                                 .then((result) {
//                                   if (result != null) {
//                                     setState(() {
//                                       loginStatus = 'You have registered successfully';
//                                       loginStringColor = Colors.blueGrey.shade900;
//                                     });
//                                     print(result);
//                                   }
//                                 }).catchError((error) {
//                                   print('Registration Error: $error');
//                                   setState(() {
//                                     loginStatus = 'Error occured while registering';
//                                     loginStringColor = Colors.blueGrey.shade900;
//                                   });
//                                 });

//                                 setState(() {
//                                   _isRegistering = false;
//                                 });
//                             },
//                             child: Center(
//                               child: _isRegistering ? SizedBox(
//                                 height: 16,
//                                 width: 16,
//                                 child: CircularProgressIndicator(
//                                   strokeWidth: 2,
//                                   valueColor: AlwaysStoppedAnimation<Color>(
//                                     Colors.white
//                                   )
//                                 ),
//                               )
//                               : Icon(Icons.arrow_forward_sharp, size: 20, color: Colors.yellow),
//                             ),
//                           ),
//                         ),
//                       ),
//                       loginStatus !=null ? Center(
//                         child: Text(
//                           loginStatus !,
//                           style: TextStyle(color: loginStringColor, fontSize: 14)
//                         )
//                       )
//                       : Container(),
//                       SizedBox(height: 20),
//                       Text('By proceeding, you agree to our Terms of Use and confirm you have read our Privacy Policy.',
//                       maxLines: 2,
//                       style: TextStyle(fontWeight: FontWeight.w300)
//                       ),
//                       SizedBox(height: 15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text('Already have an account?'
//                           ),
//                           MaterialButton(
//                             onPressed: () {},
//                             elevation: 0,
                            
//                             color: Colors.white, 
//                             child: Text('Sign In',
//                             style: TextStyle(color: Colors.blueGrey.shade400,
//                             ),
//                             ),
//                           ),
//                           ]
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 150),
//                 child: Center(
//                 child: Stack(
//                     children: [
//                       Container(
//                           height: screenSize.width / 4,
//                           width: screenSize.width / 4,
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: Colors.blueGrey.shade400),
//                           child: Center(
//                             child: Container(
//                               height: screenSize.width / 5,
//                               width: screenSize.width / 5,
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Colors.white
//                               ),
//                             ),
//                           )
//                       ),
//                       Positioned(
//                         left: -25.0,
//                         bottom: -35.0,
//                         child: Container(
//                           height: screenSize.width / 4.5,
//                           width: screenSize.width / 4.5,
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage('assets/image0 (1).jpeg'),
//                                   fit: BoxFit.contain
//                               )
//                           ),
//                         ),
//                       )
//                     ]
//                 ),
//               ),
//               ),
//             ]
//           ),
//         ),
//     );
//   }
// }