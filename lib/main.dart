
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/SplashScreen.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  //final AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        // initialBinding: AppBinding(),
        getPages: [
          GetPage(name: '/splash_screen', page: () => SplashScreen()),
          GetPage(name: '/login_screen', page: () => LoginScreen()),
          GetPage(name: '/home_screen', page: () => HomeScreen()),
           // Walkthrough screen route
        ],
        theme: ThemeData(),


        title: "Driver App",
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),

        // Dynamic navigation based on AppController's state
        // builder: (context, child) {
        //   return Obx(() {
        //     if (appController.isFirstLaunch.value) {
        //       return WalkthroughScreen(); // Show walkthrough screen if it's the first launch
        //     } else if (appController.isLoggedIn.value) {
        //       return HomeScreen(); // Show home screen if user is logged in
        //     } else {
        //       return LoginScreen(); // Show login screen if user is not logged in
        //     }
        //   });
        // },

    );
  }
}
