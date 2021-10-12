import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/services/cache_shared_preferences.dart';

import 'constants.dart';
import 'main_splash_screen.dart';
import 'providers/bottom_navigation_bar_povider.dart';
import 'screens/on_boarding/on_boarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheSharedPreferences.init();
  bool onBoarding = CacheSharedPreferences.getData(key: 'onBoarding') ?? false;
  runApp(
    MyApp(
      onBoarding: onBoarding,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.onBoarding,
  });

  final onBoarding;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavigationBarProvider>(
          create: (context) => BottomNavigationBarProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop App',
        home: MainSplashScreen(
          onBoarding: onBoarding,
        ),
        theme: ThemeData(
          primaryColor: Constants.primaryPurpleColor,
          fontFamily: 'custom_font',
          appBarTheme: AppBarTheme(
            backgroundColor: Constants.primaryWhiteColor,
            elevation: 0.0,
            titleSpacing: 20.0,
            iconTheme: IconThemeData(
              color: Constants.primaryPurpleColor,
            ),
            // ignore: deprecated_member_use
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Constants.primaryWhiteColor,
              statusBarIconBrightness: Brightness.dark,
            ),
            titleTextStyle: TextStyle(
              color: Constants.primaryPurpleColor,
              fontFamily: 'custom_font',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
            centerTitle: true,
          ),
        ),
      ),
    );
  }
}
