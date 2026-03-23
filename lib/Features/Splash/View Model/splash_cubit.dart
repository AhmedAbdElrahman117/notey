import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:notey/Core/supabase_auth.dart';
import 'package:notey/Features/Splash/Model/splash_state.dart';

class SplashCubit extends HydratedCubit<SplashState> {
  SplashCubit()
    : super(
        SplashState(
          showOnBoarding: true,
          isLoggedIn: false,
          skipLogin: false,
        ),
      );

  void setShowOnBoarding(bool value) {
    emit(state.copyWith(showOnBoarding: value));
  }

  void setIsLoggedIn(bool value) {
    emit(
      state.copyWith(
        isLoggedIn: SupabaseAuth().isLoggedIn() != null,
      ),
    );
  }

  void setSkipLogin(bool value) {
    emit(state.copyWith(skipLogin: value));
  }

  @override
  SplashState? fromJson(Map<String, dynamic> json) {
    return SplashState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(SplashState state) {
    return state.toMap();
  }
}
