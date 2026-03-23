import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Features/Home/View%20Model/home_cubit.dart';
import 'package:notey/Features/Settings/Widgets/language_option.dart';
import 'package:provider/provider.dart';
import 'package:notey/generated/l10n.dart';

class NoteFilterSheet extends StatefulWidget {
  const NoteFilterSheet({super.key, required this.parentContext});

  final BuildContext parentContext;

  @override
  State<NoteFilterSheet> createState() => _NoteFilterSheetState();
}

class _NoteFilterSheetState extends State<NoteFilterSheet> {
  late Filter selectedFilter;
  late Order selectedOrder;

  @override
  void initState() {
    selectedFilter = Filter.values.byName(
      widget.parentContext.read<HomeCubit>().filters,
    );

    selectedOrder = Order.values.byName(
      widget.parentContext.read<HomeCubit>().asc ? 'asc' : 'desc',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 44,
      ),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).sortBy,
            style: AppText.semiBold20(context),
          ),
          RadioGroup<Filter>(
            groupValue: selectedFilter,
            onChanged: (value) {
              setState(() {
                selectedFilter = value!;
              });
              widget.parentContext.read<HomeCubit>().orderNotes(
                selectedFilter,
                selectedOrder,
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Filter.values
                  .map(
                    (e) => SwitchOption(
                      title: _getFilterName(context, e),
                      value: e,
                    ),
                  )
                  .toList(),
            ),
          ),
          Divider(),
          RadioGroup<Order>(
            groupValue: selectedOrder,
            onChanged: (value) async {
              setState(() {
                selectedOrder = value!;
              });
              widget.parentContext.read<HomeCubit>().orderNotes(
                selectedFilter,
                selectedOrder,
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Order.values
                  .map(
                    (e) => SwitchOption(
                      title: e == Order.asc
                          ? S.of(context).ascending
                          : S.of(context).descending,
                      value: e,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  String _getFilterName(BuildContext context, Filter filter) {
    switch (filter) {
      case Filter.title:
        return S.of(context).filterTitle;
      case Filter.category:
        return S.of(context).filterCategory;
      case Filter.createdAt:
        return S.of(context).filterCreatedAt;
    }
  }
}

enum Filter {
  title("title"),
  category("category"),
  createdAt("createdAt");

  final String value;
  const Filter(this.value);
}

enum Order {
  asc("asc"),
  desc("desc");

  final String value;
  const Order(this.value);
}
