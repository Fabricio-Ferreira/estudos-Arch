import 'package:estudos/app/shared/helper/decoration_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorHelper {
  static to(Widget page) {
    Get.to(page);
  }

  static off(Widget page) {
    Get.off(page);
  }

  static offAll(Widget page) {
    Get.offAll(page);
  }

  static back() {
    Get.back();
  }

  //region Metodo de navegação de telas utilizando bottomSheet
  /// Cria a bottomsheet padrão
  ///
  /// Quando vamos navegar através uma bottomSheet,
  /// utilizamos o component Get e precisamos de alguns parametros
  /// com esse método apenas precisamos enviar a página que queremos
  /// e mais nada.
  navigateWithBottomSheetDynamicScreen(Widget widget,
      {bool isDismissible = true}) {
    Get.bottomSheet(widget,
        isScrollControlled: true,
        isDismissible: isDismissible,
        enableDrag: isDismissible,
        clipBehavior: Clip.antiAlias,
        useRootNavigator: true,
        shape: borderFromBottomSheet());
  }

//endregion
}
