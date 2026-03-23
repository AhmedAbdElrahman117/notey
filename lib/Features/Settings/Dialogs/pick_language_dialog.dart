import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Core/components/custom_dialog.dart';
import 'package:notey/Core/theme_cubit.dart';
import 'package:notey/Features/Settings/Models/language_model.dart';
import 'package:notey/Features/Settings/Widgets/language_option.dart';
import 'package:notey/generated/l10n.dart';

class PickLanguageDialog extends StatefulWidget {
  const PickLanguageDialog({super.key});

  @override
  State<PickLanguageDialog> createState() => _PickLanguageDialogState();
}

class _PickLanguageDialogState extends State<PickLanguageDialog> {
  List<LanguageOption> _buildLangList(BuildContext context) {
    return [
      LanguageOption(
        name: S.of(context).langEnglish,
        code: 'en',
        image: Assets.flagsUS,
        languageFontFamily: 'Inter',
      ),
      LanguageOption(
        name: S.of(context).langArabic,
        code: 'ar',
        image: Assets.flagsEgypt,
        languageFontFamily: 'Cairo',
      ),
      LanguageOption(
        name: S.of(context).langFrench,
        code: 'fr',
        image: Assets.flagsFrance,
        languageFontFamily: 'Inter',
      ),
      LanguageOption(
        name: S.of(context).langGerman,
        code: 'de',
        image: Assets.flagsGermany,
        languageFontFamily: 'Inter',
      ),
      LanguageOption(
        name: S.of(context).langSpanish,
        code: 'es',
        image: Assets.flagsSpain,
        languageFontFamily: 'Inter',
      ),
      LanguageOption(
        name: S.of(context).langItalian,
        code: 'it',
        image: Assets.flagsItalian,
        languageFontFamily: 'Inter',
      ),
      LanguageOption(
        name: S.of(context).langJapanese,
        code: 'ja',
        image: Assets.flagsJapan,
        languageFontFamily: 'NotoSansJP',
      ),
      LanguageOption(
        name: S.of(context).langChinese,
        code: 'zh',
        image: Assets.flagsChina,
        languageFontFamily: 'NotoSansSC',
      ),
      LanguageOption(
        name: S.of(context).langTurkish,
        code: 'tr',
        image: Assets.flagsTurkey,
        languageFontFamily: 'Inter',
      ),
      LanguageOption(
        name: S.of(context).langKorean,
        code: 'ko',
        image: Assets.flagsSouthKorea,
        languageFontFamily: 'NotoSansKR',
      ),
      LanguageOption(
        name: S.of(context).langRussian,
        code: 'ru',
        image: Assets.flagsRussia,
        languageFontFamily: 'Inter',
      ),
      LanguageOption(
        name: S.of(context).langIndian,
        code: 'hi',
        image: Assets.flagsIndia,
        languageFontFamily: 'Hind',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      title: S.of(context).pickLanguage,
      description: S.of(context).choosePreferredLanguage,
      buttonType: ButtonType.confirm,
      onConfirm: () {
        Navigator.of(context).pop();
      },
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.65,
        child: RadioGroup(
          groupValue:
              '${context.watch<ThemeCubit>().state.locale.languageCode} ${context.watch<ThemeCubit>().state.fontFamily}',
          onChanged: (value) {
            var splitValue = value?.split(' ');

            var languageCode = splitValue?.first ?? 'en';
            var fontFamily = splitValue?.last ?? 'Inter';

            context.read<ThemeCubit>().toggleLocale(
              localeCode: languageCode,
              fontFamily: fontFamily,
            );
          },
          child: SingleChildScrollView(
            child: Column(
              spacing: 12,
              children: _buildLangList(context).indexed
                  .map(
                    (e) => SwitchOption<String>(
                      value: '${e.$2.code} ${e.$2.languageFontFamily}',
                      title: e.$2.name,
                      flag: e.$2.image,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
