import 'package:flutter/material.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Settings/Widgets/logged_in_user.dart';
import 'package:notey/Features/Settings/Widgets/no_logged_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:notey/generated/l10n.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: ThemeHelper.shadowColor(context),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      color: ThemeHelper.noteColor(context),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
        child: user != null
            ? LoggedInUser(
                email: user!.email ?? S.of(context).notAvailable,
                name:
                    user!.userMetadata?['userName'] ??
                    S.of(context).notAvailable,
              )
            : NoLoggedUser(),
      ),
    );
  }
}


// margin: EdgeInsets.symmetric(vertical: 20),
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 28),
//       decoration: BoxDecoration(
//         color: ThemeHelper.noteColor(context),
//         borderRadius: BorderRadius.circular(16),
//       ),