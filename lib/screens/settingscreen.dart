import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(title: const Text("S E T T I N G S"),
      ),
      body: Container(
        decoration:  BoxDecoration(color: Theme.of(context).colorScheme.secondary, 
        borderRadius: BorderRadius.circular(12)),
        padding:const EdgeInsets.all(16),
        margin: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //dark mode
             const    Text(
              "Dark Mode ",
              style: TextStyle(fontWeight: FontWeight.bold),),

                 CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context,listen: false).isDarkMode,
                   onChanged: (value)=>Provider.of<ThemeProvider>(context,listen: false).
                   toggleTheme(),
                   )
        ]
        ),
      ),
    );
  }
}