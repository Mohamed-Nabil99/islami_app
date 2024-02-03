import 'package:flutter/material.dart';
import 'package:islame_project/home/hadeth/hadeth_tab.dart';
import 'package:islame_project/home/hadeth/item_hadeth_details_screen.dart';
import 'package:islame_project/my_theme.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const routeName = 'hadeth_details_screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      Image.asset(
        'assets/images/default_bg.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text('${args.title}',
              style: Theme.of(context).textTheme.titleLarge),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.06,
            horizontal: MediaQuery.of(context).size.height * 0.05,
          ),
          decoration: BoxDecoration(
              color: MyTheme.WhiteColor,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [BoxShadow(color: Colors.white)]),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetailsScreen(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}
