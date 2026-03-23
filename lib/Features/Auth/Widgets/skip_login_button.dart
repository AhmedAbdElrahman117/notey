import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Features/Home/home_view.dart';
import 'package:notey/Features/Splash/View%20Model/splash_cubit.dart';
import 'package:notey/generated/l10n.dart';

class SkipLoginButton extends StatelessWidget {
  const SkipLoginButton({super.key, this.isVisible = true});

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: TextButton(
        onPressed: () {
          context.read<SplashCubit>().setSkipLogin(true);
          AppTransitions().pushTo(
            context,
            replace: true,
            to: HomeView(),
          );
        },

        style: TextButton.styleFrom(
          foregroundColor: AppColors.logo,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          textStyle: AppText.semiBold16(context),
        ),
        child: Text(S.of(context).skip),
      ),
    );
  }
}


//OTP View
// void listener(BuildContext context, AuthStates state) async {
//     if (state is SuccessState) {
//       Toast.showSuccess(message: state.successMessage);
//     } else if (state is ErrorState) {
//       widget.onError != null
//           ? widget.onError!()
//           : Toast.showFailed(message: state.errorMessage);
//     } else if (state is FinishAuthState) {
//       Toast.showSuccess(message: state.successMessage);
//       await Navigator.pushAndRemoveUntil(
//         context,
//         Transitions.fromBottom(to: LoginView()),
//         (Route<dynamic> route) => false, // removes ALL previous routes
//       );
//     }
//   }



//Forgot Password View
// void listener(BuildContext context, AuthStates state) async {
//     if (state is SuccessState) {
//       Navigator.of(context).push(
//         Transitions.fromBottom(
//           to: OtpVerificationView(
//             authCubit: widget.authCubit,
//             onVerified: () {
//               Navigator.of(context).push(
//                 Transitions.fromBottom(
//                   to: ChangePasswordView(cubit: widget.authCubit),
//                 ),
//               );
//             },
//           ),
//         ),
//       );
//     } else if (state is ErrorState) {
//       Toast.showFailed(message: state.errorMessage);
//     } else if (state is FinishAuthState) {
//       Toast.showSuccess(message: state.successMessage);
//       await Navigator.pushAndRemoveUntil(
//         context,
//         Transitions.fromBottom(to: LoginView()),
//         (Route<dynamic> route) => false, // removes ALL previous routes
//       );
//     }
//   }
