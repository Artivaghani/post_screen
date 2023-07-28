import 'package:arti_practicle/utils/config_packages.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key});

  PostController postController = Get.put(PostController());
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(
              minWidth: AppDimen.dimen350, maxWidth: AppDimen.dimen700),
          child: SafeArea(
            child: Column(
              children: [
                AppWidgets.commonAppBar(title: AppString.postTitle),
                Expanded(
                  child: ListView(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: AppDimen.dimen10,
                        ),
                        AppWidgets.getProfileView('안녕 나 응애', AppImages.profile),
                        SizedBox(
                          height: AppDimen.dimen20,
                        ),
                        Text(
                          '지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?',
                          style: Get.theme.textTheme.headlineSmall,
                        ),
                        SizedBox(
                          height: AppDimen.dimen10,
                        ),
                        Text(
                          '지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어?\n\n 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아??? \n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!',
                          style: Get.theme.textTheme.labelSmall,
                        ),
                        SizedBox(
                          height: AppDimen.dimen10,
                        ),
                        Wrap(
                          children: getTagList(),
                        ),
                      ],
                    ).paddingSymmetric(
                        horizontal: AppDimen.dimen20,
                        vertical: AppDimen.dimen14),
                    getPostImage(),
                    getbottomView(),
                    AppWidgets.devider(),
                    CommentView().paddingSymmetric(
                        horizontal: AppDimen.dimen20,
                        vertical: AppDimen.dimen16)
                  ]).paddingSymmetric(vertical: AppDimen.dimen14),
                ),
                bottomViewBar()
              ],
            ),
          ),
        ),
      ),
    );
  }

  bottomViewBar() {
    return SizedBox(
      height: AppDimen.dimen80,
      child: Column(
        children: [
          AppWidgets.devider(),
          Row(
            children: [
              Image.asset(
                AppImages.image,
                width: AppDimen.dimen35,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: AppString.leaveComment,
                      hintStyle: Get.theme.textTheme.labelSmall),
                ).paddingSymmetric(horizontal: AppDimen.dimen8),
              ),
              Text(
                AppString.post,
                style: Get.theme.textTheme.bodySmall,
              )
            ],
          ).paddingSymmetric(horizontal: AppDimen.dimen20)
        ],
      ),
    );
  }

  List<Widget> getTagList() {
    List<Widget> tagList = [];
    for (var element in postController.tagList) {
      tagList.add(Chip(
        label: Text(
          element,
          style: Get.theme.textTheme.labelSmall,
        ),
        padding: EdgeInsets.symmetric(
            vertical: AppDimen.dimen6, horizontal: AppDimen.dimen8),
        backgroundColor: Get.theme.cardColor,
        visualDensity: const VisualDensity(horizontal: -4, vertical: -3),
        side: BorderSide(
            width: 0.01, color: AppColors.lableColor.withOpacity(0.5)),
      ).paddingOnly(right: AppDimen.dimen8,top: 2));
    }
    return tagList;
  }

  getPostImage() {
    return Stack(alignment: AlignmentDirectional.bottomCenter, children: [
      CarouselSlider(
        carouselController: _controller,
        options: CarouselOptions(
          disableCenter: true,
          height: AppDimen.dimen500,
          onPageChanged: (index, reason) {
            postController.current.value = index;
          },
        ),
        items: postController.sliderList
            .map((item) => Container(
                  color: AppColors.greyColor,
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                  ),
                ))
            .toList(),
      ),
      Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: postController.sliderList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 6,
                  height: 6,
                  margin:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 2),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white.withOpacity(
                          // ignore: unrelated_type_equality_checks
                          postController.current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ))
    ]);
  }

  Widget getbottomView() {
    return Row(
      children: [
        AppWidgets.getImgTextView(AppImages.like, false, count: '5'),
        SizedBox(
          width: AppDimen.dimen4,
        ),
        AppWidgets.getImgTextView(AppImages.comment, false, count: '5'),
        SizedBox(
          width: AppDimen.dimen4,
        ),
        AppWidgets.getImgTextView(
          AppImages.save,
          false,
        ),
        SizedBox(
          width: AppDimen.dimen4,
        ),
        AppWidgets.getImgTextView(
          AppImages.menu,
          false,
        ),
      ],
    ).paddingSymmetric(
        horizontal: AppDimen.dimen20, vertical: AppDimen.dimen16);
  }
}
