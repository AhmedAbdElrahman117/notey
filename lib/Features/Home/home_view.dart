import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/toast.dart';
import 'package:notey/Features/Home/Model/note_model.dart';
import 'package:notey/Features/Home/View%20Model/home_cubit.dart';
import 'package:notey/Features/Home/View%20Model/home_states.dart';
import 'package:notey/Features/Home/Widgets/home_bottom_bar.dart';
import 'package:notey/Features/Home/Widgets/empty_notes_view.dart';
import 'package:notey/Features/Home/Widgets/favourite_warning.dart';
import 'package:notey/Features/Home/Widgets/note.dart';
import 'package:notey/Features/Home/Widgets/notes_category_list.dart';
import 'package:notey/Features/Home/Widgets/search_button.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:notey/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Builder(
        builder: (context) {
          var notes = context.watch<HomeCubit>().favouriteData();
          bool favouriteView = context.watch<HomeCubit>().favouriteView;
          var categories = context.watch<HomeCubit>().categoriesList;

          return Scaffold(
            body: BlocConsumer<HomeCubit, HomeStates>(
              listener: (context, state) {
                if (state is HomeNotesErrorState) {
                  Toast.showFailed(message: state.message);
                }
              },
              builder: (context, state) {
                if (state is HomeNotesLoadingState) {
                  return ListView.builder(
                    itemCount: notes.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Skeletonizer(
                        enabled: true,
                        child: Note(
                          note: notes[index],
                          categories: context.read<HomeCubit>().categoriesList,
                        ),
                      ),
                    ),
                  );
                }
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomScrollView(
                      slivers: [
                        appBar(context, categories),
                        SliverToBoxAdapter(
                          child: NotesCategoryList(
                            categories: categories,
                            onCategorySelected: (selected) {
                              context.read<HomeCubit>().filter(selected);
                            },
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: FavouriteWarning(show: favouriteView),
                        ),
                        notes.isNotEmpty
                            ? notesList(
                                notes: notes,
                                isLoading: false,
                              )
                            : SliverFillRemaining(
                                hasScrollBody: false,
                                child: emptyState(context, favouriteView),
                              ),
                      ],
                    ),
                    HomeBottomBar(favouriteView: favouriteView),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget emptyState(BuildContext context, bool favouriteView) {
    return EmptyNotesView(
      icon: favouriteView ? Icons.favorite : Icons.note_alt_outlined,
      iconColor: favouriteView ? Colors.red : AppColors.logo,
      title: favouriteView
          ? S.of(context).noFavouriteNotes
          : S.of(context).noNotesYet,
      description: favouriteView
          ? S.of(context).noFavouriteNotesDescription
          : S.of(context).noNotesYetDescription,
    );
  }

  SliverSkeletonizer notesList({
    required List<NoteModel> notes,
    required bool isLoading,
  }) {
    return SliverSkeletonizer(
      enabled: isLoading,
      child: SliverPadding(
        padding: const EdgeInsets.only(bottom: 128),
        sliver: SliverList.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Note(
              note: notes[index],
              categories: context.read<HomeCubit>().categoriesList,
            ),
          ),
        ),
      ),
    );
  }

  SliverAppBar appBar(BuildContext context, var categories) {
    return SliverAppBar(
      title: Text(
        S.of(context).appTitle,
        style: AppText.semiBold24(context, color: AppColors.logo),
      ),
      centerTitle: true,
      actions: [
        SearchButton(categories: categories),
      ],
    );
  }
}
