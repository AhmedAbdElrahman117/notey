import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:notey/Core/api_keys.dart';
import 'package:notey/Core/app_database.dart';
import 'package:notey/Core/local_preferences.dart';
import 'package:notey/Core/theme_cubit.dart';
import 'package:notey/Features/Note/Data/sync_service.dart';
import 'package:notey/Features/Note/Service/images_service.dart';
import 'package:notey/Features/Splash/View%20Model/splash_cubit.dart';
import 'package:notey/Features/Splash/splash_view.dart';
import 'package:notey/generated/l10n.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:toastification/toastification.dart';
import 'package:workmanager/workmanager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initPreferences();
  await initSupabase();
  await initEmailOTP();
  await AppDatabase.init();
  await ImagesHelper.createImagesDirectory();

  await Workmanager().initialize(callbackDispatcher);

  var dir = await getApplicationDocumentsDirectory();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(dir.path),
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => SplashCubit()),
      ],
      child: Notey(),
    ),
  );
}

class Notey extends StatelessWidget {
  const Notey({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.light, useMaterial3: true),
        darkTheme: ThemeData(brightness: Brightness.dark, useMaterial3: true),
        themeMode: context.watch<ThemeCubit>().state.themeMode,
        debugShowCheckedModeBanner: false,
        locale: context.watch<ThemeCubit>().state.locale,
        localizationsDelegates: const [
          FlutterQuillLocalizations.delegate,
          S.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: SplashView(),
      ),
    );
  }
}

Future<void> initEmailOTP() async {
  await EmailOTP.config(
    appEmail: 'Notey@gmail.com',
    appName: 'Notey',
    emailTheme: EmailTheme.v5,
    otpLength: 4,
    otpType: OTPType.numeric,
    expiry: 9_0_0_0_0_0,
  );
}

Future<void> initSupabase() async {
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );
}

Future<void> initPreferences() async {
  LocalPreferences.init(await SharedPreferences.getInstance());
}

@pragma('vm:entry-point')
void callbackDispatcher() async {
  Workmanager().executeTask(
    (task, inputData) async {
      try {
        WidgetsFlutterBinding.ensureInitialized();
        await initPreferences();
        await initSupabase();
        await AppDatabase.init();

        SyncService syncService = SyncService();

        bool value = await syncService.sync(task);
        return Future.value(value);
      } catch (e) {
        return Future.value(false);
      }
    },
  );
}
