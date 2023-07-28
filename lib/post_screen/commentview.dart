
import 'package:arti_practicle/utils/config_packages.dart';

class CommentView extends StatelessWidget {
  CommentView({super.key});

  PostController postController = Get.find<PostController>();

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppWidgets.getProfileView(postController.commentList['name'], postController.commentList['img'],
            isComment: true),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              postController.commentList['content'],
              style: Get.theme.textTheme.labelSmall,
            ),
            SizedBox(
              height: AppDimen.dimen4,
            ),
            Row(
              children: [
                AppWidgets.getImgTextView(AppImages.like, false, count: '5'),
                SizedBox(
                  width: AppDimen.dimen4,
                ),
                AppWidgets.getImgTextView(AppImages.comment, false, count: '5'),
              ],
            ),
            SizedBox(
              height: AppDimen.dimen10,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: postController.commentList['subComment'].length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                children: [
                  AppWidgets.getProfileView(
                      postController.commentList['subComment'][index]['name'],postController.commentList['subComment'][index]['img'],
                      isComment: true),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postController.commentList['subComment'][index]
                            ['content'],
                        style: Get.theme.textTheme.labelSmall,
                      ),
                      SizedBox(
                        height: AppDimen.dimen4,
                      ),
                      AppWidgets.getImgTextView(AppImages.like, false,
                          count: '5'),
                    ],
                  ).paddingOnly(
                    top: AppDimen.dimen6,
                    left: AppDimen.dimen55,
                  ),
                ],
              ),
            )
          ],
        ).paddingOnly(
          top: AppDimen.dimen6,
          left: AppDimen.dimen55,
        )
      ],
    );
  }
}
