import 'package:flutter/material.dart';
import 'package:islame_project/my_theme.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 20), // Adjust padding as needed
          child: Column(
            children: [
              Image.asset('assets/images/radio_image.png'), // Radio image
              SizedBox(height: 10), // Add space between image and text
              Text(
                'إذاعة القرآن الكريم',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              color: MyTheme.primaryLight,
              iconSize: 50,
              icon: Icon(Icons.skip_previous), // Back icon
              onPressed: () {
                // Add your onPressed logic here
              },
            ),
            IconButton(
              color: MyTheme.primaryLight,
              iconSize: 50,
              icon: Icon(Icons.play_arrow), // Play icon
              onPressed: () {
                // Add your onPressed logic here
              },
            ),
            IconButton(
              color: MyTheme.primaryLight,
              iconSize: 50,
              icon: Icon(Icons.skip_next), // Play next icon
              onPressed: () {
                // Add your onPressed logic here
              },
            ),
          ],
        ),
      ],
    );
  }
}
