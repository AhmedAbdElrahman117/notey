import 'package:flutter/material.dart';
import 'package:notey/Core/components/custom_expansion_tile.dart';
import 'package:notey/Features/Note/Widgets/note_image_box.dart';
import 'package:notey/generated/l10n.dart';

class NoteImagesExpansionTile extends StatelessWidget {
  const NoteImagesExpansionTile({
    super.key,
    required this.picked,
  });

  final List<String> picked;

  @override
  Widget build(BuildContext context) {
    return picked.isNotEmpty
        ? CustomExpansionTile(
            title: S.of(context).images,
            leadingIcon: Icons.image,
            initiallyExpanded: true,
            children: [
              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: picked.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: NoteImageBox(
                        imagePath: picked[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        : SizedBox.shrink();
  }
}
