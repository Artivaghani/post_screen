import 'package:arti_practicle/utils/config_packages.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(
              minWidth: AppDimen.dimen350, maxWidth: AppDimen.dimen700),
              child: ListView(children: [
                
              ]),
        ),
      ),
    );
  }
}
