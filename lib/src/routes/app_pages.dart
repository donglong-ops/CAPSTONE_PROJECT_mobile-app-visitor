import 'package:ipsb_visitor_app/src/pages/create_shopping_item/bindings/create_shopping_item_binding.dart';
import 'package:ipsb_visitor_app/src/pages/create_shopping_item/views/create_shopping_item_page.dart';
import 'package:ipsb_visitor_app/src/pages/create_shopping_list/bindings/create_shopping_list_binding.dart';
import 'package:ipsb_visitor_app/src/pages/create_shopping_list/views/create_shopping_list_page.dart';
import 'package:ipsb_visitor_app/src/pages/map/views/home_page_test.dart';
import 'package:ipsb_visitor_app/src/pages/shopping_list/bindings/shopping_list_binding.dart';
import 'package:ipsb_visitor_app/src/pages/shopping_list/views/shopping_list_page.dart';
import 'package:get/get.dart';
import 'package:ipsb_visitor_app/src/pages/combo_product_detail/bindings/combo_product_detail_binding.dart';
import 'package:ipsb_visitor_app/src/pages/combo_product_detail/views/combo_product_detail_page.dart';
import 'package:ipsb_visitor_app/src/pages/feedback_coupon/bindings/feedback_coupon_binding.dart';
import 'package:ipsb_visitor_app/src/pages/feedback_coupon/views/feed_back_page.dart';
import 'package:ipsb_visitor_app/src/pages/home/bindings/home_binding.dart';
import 'package:ipsb_visitor_app/src/pages/home/views/home_page.dart';
import 'package:ipsb_visitor_app/src/pages/login_gmail/bindings/login_email_binding.dart';
import 'package:ipsb_visitor_app/src/pages/login_gmail/views/login_email_page.dart';
import 'package:ipsb_visitor_app/src/pages/login_phone/bindings/login_phone_binding.dart';
import 'package:ipsb_visitor_app/src/pages/login_phone/views/login_phone_screen.dart';
import 'package:ipsb_visitor_app/src/pages/login_phone/views/verify_phone_screen.dart';
import 'package:ipsb_visitor_app/src/pages/map/views/map_page.dart';
import 'package:ipsb_visitor_app/src/pages/building_details/bindings/building_detail_binding.dart';
import 'package:ipsb_visitor_app/src/pages/building_details/views/building_detail_page.dart';
import 'package:ipsb_visitor_app/src/pages/building_store_list/bindings/building_store_binding.dart';
import 'package:ipsb_visitor_app/src/pages/building_store_list/views/building_store_list_page.dart';
import 'package:ipsb_visitor_app/src/pages/my_coupon_detail/bindings/my_coupon_detail_binding.dart';
import 'package:ipsb_visitor_app/src/pages/my_coupons/bindings/my_coupon_binding.dart';
import 'package:ipsb_visitor_app/src/pages/product_detail/bindings/product_detail_binding.dart';
import 'package:ipsb_visitor_app/src/pages/product_detail/views/product_detail_page.dart';
import 'package:ipsb_visitor_app/src/pages/profile/bindings/profile_binding.dart';
import 'package:ipsb_visitor_app/src/pages/profile/views/profile_page.dart';
import 'package:ipsb_visitor_app/src/pages/profile_detail/bindings/profile_detail_binding.dart';
import 'package:ipsb_visitor_app/src/pages/profile_detail/views/profile_detail_page.dart';
import 'package:ipsb_visitor_app/src/pages/setting/bindings/setting_binding.dart';
import 'package:ipsb_visitor_app/src/pages/setting/views/setting_page.dart';
import 'package:ipsb_visitor_app/src/pages/shopping_list_detail/bindings/shopping_list_detail_binding.dart';
import 'package:ipsb_visitor_app/src/pages/shopping_list_detail/views/shopping_list_detail_page.dart';
import 'package:ipsb_visitor_app/src/pages/test_algorithm/bindings/test_algorithm_binding.dart';
import 'package:ipsb_visitor_app/src/pages/test_algorithm/views/test_algorithm_page.dart';
import 'package:ipsb_visitor_app/src/pages/update_infomation_signup/bindings/update_profile_binding.dart';
import 'package:ipsb_visitor_app/src/pages/update_infomation_signup/views/update_profile_page.dart';
import '../pages/my_coupon_detail/views/my_coupon_detail_page.dart';
import 'package:ipsb_visitor_app/src/pages/my_coupons/views/my_coupon_page.dart';
import 'package:ipsb_visitor_app/src/pages/notifications/bindings/notifications_binding.dart';
import 'package:ipsb_visitor_app/src/pages/notifications/views/notifications_page.dart';
import 'package:ipsb_visitor_app/src/pages/show_coupon_qr/bindings/show_coupon_qr_binding.dart';
import 'package:ipsb_visitor_app/src/pages/show_coupon_qr/views/show_coupon_qr_page.dart';
import 'package:ipsb_visitor_app/src/pages/store_details/bindings/store_details_binding.dart';
import 'package:ipsb_visitor_app/src/pages/store_details/views/store_details_page.dart';
import 'package:ipsb_visitor_app/src/routes/routes.dart';
import 'package:ipsb_visitor_app/src/pages/map/bindings/map_binding.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.testAlgorithm,
      page: () => TestAlgorithmPage(),
      binding: TestAlgorithmBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.map,
      page: () => MapPage(),
      binding: MapBinding(),
    ),
    GetPage(
      name: Routes.myCoupon,
      page: () => MyCouponPage(),
      binding: MyCouponBinding(),
    ),
    GetPage(
      name: Routes.showCouponQR,
      page: () => ShowCouponQRPage(),
      binding: ShowCouponQRBinding(),
    ),
    GetPage(
      name: Routes.couponDetail,
      page: () => MyCouponDetailPage(),
      binding: MyCouponDetailBinding(),
    ),
    GetPage(
      name: Routes.notifications,
      page: () => NotificationsPage(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: Routes.storeDetails,
      page: () => StoreDetailsPage(),
      binding: StoreDetailsBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.buildingDetails,
      page: () => BuildingDetailPage(),
      binding: BuildingDetailBinding(),
    ),
    GetPage(
      name: Routes.buildingStore,
      page: () => BuildingStorePage(),
      binding: BuildingStoreBinding(),
    ),
    GetPage(
      name: Routes.feedbackCoupon,
      page: () => FeedbackCouponPage(),
      binding: FeedbackCouponBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginEmailPage(),
      binding: LoginEmailBinding(),
    ),
    GetPage(
      name: Routes.loginPhone,
      page: () => LoginPhonePage(),
      binding: LoginPhoneBinding(),
    ),
    GetPage(
      name: Routes.phoneVerify,
      page: () => VerifyPhoneScreen(),
      binding: LoginPhoneBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.profileDetail,
      page: () => ProfileDetailPage(),
      binding: ProfileDetailBinding(),
    ),
    GetPage(
      name: Routes.setting,
      page: () => SettingPage(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: Routes.updateProfile,
      page: () => UpdateProfilePage(),
      binding: UpdateProfileBinding(),
    ),
    GetPage(
      name: Routes.productDetail,
      page: () => ProductDetailPage(),
      binding: ProductDetailBinding(),
    ),
    GetPage(
      name: Routes.productComboDetail,
      page: () => ComboProductDetailPage(),
      binding: ComboProductDetailBinding(),
    ),
    GetPage(
      name: Routes.shoppingList,
      page: () => ShoppingListPage(),
      binding: ShoppingListBinding(),
    ),
    GetPage(
      name: Routes.createShoppingList,
      page: () => CreateShoppingListPage(),
      binding: CreateShoppingListBinding(),
    ),
    GetPage(
      name: Routes.shoppingListDetail,
      page: () => ShoppingListDetailsPage(),
      binding: ShoppingListDetailsBinding(),
    ),
    GetPage(
      name: Routes.createShoppingItem,
      page: () => CreateShoppingItemPage(),
      binding: CreateShoppingItemBinding(),
    ),
  ];
}
