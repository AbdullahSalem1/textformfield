import 'package:flutter/material.dart';

void main() {
  runApp(const SignupScreen());
}

//صفحة تسجيل دخول وتطبيق vlaidator
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //انشا كاين فورم كي حتى يوصل للفورم
  //number 1 validator
  GlobalKey<FormState> frmKey = GlobalKey();
  String? pay = "omgy";
  bool? ispolicyaccepted = false;
  String? Fhoneinput;
  String? usernameinput;
  String? selectcity;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.all(15),
              child: Form(
                //number 2
                //عرف الكاين بداخل الفورم
                key: frmKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      //     //number 3
                      //     //الشرط للتحقق
                      onSaved: (x) {
                        usernameinput = x;
                      },

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'الرجاء إدخال الاسم الثلاثي';
                        }
                        List<String> names = value.split(' ');
                        if (names.length < 3) {
                          return 'الرجاء إدخال الاسم الثلاثي كاملاً';
                        }
                        return null;
                      },
                      // validator: (e) =>
                      //     e != null && e.isNotEmpty ? null : "ادحل الاسم",
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.account_circle),
                          hintText: "الاسم الثلاثي",
                          label: Text("الاسم"),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
//الحقل الثاني
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      onSaved: (x) {
                        Fhoneinput = x;
                      },

                      validator: (e) {
                        if (e!.isEmpty) {
                          return "ادخل رقم الهاتف";
                        }
                        if (e.length != 9) {
                          return 'يجب أن يحتوي رقم الهاتف على تسعة أرقام';
                        }
                        if (!['77', '78', '73', '71']
                            .contains(e.substring(0, 2))) {
                          return 'يجب أن يبدأ رقم الهاتف بـ 77 أو 78 أو 73 أو 71';
                        }
                      },
                      //     e != null && e.isNotEmpty ? null : "required",
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.phone),
                          hintText: "رقم الهاتف",
                          label: Text("رقم هاتفك"),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DropdownButton(
                          hint: Text("اختر وقت التوصيل "),
                          items: ["المساء", "الظهر", "الصباح"]
                              .map((e) => DropdownMenuItem(
                                    child: Text("$e"),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              selectcity = val;
                            });
                          },
                          value: selectcity,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("وقت التوصيل"),
                      ],
                    ),

                    Text(
                      "طريقة الدفع",
                      style: TextStyle(fontSize: 25),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Radio(
                            value: "omgy",
                            groupValue: pay,
                            onChanged: (x) {
                              pay = x;
                              setState(() {});
                            }),
                        Text(
                          "عندالاستلام",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Radio(
                            value: "Busairi",
                            groupValue: pay,
                            onChanged: (x) {
                              pay = x;
                              setState(() {});
                            }),
                        SizedBox(
                          width: 22,
                        ),
                        Text(
                          "البسيري",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Radio(
                            value: "kuraimi",
                            groupValue: pay,
                            onChanged: (x) {
                              pay = x;
                              setState(() {});
                            }),
                        SizedBox(
                          width: 22,
                        ),
                        Text(
                          "الكريمي",
                        )
                      ],
                    ),
                    TextFormField(
                      maxLines: 5,
                      validator: (e) =>
                          e != null && e.isNotEmpty ? null : "ملاحظتك مهمه",
                      decoration: InputDecoration(
                          //suffixIcon: Icon(Icons.account_circle),
                          hintText: "اعطنا ملاحظات عن طلبك",
                          label: Text("ملاحظاتك"),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.red))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: InkWell(
                        child: Text(
                          "طلب",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onTap: () {
                          if (frmKey.currentState!.validate()) {
                            frmKey.currentState!.save();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // checkName(String? x) {
  //   x != null && x.isNotEmpty ? null : "this field is required";
  // }

  String Function(String) phoneNumberValidator = (value) {
    if (value.isEmpty) {
      return 'يرجى إدخال رقم الهاتف';
    } else if (value.length != 9) {
      return 'يجب أن يحتوي رقم الهاتف على تسعة أرقام';
    } else if (!['77', '78', '73', '71'].contains(value.substring(0, 2))) {
      return 'يجب أن يبدأ رقم الهاتف بـ 77 أو 78 أو 73 أو 71';
    }
    return '';
  };
}
