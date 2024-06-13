import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:photo_editor/app_theme.dart';
import 'package:photo_editor/screens/SplashScreen.dart';
import 'package:photo_editor/store/AppStore.dart';
import 'package:photo_editor/utils/constants.dart';

AppStore appStore = AppStore();

bool bannerReady = false;
bool interstitialReady = false;
bool isRewardedAdReady = false;
bool rewarded = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  defaultSpreadRadius = 0.5;
  defaultBlurRadius = 3.0;
  appButtonBackgroundColorGlobal = Colors.white;
  await initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: mAppName,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: SplashScreen(),
      scrollBehavior: MyBehavior(),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
