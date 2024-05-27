import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

//
// 원래 있던 위젯 - app  widget
//
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;
  void toggleTitle() {
    setState(() {
      showTitle = !showTitle; //실수하기 쉬운 구문 , 조심할 것!!!!!!!
    });
    //print(showTitle);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                icon: const Icon(
                  Icons.remove_red_eye,
                ),
                onPressed: toggleTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// MyLargetitle 위젯을  만들다.
//
class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  //부모에 의존하는 데이터 초기화, 업데이트 구독할 때 사용
  // only one time invoked befor build method
  @override
  void initState() {
    super.initState();
    // print('initState!!!');
  }

  @override
  void dispose() {
    super.dispose();
    //print('dispose!!!');
  }

  @override
  Widget build(BuildContext context) {
    //print('build!!!');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
