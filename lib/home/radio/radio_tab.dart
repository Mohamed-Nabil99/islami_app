import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islame_project/my_theme.dart';
import 'package:islame_project/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Image.asset('assets/images/radio_image.png'),
              SizedBox(height: 10),
              Text(
                AppLocalizations.of(context)!.quran_radio,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              color: provider.isDarkMode()
                  ? MyTheme.yallowColor
                  : MyTheme.primaryLight,
              iconSize: 50,
              icon: Icon(Icons.skip_previous),
              onPressed: () {},
            ),
            IconButton(
              color: provider.isDarkMode()
                  ? MyTheme.yallowColor
                  : MyTheme.primaryLight,
              iconSize: 50,
              icon: Icon(Icons.play_arrow),
              onPressed: () {},
            ),
            IconButton(
              color: provider.isDarkMode()
                  ? MyTheme.yallowColor
                  : MyTheme.primaryLight,
              iconSize: 50,
              icon: Icon(Icons.skip_next),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
