import 'package:flutter/material.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/Features/Note/Widgets/preview_box.dart';
import 'package:provider/provider.dart';

class BackgroundThemes extends StatefulWidget {
  const BackgroundThemes({
    super.key,
    this.onImageChanged,
    required this.currentContext,
  });

  final void Function(String image)? onImageChanged;
  final BuildContext currentContext;

  @override
  State<BackgroundThemes> createState() => _BackgroundThemesState();
}

class _BackgroundThemesState extends State<BackgroundThemes> {
  final List<String> images = [
    Assets.backgroundsAlternatingArrowhead,
    Assets.backgroundsBullseyeGradient,
    Assets.backgroundsEndlessConstellation,
    Assets.backgroundsFlatMountains,
    Assets.backgroundsLiquidCheese,
    Assets.backgroundsPageTurner,
    Assets.backgroundsRainbowVortex,
    Assets.backgroundsRosePetals,
    Assets.backgroundsSlantedGradient,
    Assets.backgroundsSunTornado,
  ];
  String? current;

  @override
  void initState() {
    current =
        widget.currentContext
            .read<NoteProvider>()
            .currentNote
            .imageBackground ??
        '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: images.length,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return PreviewBox(
          image: images[index],
          onTap: () {
            widget.onImageChanged?.call(images[index]);
            setState(() {
              current = images[index];
            });
          },
          isSelected: current == images[index],
        );
      },
    );
  }
}
