import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    super.key,
    required this.favouriteView,
    this.onPressed,
  });

  final bool favouriteView;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        switchInCurve: Curves.easeOutBack,
        switchOutCurve: Curves.easeInCubic,
        transitionBuilder: (child, animation) {
          return ScaleTransition(
            scale: Tween<double>(begin: 0.2, end: 1).animate(animation),
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
        },
        child: favouriteView
            ? const Icon(
                Icons.favorite,
                key: ValueKey('fav'),
                color: Colors.red,
              )
            : const Icon(
                Icons.favorite,
                key: ValueKey('not_fav'),
              ),
      ),
    );
  }
}
