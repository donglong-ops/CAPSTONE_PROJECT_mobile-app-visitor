import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ipsb_visitor_app/src/common/constants.dart';
import 'package:ipsb_visitor_app/src/models/shopping_list.dart';
import 'package:ipsb_visitor_app/src/routes/routes.dart';
import 'package:ipsb_visitor_app/src/services/api/shopping_item_service.dart';
import 'package:ipsb_visitor_app/src/services/api/shopping_list_service.dart';
import 'package:ipsb_visitor_app/src/services/global_states/shared_states.dart';

class ShoppingListDetailController extends GetxController {
  final IShoppingListService _shoppingListService = Get.find();
  final IShoppingItemService _shoppingItemService = Get.find();
  final shoppingListDetails = ShoppingList().obs;
  final SharedStates _sharedStates = Get.find();
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadShoppingListDetails();
  }

  void loadShoppingListDetails() async {
    String? shoppingListId = Get.parameters["shoppingListId"];
    if (shoppingListId == null) return;
    isLoading.value = true;
    final result =
        await _shoppingListService.getById(int.parse(shoppingListId));
    if (result != null) {
      shoppingListDetails.value = result;
    }
    isLoading.value = false;
  }

  bool checkDataPresent() => shoppingListDetails.value.id != null;

  // bool shoppingIsEmpty() =>
  //     shoppingListDetails.value.shoppingItems == null ||
  //     shoppingListDetails.value.shoppingItems!.isEmpty;

  void startShopping(BuildContext context) {
    if (!checkDataPresent()) return;
    // if (!shoppingIsEmpty()) {
    //   showErrorDialog(
    //     context,
    //     "Shopping list is empty!",
    //     "Please add more items to your list!!",
    //   );
    //   return;
    // }
    if (!checkItemsValid()) {
      showErrorDialog(
        context,
        "Product is not available!",
        "Please remove the unavailable products!",
      );
      return;
    }
    shoppingListDetails.value.shoppingItems?.forEach((e) {
      e.product?.checked = false;
      e.product?.store?.complete = false;
    });
    _sharedStates.shoppingList.value = shoppingListDetails.value;

    Get.toNamed(Routes.map);
  }

  void createShoppingItem() async {
    var result = await Get.toNamed(Routes.createShoppingItem, parameters: {
      "shoppingListId": shoppingListDetails.value.id.toString(),
      "buildingId": shoppingListDetails.value.buildingId.toString(),
    });
    if (result is bool && result) {
      loadShoppingListDetails();
    }
  }

  void deleteShoppingItem(List<int> shoppingItemIds) async {
    Get.back();
    final results = await Future.wait(
      shoppingItemIds.map((id) => _shoppingItemService.delete(id)),
    );
    if (!results.any((element) => false)) {
      BotToast.showText(text: "Successfully removed!!");
      loadShoppingListDetails();
    }
  }

  void updateShoppingItem(int id, String note) async {
    if (note.isEmpty) return;
    final result = await _shoppingItemService.update(id, {"note": note});
    if (result) {
      Get.back();
      BotToast.showText(text: "Successfully updated!!");
      loadShoppingListDetails();
    }
  }

  bool checkItemsValid() {
    return shoppingListDetails.value.shoppingItems
            ?.fold(true, (acc, e) => acc! && e.product?.status == "Active") ??
        false;
  }

  void showErrorDialog(BuildContext context, String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(msg),
        actions: [
          TextButton(
            child: Text(
              'OK',
              style: TextStyle(color: AppColors.primary, fontSize: 18),
            ),
            onPressed: () => Get.back(),
          ),
        ],
      ),
    );
  }
}
