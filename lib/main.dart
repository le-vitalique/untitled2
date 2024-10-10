import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'package:shimmer/shimmer.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        fontFamily: 'Raleway',
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   controller.addListener(() {
  //     // print(controller.offset.round());
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),

      body:

          // Center(
          //   // Center is a layout widget. It takes a single child and positions it
          //   // in the middle of the parent.
          //   child: Column(
          //     // Column is also a layout widget. It takes a list of children and
          //     // arranges them vertically. By default, it sizes itself to fit its
          //     // children horizontally, and tries to be as tall as its parent.
          //     //
          //     // Column has various properties to control how it sizes itself and
          //     // how it positions its children. Here we use mainAxisAlignment to
          //     // center the children vertically; the main axis here is the vertical
          //     // axis because Columns are vertical (the cross axis would be
          //     // horizontal).
          //     //
          //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          //     // action in the IDE, or press "p" in the console), to see the
          //     // wireframe for each widget.
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       // Image.asset('assets/images/android_logo.png')
          //       // Image.network('https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png')
          //       // Padding(
          //       //     padding: const EdgeInsets.all(8.0),
          //       //     child: Text('Стандартный текст',
          //       //         style: TextStyle(
          //       //           fontSize: 20,
          //       //         ))),
          //       // Padding(
          //       //     padding: const EdgeInsets.all(8.0),
          //       //     child: Text('Comfortaa текст',
          //       //         style: TextStyle(
          //       //           fontFamily: 'Comfortaa',
          //       //           fontSize: 20,
          //       //           fontWeight: FontWeight.bold
          //       //         ))),
          //       // Text.rich(TextSpan(
          //       //     style: TextStyle(color: Colors.amberAccent),
          //       //     children: [
          //       //       TextSpan(text: 'First '),
          //       //       TextSpan(
          //       //           text: 'Second',
          //       //           style: TextStyle(
          //       //               color: Colors.red, fontWeight: FontWeight.w700)),
          //       //     ]))
          //       // Container(
          //       //   height: 100,
          //       //   // padding: EdgeInsets.all(20),
          //       //   constraints: BoxConstraints(
          //       //     maxWidth: 200,
          //       //     maxHeight: 100,
          //       //   ),
          //       //   decoration: BoxDecoration(
          //       //     color: Colors.black,
          //       //     image: DecorationImage(image: NetworkImage('https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png'),
          //       //     fit: BoxFit.contain
          //       //     )
          //       //   ),
          //       // )
          //       //   ConstrainedBox(
          //       //   constraints: BoxConstraints(
          //       //       //maxWidth: 200,
          //       //       ),
          //       //   child: Text(
          //       //       'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...'),
          //       // )
          //       // SizedBox(
          //       //   //width: 100,
          //       //   //height: 25,
          //       //   child: Text(
          //       //       'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...'),
          //       // )
          //
          //       //Text('${Uuid().v1()}'),
          //
          //       // SizedBox(
          //       //             //   width: 200.0,
          //       //             //   height: 100.0,
          //       //             //   child: Shimmer.fromColors(
          //       //             //     baseColor: Colors.black,
          //       //             //     highlightColor: Colors.red,
          //       //             //     child: Text(
          //       //             //       'Shimmer',
          //       //             //       textAlign: TextAlign.center,
          //       //             //       style: TextStyle(
          //       //             //         fontSize: 40.0,
          //       //             //         fontWeight: FontWeight.bold,
          //       //             //       ),
          //       //             //     ),
          //       //             //   ),
          //       //             // ),
          //
          //       // SingleChildScrollView(
          //       //   controller: controller,
          //       //   child: Column(
          //       //     children: [
          //       //       Text('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...'),
          //       //   for(final item in fakeData(100, true)) item,
          //       //       Text('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...'),
          //       //     ],
          //       //   )
          //       //)
          //
          //     ],
          //
          //
          //   ),
          // ),

          CustomScrollView(
        slivers: <Widget>[
          // SliverAppBar
          SliverAppBar(
            backgroundColor: Colors.blueGrey,
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Просмотр фото', // Title text for the SliverAppBar
                style: TextStyle(color: Colors.white),
              ),
              background: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Отпуск',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    SizedBox(width: 10),
                    const FaIcon(
                      FontAwesomeIcons.earthEurope,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                int i = index + 1;
                return Container(
                  padding: EdgeInsets.all(8), // Border width
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/image_$i.jpg'),
                  ),
                );
              },
              childCount: 6, // Number of list items
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
