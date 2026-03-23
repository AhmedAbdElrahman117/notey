import 'package:flutter/widgets.dart';

class OverlayHelper {
  late final AnimationController animationController;

  final OverlayPortalController overlayController = OverlayPortalController();

  ValueNotifier<Offset> buttonPosition = ValueNotifier(Offset.zero);

  OverlayHelper({required TickerProvider vsync}) {
    animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 250),
      reverseDuration: const Duration(milliseconds: 250),
    );
  }

  void setPosition(BuildContext context) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    buttonPosition.value = renderBox.localToGlobal(Offset.zero);
  }

  Future<void> triggerOverlay(BuildContext context) async {
    setPosition(context);
    if (overlayController.isShowing) {
      await animationController.reverse();
      overlayController.hide();
    } else {
      overlayController.show();
      animationController.forward(from: 0);
    }
  }

  bool isShowing() {
    return overlayController.isShowing;
  }
}
