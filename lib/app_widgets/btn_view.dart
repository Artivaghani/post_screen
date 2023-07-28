import 'package:arti_practicle/utils/config_packages.dart';

class ButtonView extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final Color? color;
  final Function()? onPressed;

  ButtonView(
      {super.key,
      required this.title,
      this.height,
      this.color,
      this.width,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: color ?? AppColors.terneryColor,
        ),
        child: Text(
          title,
          maxLines: 1,
          style: Get.theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}
