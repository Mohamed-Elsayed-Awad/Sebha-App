import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int counter = 0;
  String? firstZekr;
  String zekr = 'سبحان الله';
  List<String> zekrList = [
    'الحمدلله',
    'لا اله الا الله',
    'الله أكبر',
    'سبحان الله'
  ];
  @override
  Widget build(BuildContext context) {
    int numberOfZekr = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 60.0),
          child: Row(
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                '$zekr',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 60,
              width: 80,
              child: FloatingActionButton(
                onPressed: () {
                  setState(
                    () {
                      counter += 1;
                      if (counter > numberOfZekr) {
                        counter = 0;
                        zekr = zekrList.first;
                        zekrList.removeAt(0);
                        zekrList.add(zekr);
                      }
                    },
                  );
                },
                child: Text(
                  'سبح',
                  style: TextStyle(
                      fontFamily: 'Cairo', fontSize: 18, color: Colors.black),
                ),
                backgroundColor: Color(0xffFFBF95),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
