import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  int? numberOfZekr;
  final controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 60,
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage(
                    'assets/images/—Pngtree—praying hand illustration with tasbeeh_6852363.png'),
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              'Tasbeh',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: 350,
            width: 400,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/—Pngtree—praying hand illustration with tasbeeh_6852363.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              child: Text(
                'أدخل عدد التسبيحات',
                style: TextStyle(
                    fontFamily: 'Tajwal',
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Form(
            key: formKey,
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 160,
                height: 50,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'من فضلك أدخل رقم';
                    }
                    if (int.tryParse(value) == null) {
                      return 'غير مسموح غير بالارقام';
                    }
                    if (int.parse(value) <= 0) {
                      return 'أدخل رقم أكبر من الصفر';
                    } else {
                      return null;
                    }
                  },
                  controller: controller,
                  decoration: InputDecoration(
                      labelText: 'تسبيحة',
                      labelStyle: TextStyle(fontFamily: 'Cairo'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1.2,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1.2,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1.2,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: 24)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 60,
              width: 80,
              child: FloatingActionButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    numberOfZekr = int.parse(controller.text);
                    controller.clear();
                    Navigator.pushNamed(context, 'tasbehView',
                        arguments: numberOfZekr);
                  }
                },
                child: Text(
                  'ابدآ',
                  style: TextStyle(
                      fontFamily: 'Cairo', fontSize: 18, color: Colors.black),
                ),
                backgroundColor: Color(0xffFFBF95),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
