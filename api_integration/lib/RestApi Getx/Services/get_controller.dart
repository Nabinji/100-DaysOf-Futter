import 'package:api_integration/RestApi%20Getx/Model/itesm_model.dart';
import 'package:api_integration/RestApi%20Getx/Services/services.dart';
import 'package:get/get.dart';

class ProductConroller extends GetxController {
  var productItems = <Product>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productItems.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
