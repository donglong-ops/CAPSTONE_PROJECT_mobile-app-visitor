import 'package:get/get.dart';
import 'package:indoor_positioning_visitor/src/models/coupon.dart';
import 'package:indoor_positioning_visitor/src/models/product.dart';
import 'package:indoor_positioning_visitor/src/models/store.dart';
import 'package:indoor_positioning_visitor/src/services/api/coupon_service.dart';
import 'package:indoor_positioning_visitor/src/services/api/product_service.dart';
import 'package:indoor_positioning_visitor/src/services/api/store_service.dart';

class StoreDetailsController extends GetxController {
  final store = Store().obs;
  final listProduct = <Product>[].obs;
  final listCoupon = <Coupon>[].obs;
  final storeId = 0.obs;
  @override
  void onInit() {
    super.onInit();
    String? id = Get.parameters['id'];
    if (id == null) return;
    storeId.value = int.parse(id);
    getStoreDetail();
    getProducts();
    getCoupons();
  }

  IStoreService storeService = Get.find();
  Future<void> getStoreDetail() async {
    store.value = await storeService.getStoreById(storeId.value);
  }

  IProductService productService = Get.find();
  Future<void> getProducts() async {
    listProduct.value =
        await productService.getProductsByStoreId(storeId.value);
  }

  ICouponService couponService = Get.find();
  Future<void> getCoupons() async {
    listCoupon.value = await couponService.getCouponsByStoreId(storeId.value);
  }
}
