class SplashState {
  final bool showOnBoarding;
  final bool isLoggedIn;
  final bool skipLogin;

  SplashState({
    required this.showOnBoarding,
    required this.isLoggedIn,
    required this.skipLogin,
  });

  SplashState copyWith({
    bool? showOnBoarding,
    bool? isLoggedIn,
    bool? skipLogin,
  }) {
    return SplashState(
      showOnBoarding: showOnBoarding ?? this.showOnBoarding,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      skipLogin: skipLogin ?? this.skipLogin,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'showOnBoarding': showOnBoarding,
      'isLoggedIn': isLoggedIn,
      'skipLogin': skipLogin,
    };
  }

  factory SplashState.fromMap(Map<String, dynamic> map) {
    return SplashState(
      showOnBoarding: map['showOnBoarding'] ?? true,
      isLoggedIn: map['isLoggedIn'] ?? false,
      skipLogin: map['skipLogin'] ?? false,
    );
  }
}
