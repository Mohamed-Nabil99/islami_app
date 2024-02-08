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
  double angel = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.10,
                    horizontal: MediaQuery.of(context).size.width * 0.20),
                child: Transform.rotate(
                  angle: angel,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        numberOfTasbeeh = (numberOfTasbeeh + 1) % 34;
                        angel += 0.15;
                        if (numberOfTasbeeh == 0) {
                          currentTasbeehIndex =
                              (currentTasbeehIndex + 1) % tasbeehPhrases.length;
                        }
                      });
                    },
                    child: provider.isDarkMode()
                        ? Image.asset('assets/images/body_sebha_dark.png')
                        : Image.asset('assets/images/body_sebha_logo.png'),
                  ),
                ),
              ),
              provider.isDarkMode()
                  ? Positioned(
                      left: MediaQuery.of(context).size.width * 0.55,
                      child: Image.asset('assets/images/head_sebha_dark.png'))
                  : Positioned(
                      left: MediaQuery.of(context).size.width * 0.55,
                      child: Image.asset('assets/images/head_sebha_logo.png')),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.number_of_praises,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(height: 15),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.10,
                  decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? MyTheme.primarydark
                        : MyTheme.primaryLight,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Center(
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
              ),
              SizedBox(height: 15),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: MediaQuery.of(context).size.height * 0.10,
                    decoration: BoxDecoration(
                      color: provider.isDarkMode()
                          ? MyTheme.yallowColor
                          : MyTheme.primaryLight,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    child: Center(
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
