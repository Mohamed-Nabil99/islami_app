import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islame_project/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../../my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int numberOfTasbeeh = 0;
  List<String> tasbeehPhrases = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  int currentTasbeehIndex = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              provider.isDarkMode()
                  ? Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.asset('assets/images/head_sebha_dark.png'))
                  : Padding(
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
                provider.isDarkMode()
                    ? Center(
                        child: Image.asset('assets/images/body_sebha_dark.png'))
                    : Center(
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
                  AppLocalizations.of(context)!.number_of_praises,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: 15),
                Container(
                  width: 70,
                  height: 65,
                  decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? MyTheme.primarydark
                        : MyTheme.primaryLight,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      '$numberOfTasbeeh',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: provider.isDarkMode()
                                ? MyTheme.WhiteColor
                                : MyTheme.blackColor,
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
                  decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? MyTheme.yallowColor
                        : MyTheme.primaryLight,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
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
