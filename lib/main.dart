import 'package:dopin_test_3/config/routes.dart';
import 'package:dopin_test_3/config/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const ProviderScope(child: Dopin()));
}

// class Dopin extends ConsumerWidget {
//   const Dopin({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final appThemeState = ref.watch(appThemeStateNotifier);
//     // to using go_router we need [MaterialApp.router]
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       title: 'dopin',
//       theme: lightTheme,
//       darkTheme: darkTheme,
//       routeInformationParser: routes.routeInformationParser,
//       routerDelegate: routes.routerDelegate,
//     );
//   }
// }
GlobalKey<NavigatorState> mainNav = GlobalKey();

class Dopin extends StatefulWidget {
  const Dopin({Key? key}) : super(key: key);

  @override
  State<Dopin> createState() => _DopinState();
}

class _DopinState extends State<Dopin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/testy',
      routes: {
        '/testy': (context) => const Testy(),
        '/testapp': (context) => const TestApp(),
        '/testapp2': (context) => const TestApp2(),
      },
    );
  }
}

class Testy extends StatefulWidget {
  const Testy({Key? key}) : super(key: key);

  @override
  State<Testy> createState() => _TestyState();
}

class _TestyState extends State<Testy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: mainNav,
        initialRoute: '/testapp',
        onGenerateRoute: (RouteSettings settings) {
          Widget page = const TestApp();
          switch (settings.name) {
            case '/testApp':
              page = const TestApp();
              break;
            case '/testApp2':
              page = const TestApp2();
              break;
          }
          // if (settings.name == '/home') {
          //   page = const HomeScreen();
          // } else if (settings.name == '/search') {
          //   page = const SearchPage();
          // } else if (settings.name == '/inbox') {
          //   page = const InboxPage();
          // }

          return MaterialPageRoute<dynamic>(
            builder: (context) {
              return page;
            },
            settings: settings,
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: ''),
        ],
        onTap: (index) {
          if (index == 0) {
            mainNav.currentState!.pushNamed('/testApp');
            // Navigator.pushNamed(context, '/testApp');
          } else if (index == 1) {
            mainNav.currentState!.pushNamed('/testApp2');
            // Navigator.pushNamed(context, '/testApp2;')
          }
        },
      ),
    );
  }
}

class TestApp extends StatefulWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp>
    with AutomaticKeepAliveClientMixin<TestApp> {
  int count = 0;
  @override
  void initState() {
    print('TestApp');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TestApp2())),
            child: Text(count.toString())),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          count++;
        }),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class TestApp2 extends ConsumerWidget {
  const TestApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('TestApp2');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
