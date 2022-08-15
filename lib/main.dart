import 'package:flutter/material.dart';
import 'DesktopApp.dart';
import 'MobileApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      //"Responsive using Expanded()"
      /**home: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints)
      {
        print(constraints.minWidth.toInt());
        if(constraints.minWidth.toInt()<=500)
          {
            return const MobileScreen();
          }

        return const DesktopScreen();
        },
      ),**/

      //"Responsive using MediaQuery()"
      home: Builder(builder: (BuildContext context)
      {
        MediaQuery.of(context).size.width;
        if(MediaQuery.of(context).size.width.toInt()<=600)
        {
          return  MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 0.75,
              ),
              child: const MobileScreen());
        }
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.2,
            ),
        child: const DesktopScreen());
      },
      ),
    );
  }
}

