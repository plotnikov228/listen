import 'package:flutter/material.dart';
import 'package:listenmebaby71_s_application14/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {


  RxInt selectedIndex () {
    if(Get.currentRoute == AppRoutes.k2Screen) return 0.obs;
    if(Get.currentRoute == AppRoutes.k3Screen) return 1.obs;
    if(Get.currentRoute == AppRoutes.k12Screen) return 2.obs;
    if(Get.currentRoute == AppRoutes.k14Screen) return 3.obs;
    else return 1.obs;
  }

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      title: "lbl18".tr.toUpperCase(),
      type: BottomBarEnum.first,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGrid,
      title: "lbl9".tr.toUpperCase(),
      type: BottomBarEnum.second,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCart,
      title: "lbl19".tr.toUpperCase(),
      type: BottomBarEnum.third,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      title: "lbl20".tr.toUpperCase(),
      type: BottomBarEnum.fourth,
    )
  ];

   void onChanged(BottomBarEnum type) {
     {
       switch (type) {
         case(BottomBarEnum.first):
           if(Get.currentRoute != AppRoutes.k2Screen)
           Get.toNamed(AppRoutes.k2Screen);
           break;
         case(BottomBarEnum.second):
           if(Get.currentRoute != AppRoutes.k3Screen)
           Get.toNamed(AppRoutes.k3Screen);
           break;
         case(BottomBarEnum.third):
           if(Get.currentRoute != AppRoutes.k12Screen)
             Get.toNamed(AppRoutes.k12Screen);
           break;
         case(BottomBarEnum.fourth):
           if(Get.currentRoute != AppRoutes.k14Screen)
             Get.toNamed(AppRoutes.k14Screen);
           break;
       }
     }
   }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: getMargin(
          right: 4,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA70001,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHorizontalSize(
                8,
              ),
            ),
            topRight: Radius.circular(
              getHorizontalSize(
                8,
              ),
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorConstant.black90026,
              spreadRadius: getHorizontalSize(
                2,
              ),
              blurRadius: getHorizontalSize(
                2,
              ),
              offset: Offset(
                4,
                -4,
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex().value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    color: ColorConstant.blueGray400,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRomanBold11.copyWith(
                        color: ColorConstant.blueGray400,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getSize(
                      20,
                    ),
                    width: getSize(
                      20,
                    ),
                    color: ColorConstant.red600,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRomanExtraBold11.copyWith(
                        color: ColorConstant.red600,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex().value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  first, second, third, fourth
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, this.title, required this.type});

  String icon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
