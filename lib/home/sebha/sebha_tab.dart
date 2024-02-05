import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int numberOfTasbeeh = 0;
  List<String> tasbeehPhrases = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  int currentTasbeehIndex = 0;

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Color(0xffB7935F),
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Image.asset('assets/images/head_sebha_logo.png'),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              setState(() {
                numberOfTasbeeh = (numberOfTasbeeh + 1) % 34;
                if (numberOfTasbeeh == 0) {
                  currentTasbeehIndex =
                      (currentTasbeehIndex + 1) % tasbeehPhrases.length;
                }
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset('assets/images/body_sebha_logo.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  'عدد التسبيحات',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: 15),
                Container(
                  width: 70,
                  height: 65,
                  decoration: myBoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      '$numberOfTasbeeh',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Colors.black,
                            fontFamily: 'Monotype Koufi',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 163,
                  height: 55,
                  decoration: myBoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      tasbeehPhrases[currentTasbeehIndex],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Monotype Koufi',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
