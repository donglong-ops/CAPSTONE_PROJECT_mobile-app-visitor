import 'package:get/get.dart';
import 'package:indoor_positioning_visitor/src/models/coupon.dart';
import 'package:indoor_positioning_visitor/src/models/coupon_in_use.dart';
import 'package:indoor_positioning_visitor/src/routes/routes.dart';
import 'package:indoor_positioning_visitor/src/services/api/coupon_in_use_service.dart';
import 'package:indoor_positioning_visitor/src/services/global_states/shared_states.dart';

final dateTime = DateTime.now();


class MyCouponController extends GetxController {
  ICouponInUseService _service = Get.find();

  /// Shared data
  final SharedStates sharedData = Get.find();

  /// Get list all coupon of visitor save before
  final listCouponInUse = <CouponInUse>[].obs;

  /// Set list coupon of visitor save before
  Future<void> getCouponInUse() async {
    final paging = await _service.getCouponInUseByVisitorId(9);
    listCouponInUse.value = paging.content!;

  }

  void gotoCouponDetails(CouponInUse coupon) {
    sharedData.saveCouponInUse(coupon);
    Get.toNamed(Routes.couponDetail);
  }

  /// Check coupons of visitor save before with status is 'NotUse'
  bool checkCouponValid(String status, CouponInUse couponInUse){
    bool result = false;
    if(couponInUse.status == status && couponInUse.coupon!.publishDate!.compareTo(dateTime) < 0
        &&  couponInUse.coupon!.expireDate!.compareTo(dateTime) >= 0){
      result = true;
    }
    return result;
  }

  /// Check coupons of visitor save before with Expriredate
  bool checkExpireCoupon(Coupon coupon){
    bool result = false;
    if(coupon.publishDate!.compareTo(dateTime) < 0 &&  coupon.expireDate!.compareTo(dateTime) < 0 ){
      result = true;
    }
    return result;
  }

  @override
  void onInit() {
    super.onInit();
    getCouponInUse();
  }
}