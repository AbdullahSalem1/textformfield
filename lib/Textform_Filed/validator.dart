// import 'package:flutter/material.dart';

// void main() {
//   runApp(const SignupScreen());
// }

// //صفحة تسجيل دخول وتطبيق vlaidator
// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   //انشا كاين فورم كي حتى يوصل للفورم
//   //number 1 validator
//   GlobalKey<FormState> frmKey = GlobalKey();
//   String? gender = "male";
//   bool? ispolicyaccepted = false;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: MaterialApp(
//         home: Scaffold(
//           body: SingleChildScrollView(
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               margin: const EdgeInsets.all(10),
//               child: Form(
//                 //number 2
//                 //عرف الكاين بداخل الفورم
//                 key: frmKey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
                    
//                     TextFormField(
//                       //number 3
//                       //الشرط للتحقق

//                       validator: (x) => checkName(x),
//                       // x != null && x.isNotEmpty
//                       // ? null
//                       // : "this field is required",
//                       decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.account_circle),
//                           hintText: "example : Mokhtar Ba-Ghaleb",
//                           label: Text("your name : "),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.red)),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.red))),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     TextFormField(
//                       validator: (e) =>
//                           e != null && e.isNotEmpty ? null : "required",
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.email_outlined),
//                           hintText: "example : AbdullahSa@gmail.com",
//                           label: Text("your Email : "),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.red)),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide(color: Colors.red))),
//                     ),
//                     Row(
//                       children: [
//                         //Radio
//                         Radio(
//                             value: "female",
//                             groupValue: gender,
//                             onChanged: (x) {
//                               gender = x;
//                               setState(() {});
//                             }),
//                         Text(
//                           "female",
//                         ),

//                         Radio(
//                             value: "male",
//                             groupValue: gender,
//                             onChanged: (x) {
//                               gender = x;
//                               setState(() {});
//                             }),
//                         Text("male"),
//                       ],
//                       //radio
//                     ),
//                     Checkbox(
//                         value: ispolicyaccepted,
//                         onChanged: (x) {
//                           ispolicyaccepted = x;
//                           setState(() {});
//                         }),
//                     Text("aaaaa"),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               //number 4
//               //عند النقر يتاكد من الحقول انهم فيهم بيانات
//               if (frmKey.currentState!.validate()) {}
//             },
//             child: Icon(Icons.save),
//           ),
//         ),
//       ),
//     );
//   }

//   checkName(String? x) {
//     x != null && x.isNotEmpty ? null : "this field is required";
//   }

//   // checkPhoneNumber(String phone) {}
//   //checkname(String name) {}
// }
