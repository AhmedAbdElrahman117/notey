import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Features/Home/View%20Model/home_cubit.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/Features/Note/note_view.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final provider = NoteProvider(
          categories: context.read<HomeCubit>().categoriesList,
        );
        AppTransitions().pushTo(
          context,
          type: AppTransitionType.fadeSlideDown,
          to: NoteView(provider: provider),
        );
      },
      shape: CircleBorder(),
      backgroundColor: AppColors.logo,
      elevation: 8,
      child: Icon(
        Icons.add,
        size: 28,
        color: Colors.white,
      ),
    );
  }
}
