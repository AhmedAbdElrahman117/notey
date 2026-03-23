// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file: strict_top_level_inference,unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  static String m0(seconds) => "${seconds}秒后可用";

  static String m1(error) => "生物识别认证失败：${error}";

  static String m2(error) => "内部错误：无法创建图片目录：${error}";

  static String m3(dbName) => "您在此设备上已保存了${dbName}。您想如何处理导入文件中的数据？";

  static String m4(dbName) => "检测到${dbName}冲突";

  static String m5(count) =>
      "${Intl.plural(count, one: '1天前', other: '${count}天前')}";

  static String m6(result) => "数据库已关闭：${result}";

  static String m7(result) => "数据库存在重复列：${result}";

  static String m8(result) => "数据库异常：${result}";

  static String m9(result) => "数据库表不存在：${result}";

  static String m10(result) => "数据库打开失败：${result}";

  static String m11(result) => "SQL查询语法错误：${result}";

  static String m12(result) => "唯一约束错误：${result}";

  static String m13(message) => "目录错误：${message}";

  static String m14(message) => "文件系统错误：${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: '1小时前', other: '${count}小时前')}";

  static String m16(message) => "内部错误：${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: '1分钟前', other: '${count}分钟前')}";

  static String m18(count) =>
      "${Intl.plural(count, one: '1个月前', other: '${count}个月前')}";

  static String m19(message) => "平台错误：${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: '1秒前', other: '${count}秒前')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("关于 Notey"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "账号创建成功",
    ),
    "add": MessageLookupByLibrary.simpleMessage("添加"),
    "addCategory": MessageLookupByLibrary.simpleMessage("添加分类"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage("添加新分类"),
    "addToFavorites": MessageLookupByLibrary.simpleMessage("添加到收藏夹"),
    "all": MessageLookupByLibrary.simpleMessage("全部"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. 保留所有权利。",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "使用指纹、面容、图案或PIN保护应用。",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("升序"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage("您的登录会话无效。请重新登录。"),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "无法连接到Google。请重试。",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Google登录时出错。请重试。",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "验证失败。请重新完成安全检查。",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage("出错了。请重试。"),
    "authEmailExists": MessageLookupByLibrary.simpleMessage("此邮箱已被注册。请尝试登录。"),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage("这看起来不是有效的邮箱地址。"),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "不允许使用此邮箱注册。请使用其他邮箱。",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "请在登录前确认您的邮箱地址。请检查您的收件箱。",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage("身份验证失败。请重试。"),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "此Google账号已关联到其他用户。",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "邮箱或密码错误。请重试。",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "此账号无法手动关联。请使用主要方式登录。",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "不支持此登录方式。",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "尝试次数过多。请检查您的收件箱或稍后再试。",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "登录尝试次数过多。请稍等片刻后再试。",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "短信尝试次数过多。请等待几分钟后再试。",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage("此手机号已被注册。"),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "此注册方式不可用。请选择其他方式。",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "请在登录前验证您的Google邮箱。",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "请重新登录以继续。",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "您的会话已过期。请重新登录。",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "您的会话已过期。请重新登录。",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "未找到您的登录会话。请重新登录。",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "注册功能当前已禁用。请联系支持。",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage("验证身份以更改应用锁设置"),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "创建账号时出错。请重试。",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "此邮箱或手机号已存在账号。请登录。",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "您的账号已被封禁。请联系支持寻求帮助。",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage("未找到使用这些信息的账号。"),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "您输入的某些信息无效。请检查并重试。",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "您的密码太弱。请使用包含字母、数字和符号的更强密码。",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("背景"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage("生物识别认证错误"),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage("请进行身份验证以打开应用"),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "失败次数过多。生物识别已暂时锁定。请稍后再试。",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "此设备不支持生物识别认证",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "此设备不支持生物识别认证。",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "未设置生物识别。请在设备设置中注册指纹或面容ID。",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage("此操作系统不支持生物识别认证。"),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "未设置设备密码。请在设备设置中配置安全PIN、图案或密码。",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "失败次数过多。生物识别已禁用。请使用您的PIN/密码解锁以重置。",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "生物识别认证因未知错误而失败。",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("粗体"),
    "bulletList": MessageLookupByLibrary.simpleMessage("项目符号列表"),
    "cancel": MessageLookupByLibrary.simpleMessage("取消"),
    "cancelImport": MessageLookupByLibrary.simpleMessage("取消导入"),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("分类"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage("您可以在这里管理您的分类。"),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("分类"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage("分类已删除"),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage("分类名称不能为空"),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage("分类名称"),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage("分类已更新"),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage("更改分类名称"),
    "changePassword": MessageLookupByLibrary.simpleMessage("修改密码"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "修改您的账号密码以包含以下要求",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\n请检查您的收件箱和垃圾邮件文件夹。",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("清单"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage("选择您的首选语言"),
    "codeBlock": MessageLookupByLibrary.simpleMessage("代码块"),
    "color": MessageLookupByLibrary.simpleMessage("颜色"),
    "confirm": MessageLookupByLibrary.simpleMessage("确认"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("确认密码"),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage("确认您的密码"),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage("至少6个字符"),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage("至少2个数字"),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage("至少1个特殊字符"),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage("至少1个大写字母"),
    "createAccount": MessageLookupByLibrary.simpleMessage("创建账号"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "创建新分类以组织您的笔记。",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("创建密码"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "为了增强笔记的安全性，请创建一个密码。",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "注意：您必须记住此密码，因为一旦丢失将无法恢复。",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("深色模式"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("删除"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("删除分类"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "您确定要删除此分类吗？此操作无法撤销。",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("删除笔记"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "您确定要删除这条笔记吗？",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("降序"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage("没有收到验证码？"),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage("禁用应用锁"),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage("禁用深色模式"),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage("还没有账号？"),
    "edit": MessageLookupByLibrary.simpleMessage("编辑"),
    "editCategory": MessageLookupByLibrary.simpleMessage("编辑分类"),
    "email": MessageLookupByLibrary.simpleMessage("邮箱"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("邮箱必填！"),
    "enableAppLock": MessageLookupByLibrary.simpleMessage("启用应用锁"),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage("启用深色模式"),
    "enterOtp": MessageLookupByLibrary.simpleMessage("请输入验证码"),
    "enterPassword": MessageLookupByLibrary.simpleMessage("输入密码"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "请输入您的密码以访问此文件。",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage("输入您的邮箱"),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage("输入您的密码"),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage("输入您的用户名"),
    "error": MessageLookupByLibrary.simpleMessage("错误"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("导出笔记"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage("导出成功！"),
    "extractAs": MessageLookupByLibrary.simpleMessage("导出为"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "重置密码失败。请重试。",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage("发送验证码失败，请稍后再试！"),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage("收藏模式已开启"),
    "fileException": MessageLookupByLibrary.simpleMessage("发生文件异常。"),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage("筛选分类"),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "为您的分类选择筛选选项。",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("分类"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("创建时间"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage("创建时间"),
    "filterName": MessageLookupByLibrary.simpleMessage("名称"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("标题"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "请遵循密码要求",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("字体颜色"),
    "fontSize": MessageLookupByLibrary.simpleMessage("字体大小"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("忘记密码？"),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage("忘记密码？"),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage("服务器出错。请重试。"),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "服务器端点不存在。",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "发送到服务器的输入无效。",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "您没有执行此操作的权限。",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "您未登录。请进行身份验证。",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "服务器错误。请稍后再试。",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage("请求超时。请重试。"),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "请求过多。请放慢速度。",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("开始使用"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "登录已取消。如果您仍想继续，请重试。",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "应用的Google登录设置存在问题。请联系支持。",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "登录过程被中断。请重试。",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "Google登录配置不正确。请稍后再试。",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "此设备当前无法使用Google登录。",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "登录时出错。请重试。",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "此Google账号与预期用户不匹配。请尝试使用其他账号。",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("访客用户"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("图片"),
    "images": MessageLookupByLibrary.simpleMessage("图片"),
    "importNotes": MessageLookupByLibrary.simpleMessage("导入笔记"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage("导入成功！"),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("邮箱格式无效"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("无效文件"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("验证码无效"),
    "italic": MessageLookupByLibrary.simpleMessage("斜体"),
    "langArabic": MessageLookupByLibrary.simpleMessage("阿拉伯语"),
    "langChinese": MessageLookupByLibrary.simpleMessage("中文"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("英语"),
    "langFrench": MessageLookupByLibrary.simpleMessage("法语"),
    "langGerman": MessageLookupByLibrary.simpleMessage("德语"),
    "langIndian": MessageLookupByLibrary.simpleMessage("印地语"),
    "langItalian": MessageLookupByLibrary.simpleMessage("意大利语"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("日语"),
    "langKorean": MessageLookupByLibrary.simpleMessage("韩语"),
    "langRussian": MessageLookupByLibrary.simpleMessage("俄语"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("西班牙语"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("土耳其语"),
    "language": MessageLookupByLibrary.simpleMessage("语言"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage("选择您的首选语言"),
    "login": MessageLookupByLibrary.simpleMessage("登录"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "登录以安全地同步和备份您的笔记到所有设备",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage("登录以在所有设备间同步您的笔记"),
    "logout": MessageLookupByLibrary.simpleMessage("退出登录"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage("您确定要退出登录吗？"),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage("与现有数据合并"),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("更多"),
    "networkError": MessageLookupByLibrary.simpleMessage("请检查您的网络连接并重试。"),
    "next": MessageLookupByLibrary.simpleMessage("下一步"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "添加分类以更好地组织您的笔记。",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage("还没有添加分类"),
    "noContent": MessageLookupByLibrary.simpleMessage("无内容"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage("没有收藏的笔记"),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "您还没有添加任何笔记到收藏夹。",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage("未选择文件。"),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("还没有笔记"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "点击 + 按钮创建您的第一条笔记。",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "未选择输出目录",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage("未提供密码。"),
    "noResultsFound": MessageLookupByLibrary.simpleMessage("未找到结果"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("不可用"),
    "notSynced": MessageLookupByLibrary.simpleMessage("未同步"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("笔记已添加"),
    "noteContent": MessageLookupByLibrary.simpleMessage("笔记内容"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("笔记标题"),
    "notes": MessageLookupByLibrary.simpleMessage("笔记"),
    "numberedList": MessageLookupByLibrary.simpleMessage("编号列表"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "离线捕捉和整理您的想法，并在设备间同步",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "添加图片、语音备忘录，并将笔记导出为PDF、Word或文本格式，实现最大灵活性",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "所有笔记都通过端到端加密保护——只有您能阅读它们",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage("您的笔记，始终相伴"),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage("不仅仅是文字"),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage("您的隐私很重要"),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("或使用以下方式登录"),
    "otpSentTo": MessageLookupByLibrary.simpleMessage("我们已向以下地址发送验证码 "),
    "password": MessageLookupByLibrary.simpleMessage("密码"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "密码修改成功",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "密码确认必填！",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage("密码至少需要6个字符"),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage("密码不能包含空格"),
    "passwordRequired": MessageLookupByLibrary.simpleMessage("密码必填！"),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage("密码不匹配"),
    "pathException": MessageLookupByLibrary.simpleMessage("发生路径异常。"),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("PDF文件 (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("选择语言"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("请稍候...."),
    "previous": MessageLookupByLibrary.simpleMessage("上一步"),
    "print": MessageLookupByLibrary.simpleMessage("打印"),
    "remove": MessageLookupByLibrary.simpleMessage("移除"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage("从收藏夹移除"),
    "removeImage": MessageLookupByLibrary.simpleMessage("移除图片"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "您确定要从笔记中移除这张图片吗？",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage("替换现有数据"),
    "resendCode": MessageLookupByLibrary.simpleMessage("重新发送验证码"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "在下方输入您的邮箱地址以接收重置密码的验证码",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "笔记标题或内容....",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage("选择分类"),
    "sendOtp": MessageLookupByLibrary.simpleMessage("发送验证码"),
    "settings": MessageLookupByLibrary.simpleMessage("设置"),
    "share": MessageLookupByLibrary.simpleMessage("分享"),
    "shareError": MessageLookupByLibrary.simpleMessage("分享笔记时发生错误"),
    "shareFailed": MessageLookupByLibrary.simpleMessage("分享失败"),
    "signUp": MessageLookupByLibrary.simpleMessage("注册"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "注册以安全地同步和备份您的笔记",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("跳过"),
    "sortBy": MessageLookupByLibrary.simpleMessage("排序方式"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("删除线"),
    "style": MessageLookupByLibrary.simpleMessage("样式"),
    "subscript": MessageLookupByLibrary.simpleMessage("下标"),
    "success": MessageLookupByLibrary.simpleMessage("成功"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "某个值不符合数据库规则（检查约束）。",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "您尝试访问的列不存在。",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "此记录已存在。请使用不同的值。",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "数据库出错。请重试。",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "此值已存在。请使用不同的值（重复键）。",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "此记录已关联到其他记录，无法删除/更新（外键约束）。",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "数据库中不存在此函数。",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "您的某个输入过长。请缩短后重试。",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "发生内部数据库错误。请稍后再试。",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "日期或时间格式无效。请使用正确的格式。",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "输入类型无效。请检查您的数据。",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "无效请求。请检查您输入的信息。",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage("您无权访问此资源。"),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "您没有执行此操作的权限。",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "您未被授权。请先登录。",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage("未找到请求的资源。"),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "请求时间过长已被取消。请重试。",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "缺少必填字段。请填写所有必填信息。",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "行级安全性阻止了此请求。",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "数据库查询存在问题（语法错误）。",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "您尝试访问的表不存在。",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "数据库连接过多。请稍后再试。",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "意外的数据库错误。请稍后再试。",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("上标"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("同步笔记"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage("始终将笔记同步到云端"),
    "synced": MessageLookupByLibrary.simpleMessage("已同步"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("文本文件 (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("主题"),
    "timeoutError": MessageLookupByLibrary.simpleMessage("连接超时。请重试！"),
    "uncategorized": MessageLookupByLibrary.simpleMessage("未分类"),
    "underline": MessageLookupByLibrary.simpleMessage("下划线"),
    "unknownError": MessageLookupByLibrary.simpleMessage("发生未知异常。"),
    "untitled": MessageLookupByLibrary.simpleMessage("无标题"),
    "username": MessageLookupByLibrary.simpleMessage("用户名"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "用户名必须以字母开头且只能包含字母和数字",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage("请输入您的用户名"),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage("验证您的邮箱"),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "密码错误或数据损坏。",
    ),
  };
}
