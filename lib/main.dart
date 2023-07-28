
import 'package:arti_practicle/utils/config_packages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.appname,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
       builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
              child: child!);
        },
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.off( PostScreen()),
    );
    return Scaffold(
      body: Center(child: Text(AppString.splashMsg)),
    );
  }
}
