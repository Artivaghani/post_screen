import 'package:arti_practicle/utils/config_packages.dart';

class AppWidgets {
  static Widget commonAppBar({required String title, Function()? callBack}) =>
      Row(
        children: [
          IconButton(
              onPressed: callBack ?? () => Get.back(),
              icon: Image.asset(
                AppImages.backArrow,
                width: AppDimen.dimen35,
              )),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: Get.theme.textTheme.headlineLarge,
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon:
                  Image.asset(AppImages.notification, width: AppDimen.dimen35)),
        ],
      ).paddingSymmetric(horizontal: AppDimen.dimen4);

  static roundAssetImg(String path, {double? radius}) => CircleAvatar(
        radius: radius ?? 26,
        backgroundImage: AssetImage(path),
      );

  static getImgTextView(String img, bool isLike, {String? count}) => Row(
        children: [
          Image.asset(
            img,
            width: AppDimen.dimen40,
          ),
          if (count != null)
            Text(
              count,
              style: Get.theme.textTheme.bodySmall,
            ).paddingOnly(left: AppDimen.dimen2)
        ],
      );

  static devider() => Container(
        color: AppColors.deviderColor,
        width: double.infinity,
        height: 0.4,
      );

  static Widget getProfileView(String name, String profile,
          {bool isComment = false}) =>
      Row(
        children: [
          AppWidgets.roundAssetImg(profile, radius: 20),
          SizedBox(
            width: AppDimen.dimen8,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: Get.theme.textTheme.headlineSmall,
                  ),
                  Image.asset(
                    AppImages.check,
                    width: AppDimen.dimen20,
                    height: AppDimen.dimen20,
                  ).paddingSymmetric(horizontal: AppDimen.dimen4),
                  Text(
                    '1일전',
                    style: Get.theme.textTheme.bodySmall,
                  ),
                ],
              ),
              if (!isComment)
                Text(
                  '165cm • 53kg',
                  style: Get.theme.textTheme.titleSmall,
                ).paddingOnly(top: AppDimen.dimen4),
            ],
          )),
          isComment
              ? AppWidgets.getImgTextView(
                  AppImages.menu,
                  false,
                )
              : ButtonView(
                  title: AppString.follow,
                  width: AppDimen.dimen90,
                  height: AppDimen.dimen35,
                )
        ],
      );
}
