import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/app_date_time.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Note/Helper/overlay_helper.dart';
import 'package:notey/Features/Note/Model/style_model.dart';
import 'package:notey/Features/Note/Overlay/font_color_list_overlay.dart';
import 'package:notey/Features/Note/Widgets/custom_overlay.dart';
import 'package:notey/Features/Note/Widgets/font_size_slider.dart';
import 'package:notey/Features/Note/Widgets/trigger_button.dart';

class StyleOptionsOverlay extends StatefulWidget {
  const StyleOptionsOverlay({
    super.key,
    required this.overlayController,
    required this.buttonPosition,
    required this.animationController,
    required this.textController,
  });

  final OverlayPortalController overlayController;
  final Offset? buttonPosition;
  final AnimationController animationController;
  final QuillController textController;

  @override
  State<StyleOptionsOverlay> createState() => _StyleOptionsOverlayState();
}

class _StyleOptionsOverlayState extends State<StyleOptionsOverlay>
    with TickerProviderStateMixin {
  late final OverlayHelper colorOverlay;
  late final OverlayHelper sizeOverlay;
  OverlayHelper? currentOverlay;

  List<Attribute> selected = [];

  final GlobalKey sizeKey = GlobalKey();
  final GlobalKey colorKey = GlobalKey();

  @override
  void initState() {
    widget.textController.addListener(getSelected);

    colorOverlay = OverlayHelper(vsync: this);
    sizeOverlay = OverlayHelper(vsync: this);
    super.initState();
  }

  void getSelected() {
    selected = widget.textController
        .getSelectionStyle()
        .attributes
        .values
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomOverlay(
      controller: widget.overlayController,
      topPosition: widget.buttonPosition,
      animationController: widget.animationController,
      horizontalMargin: 20,
      borderRadius: 12,
      child: Stack(
        children: [
          ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            itemCount: StyleModel.styles.length,
            separatorBuilder: (context, index) => SizedBox(width: 20),
            itemBuilder: (context, index) {
              bool isSelected = selected.contains(
                StyleModel.styles[index].attribute,
              );
              return TriggerStyleButton(
                key: getKey(index),
                isSelected: isSelected,
                style: StyleModel.styles[index],
                onPressed: () {
                  if (index == 4) {
                    trigger(sizeOverlay, sizeKey.currentContext!);
                  } else if (index == 5) {
                    trigger(colorOverlay, colorKey.currentContext!);
                  } else {
                    isSelected = !isSelected;
                    setState(() {});
                    StyleModel.styles[index].triggerFormat(
                      isSelected,
                      widget.textController,
                    );
                  }
                },
              );
            },
          ),

          ValueListenableBuilder(
            valueListenable: sizeOverlay.buttonPosition,
            builder: (context, value, child) {
              return CustomOverlay(
                animationController: sizeOverlay.animationController,
                controller: sizeOverlay.overlayController,
                topPosition: value,
                horizontalMargin: 40,
                borderRadius: 40,
                child: FontSizeSlider(
                  controller: widget.textController,
                  onChange: (size) {
                    widget.textController.formatSelection(
                      Attribute.clone(Attribute.size, size.toString()),
                    );
                  },
                ),
              );
            },
          ),

          ValueListenableBuilder(
            valueListenable: colorOverlay.buttonPosition,
            builder: (context, value, child) {
              return FontColorListOverlay(
                colorList: [
                  ThemeHelper.textColor(context),
                  ...Colors.accents.map(
                    (e) => Color(int.parse(e.toHex().substring(1), radix: 16)),
                  ),
                  ...Colors.primaries.map(
                    (e) => Color(int.parse(e.toHex().substring(1), radix: 16)),
                  ),
                ],
                topPosition: value,
                colorController: colorOverlay.overlayController,
                colorAnimationController: colorOverlay.animationController,
                quillController: widget.textController,
                onSelect: (selected) {
                  widget.textController.formatSelection(
                    Attribute.clone(Attribute.color, selected.toHex()),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  GlobalKey? getKey(int index) {
    return index == 4
        ? sizeKey
        : index == 5
        ? colorKey
        : null;
  }

  void trigger(OverlayHelper overlay, BuildContext context) async {
    currentOverlay = overlay;

    if (currentOverlay == sizeOverlay && colorOverlay.isShowing()) {
      await colorOverlay.triggerOverlay(context);
    } else if (currentOverlay == colorOverlay && sizeOverlay.isShowing()) {
      await sizeOverlay.triggerOverlay(context);
    }
    // ignore: use_build_context_synchronously
    await overlay.triggerOverlay(context);
  }

  @override
  void dispose() {
    widget.textController.removeListener(getSelected);
    widget.animationController.dispose();
    super.dispose();
  }
}
