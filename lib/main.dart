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

class Dopin extends ConsumerWidget {
  const Dopin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final appThemeState = ref.watch(appThemeStateNotifier);
    // to using go_router we need [MaterialApp.router]
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'dopin',
      theme: lightTheme,
      darkTheme: darkTheme,
      routeInformationParser: routes.routeInformationParser,
      routerDelegate: routes.routerDelegate,
    );
  }
}







// class Dopin extends StatelessWidget {
//   const Dopin({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TestApp(),
//     );
//   }
// }
// final countProvider = StateProvider.autoDispose<int>((ref) => 0);

// class TestApp extends ConsumerWidget {
//   const TestApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var count = ref.watch(countProvider.state);
//     print('TestApp');
//     return Scaffold(
//       body: Center(
//         child: InkWell(
//           onTap: () => Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const TestApp2())),
//           child: Consumer(
//             builder: (context, ref, child) {
//               return Text(count.state.toString());
//             },
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => ref.read(countProvider.state).state++,
//       ),
//     );
//   }
// }

// class TestApp2 extends ConsumerWidget {
//   const TestApp2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     print(ref.read(countProvider.state).mounted);
//     print('TestApp2');
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => ref.read(countProvider.state).state++,
//       ),
//     );
//   }
// }
