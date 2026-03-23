import 'package:flutter/material.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Home/Widgets/category_chip.dart';
import 'package:notey/generated/l10n.dart';

class NotesCategoryList extends StatefulWidget {
  const NotesCategoryList({
    super.key,
    this.onCategorySelected,
    required this.categories,
  });

  final void Function(String selected)? onCategorySelected;
  final List<CategoryModel> categories;

  @override
  State<NotesCategoryList> createState() => _NotesCategoryListState();
}

class _NotesCategoryListState extends State<NotesCategoryList> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    final categories = [
      CategoryModel(name: S.of(context).all),
      CategoryModel(name: S.of(context).uncategorized),
      ...widget.categories,
    ];
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 12,
        ),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: CategoryChip(
            title: categories[index].name,
            isSelected: isSelected == index,
            onSelected: (value) {
              setState(() {
                isSelected = index;
              });

              widget.onCategorySelected?.call(categories[index].name);
            },
          ),
        ),
      ),
    );
  }
}
