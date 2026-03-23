// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(seconds) => "Disponible en ${seconds}s";

  static String m1(error) => "Autenticación biométrica fallida: ${error}";

  static String m2(error) =>
      "Error interno: No se puede crear el directorio de imágenes: ${error}";

  static String m3(dbName) =>
      "Ya tiene ${dbName} almacenadas en este dispositivo. ¿Cómo desea manejar los datos del archivo importado?";

  static String m4(dbName) => "Conflicto de ${dbName} detectado";

  static String m5(count) =>
      "${Intl.plural(count, one: 'Hace 1 día', other: 'Hace ${count} días')}";

  static String m6(result) => "La base de datos está cerrada: ${result}";

  static String m7(result) =>
      "La base de datos tiene una columna duplicada: ${result}";

  static String m8(result) => "Excepción de la base de datos: ${result}";

  static String m9(result) =>
      "La tabla de la base de datos no existe: ${result}";

  static String m10(result) => "No se pudo abrir la base de datos: ${result}";

  static String m11(result) => "Error de sintaxis SQL: ${result}";

  static String m12(result) => "Error de restricción única: ${result}";

  static String m13(message) => "Error de directorio: ${message}";

  static String m14(message) => "Error del sistema de archivos: ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: 'Hace 1 hora', other: 'Hace ${count} horas')}";

  static String m16(message) => "Error interno: ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: 'Hace 1 minuto', other: 'Hace ${count} minutos')}";

  static String m18(count) =>
      "${Intl.plural(count, one: 'Hace 1 mes', other: 'Hace ${count} meses')}";

  static String m19(message) => "Error de plataforma: ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: 'Hace 1 segundo', other: 'Hace ${count} segundos')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("Acerca de Notey"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Cuenta creada exitosamente",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Agregar"),
    "addCategory": MessageLookupByLibrary.simpleMessage("Agregar categoría"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage(
      "Agregar nueva categoría",
    ),
    "addToFavorites": MessageLookupByLibrary.simpleMessage(
      "Agregar a favoritos",
    ),
    "all": MessageLookupByLibrary.simpleMessage("Todas"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. Todos los derechos reservados.",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "Use huella digital, rostro, patrón o PIN para proteger la app.",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("Ascendente"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "Su sesión de inicio es inválida. Por favor inicie sesión de nuevo.",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "No pudimos conectar con Google. Por favor intente de nuevo.",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Algo salió mal durante el inicio de sesión con Google. Por favor intente de nuevo.",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "La verificación falló. Por favor complete la verificación de seguridad nuevamente.",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error. Por favor intente de nuevo.",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "Este correo ya está registrado. Intente iniciar sesión.",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "Eso no parece una dirección de correo electrónico válida.",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Este correo no está autorizado para registrarse. Por favor use otro.",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "Por favor confirme su correo antes de iniciar sesión. Revise su bandeja de entrada.",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "Autenticación fallida. Intente de nuevo.",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Esta cuenta de Google ya está vinculada a otro usuario.",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Correo o contraseña incorrectos. Por favor intente de nuevo.",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "Esta cuenta no puede ser vinculada manualmente. Por favor inicie sesión con su método principal.",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "Este método de inicio de sesión no está soportado.",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "Demasiados intentos. Por favor revise su bandeja de entrada o intente más tarde.",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "Demasiados intentos de inicio de sesión. Por favor espere un momento antes de intentar de nuevo.",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "Demasiados intentos de SMS. Por favor espere unos minutos e intente de nuevo.",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "Este número de teléfono ya está registrado.",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "Este método de registro no está disponible. Por favor elija otro.",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "Por favor verifique su correo de Google antes de iniciar sesión.",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "Por favor inicie sesión de nuevo para continuar.",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "Su sesión ha expirado. Por favor inicie sesión de nuevo.",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "Su sesión ha expirado. Por favor inicie sesión de nuevo.",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "No pudimos encontrar su sesión de inicio. Por favor inicie sesión de nuevo.",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "Los registros están deshabilitados actualmente. Por favor contacte al soporte.",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "Autentíquese para cambiar la configuración de bloqueo de la app",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error al crear su cuenta. Por favor intente de nuevo.",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Ya existe una cuenta con este correo o teléfono. Por favor inicie sesión.",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "Su cuenta ha sido suspendida. Por favor contacte al soporte para obtener ayuda.",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "No pudimos encontrar una cuenta con esos detalles.",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "Algunos de los detalles ingresados son inválidos. Por favor revise e intente de nuevo.",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "Su contraseña es muy débil. Use una más fuerte con letras, números y símbolos.",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("Fondo"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage(
      "Error de autenticación biométrica",
    ),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "Por favor autentíquese para abrir la app",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "Demasiados intentos fallidos. La biometría está temporalmente bloqueada. Por favor intente más tarde.",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "La autenticación biométrica no está disponible en este dispositivo",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "La autenticación biométrica no está disponible en este dispositivo.",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "No hay biometría configurada. Por favor registre una huella digital o Face ID en la configuración de su dispositivo.",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "La autenticación biométrica no está soportada en este sistema operativo.",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "El código de acceso del dispositivo no está establecido. Por favor configure un PIN, patrón o contraseña de seguridad en la configuración de su dispositivo.",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "Demasiados intentos fallidos. La biometría está deshabilitada. Por favor desbloquee con su PIN/contraseña para restablecer.",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "La autenticación biométrica falló debido a un error desconocido.",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("Negrita"),
    "bulletList": MessageLookupByLibrary.simpleMessage("Lista con viñetas"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
    "cancelImport": MessageLookupByLibrary.simpleMessage(
      "Cancelar importación",
    ),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("Categorías"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Puede administrar sus categorías aquí.",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("Categorías"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage(
      "Categoría eliminada",
    ),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "El nombre de la categoría no puede estar vacío",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage(
      "Nombre de categoría",
    ),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage(
      "Categoría actualizada",
    ),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage(
      "Cambiar nombre de categoría",
    ),
    "changePassword": MessageLookupByLibrary.simpleMessage(
      "Cambiar contraseña",
    ),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Cambie la contraseña de su cuenta para incluir",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\nPor favor revise su bandeja de entrada y carpeta de spam.",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("Lista de verificación"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "Elija su idioma preferido",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("Bloque de código"),
    "color": MessageLookupByLibrary.simpleMessage("Color"),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirmar"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "Confirmar contraseña",
    ),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "Confirme su contraseña",
    ),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage(
      "Al menos 6 caracteres",
    ),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage(
      "Al menos 2 números",
    ),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "Al menos 1 carácter especial",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage(
      "Al menos 1 letra mayúscula",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Crear cuenta"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "Cree una nueva categoría para organizar sus notas.",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("Crear contraseña"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Para mejorar la seguridad de sus notas, por favor cree una contraseña.",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "Nota: Debe recordar esta contraseña ya que no puede recuperarse si la olvida.",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Modo oscuro"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("Eliminar"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage(
      "Eliminar categoría",
    ),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "¿Está seguro de que desea eliminar esta categoría? Esta acción no se puede deshacer.",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("Eliminar nota"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "¿Está seguro de que desea eliminar esta nota?",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Descendente"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "¿No recibió el código?",
    ),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage(
      "Desactivar bloqueo de app",
    ),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Desactivar modo oscuro",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "¿No tiene una cuenta?",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("Editar"),
    "editCategory": MessageLookupByLibrary.simpleMessage("Editar categoría"),
    "email": MessageLookupByLibrary.simpleMessage("Correo electrónico"),
    "emailRequired": MessageLookupByLibrary.simpleMessage(
      "¡Correo electrónico requerido!",
    ),
    "enableAppLock": MessageLookupByLibrary.simpleMessage(
      "Activar bloqueo de app",
    ),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Activar modo oscuro",
    ),
    "enterOtp": MessageLookupByLibrary.simpleMessage(
      "Por favor ingrese el código OTP",
    ),
    "enterPassword": MessageLookupByLibrary.simpleMessage("Ingrese contraseña"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Por favor ingrese su contraseña para acceder a este archivo.",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage(
      "Ingrese su correo electrónico",
    ),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage(
      "Ingrese su contraseña",
    ),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage(
      "Ingrese su nombre de usuario",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("Exportar notas"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "¡Exportado exitosamente!",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("Exportar como"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "Error al restablecer la contraseña. Por favor intente de nuevo.",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "Error al enviar OTP. ¡Por favor intente más tarde!",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage(
      "Modo favoritos ACTIVADO",
    ),
    "fileException": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error de archivo.",
    ),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage(
      "Filtrar categorías",
    ),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Elija una opción de filtro para sus categorías.",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("Categoría"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("Creado el"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage("Creado el"),
    "filterName": MessageLookupByLibrary.simpleMessage("Nombre"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("Título"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "Por favor siga las restricciones de contraseña",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("Color de fuente"),
    "fontSize": MessageLookupByLibrary.simpleMessage("Tamaño de fuente"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage(
      "¿Olvidó su contraseña?",
    ),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "¿Olvidó su contraseña?",
    ),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error del servidor. Por favor intente de nuevo.",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "El endpoint del servidor no existe.",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "Entrada inválida enviada al servidor.",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "No tiene permiso para realizar esta acción.",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "No ha iniciado sesión. Por favor autentíquese.",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error del servidor. Intente más tarde.",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "La solicitud expiró. Por favor intente de nuevo.",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Demasiadas solicitudes. Por favor reduzca la velocidad.",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("Comenzar"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "El inicio de sesión fue cancelado. Por favor intente de nuevo si desea continuar.",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "Hay un problema con la configuración de inicio de sesión con Google de la app. Por favor contacte al soporte.",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "El proceso de inicio de sesión fue interrumpido. Por favor intente de nuevo.",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "El inicio de sesión con Google no está configurado correctamente. Por favor intente más tarde.",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "El inicio de sesión con Google no está disponible actualmente en este dispositivo.",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error durante el inicio de sesión. Por favor intente de nuevo.",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "Esta cuenta de Google no coincide con el usuario esperado. Intente con otra cuenta.",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("Usuario invitado"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("Imagen"),
    "images": MessageLookupByLibrary.simpleMessage("Imágenes"),
    "importNotes": MessageLookupByLibrary.simpleMessage("Importar notas"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "¡Importado exitosamente!",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage(
      "Correo electrónico inválido",
    ),
    "invalidFile": MessageLookupByLibrary.simpleMessage("Archivo inválido"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("Código OTP inválido"),
    "italic": MessageLookupByLibrary.simpleMessage("Cursiva"),
    "langArabic": MessageLookupByLibrary.simpleMessage("Árabe"),
    "langChinese": MessageLookupByLibrary.simpleMessage("Chino"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("Inglés"),
    "langFrench": MessageLookupByLibrary.simpleMessage("Francés"),
    "langGerman": MessageLookupByLibrary.simpleMessage("Alemán"),
    "langIndian": MessageLookupByLibrary.simpleMessage("Hindi"),
    "langItalian": MessageLookupByLibrary.simpleMessage("Italiano"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("Japonés"),
    "langKorean": MessageLookupByLibrary.simpleMessage("Coreano"),
    "langRussian": MessageLookupByLibrary.simpleMessage("Ruso"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("Español"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("Turco"),
    "language": MessageLookupByLibrary.simpleMessage("Idioma"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage(
      "Elija su idioma preferido",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Iniciar sesión"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "Inicie sesión para sincronizar y respaldar sus notas de forma segura en todos sus dispositivos",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "Inicie sesión para sincronizar sus notas en todos los dispositivos",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "¿Está seguro de que desea cerrar sesión?",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage(
      "Fusionar con datos existentes",
    ),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("Más"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "Por favor revise su conexión a internet e intente de nuevo.",
    ),
    "next": MessageLookupByLibrary.simpleMessage("Siguiente"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Agregue categorías para organizar mejor sus notas.",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage(
      "Aún no hay categorías agregadas",
    ),
    "noContent": MessageLookupByLibrary.simpleMessage("Sin contenido"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage("Sin favoritos"),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "Aún no ha agregado ninguna nota a favoritos.",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage(
      "No se seleccionó archivo.",
    ),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("Aún no hay notas"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "Toque el botón + para crear su primera nota.",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "No se seleccionó directorio de salida",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "No se proporcionó contraseña.",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage(
      "No se encontraron resultados",
    ),
    "notAvailable": MessageLookupByLibrary.simpleMessage("No disponible"),
    "notSynced": MessageLookupByLibrary.simpleMessage("No sincronizado"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("Nota agregada"),
    "noteContent": MessageLookupByLibrary.simpleMessage("Contenido de la nota"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("Título de la nota"),
    "notes": MessageLookupByLibrary.simpleMessage("Notas"),
    "numberedList": MessageLookupByLibrary.simpleMessage("Lista numerada"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "Capture y organice sus pensamientos sin conexión, sincronice en todos los dispositivos sin esfuerzo",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "Agregue imágenes, notas de voz y exporte notas a PDF, Word o texto para máxima flexibilidad",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "Todas las notas están protegidas con cifrado de extremo a extremo — solo usted puede leerlas",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "Sus notas, siempre con usted",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
      "Más que solo texto",
    ),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
      "Su privacidad importa",
    ),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("O inicie sesión con"),
    "otpSentTo": MessageLookupByLibrary.simpleMessage(
      "Hemos enviado un código de verificación a ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Contraseña"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Contraseña cambiada exitosamente",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "¡Confirmación de contraseña requerida!",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "La contraseña debe tener al menos 6 caracteres",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "La contraseña no debe contener espacios",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "¡Contraseña requerida!",
    ),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "Las contraseñas no coinciden",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error de ruta.",
    ),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("Archivo PDF (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("Elegir idioma"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("Por favor espere..."),
    "previous": MessageLookupByLibrary.simpleMessage("Anterior"),
    "print": MessageLookupByLibrary.simpleMessage("Imprimir"),
    "remove": MessageLookupByLibrary.simpleMessage("Quitar"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage(
      "Quitar de favoritos",
    ),
    "removeImage": MessageLookupByLibrary.simpleMessage("Quitar imagen"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "¿Está seguro de que desea quitar esta imagen de la nota?",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage(
      "Reemplazar datos existentes",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("Reenviar código"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Ingrese su correo electrónico abajo para recibir un código OTP para restablecer su contraseña",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "Título o contenido de la nota...",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage(
      "Seleccionar categoría",
    ),
    "sendOtp": MessageLookupByLibrary.simpleMessage("Enviar OTP"),
    "settings": MessageLookupByLibrary.simpleMessage("Configuración"),
    "share": MessageLookupByLibrary.simpleMessage("Compartir"),
    "shareError": MessageLookupByLibrary.simpleMessage(
      "Error al compartir la nota",
    ),
    "shareFailed": MessageLookupByLibrary.simpleMessage("Error al compartir"),
    "signUp": MessageLookupByLibrary.simpleMessage("Registrarse"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "Regístrese para sincronizar y respaldar sus notas de forma segura en cualquier lugar",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("Omitir"),
    "sortBy": MessageLookupByLibrary.simpleMessage("Ordenar por"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("Tachado"),
    "style": MessageLookupByLibrary.simpleMessage("Estilo"),
    "subscript": MessageLookupByLibrary.simpleMessage("Subíndice"),
    "success": MessageLookupByLibrary.simpleMessage("Éxito"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "Uno de los valores no cumple con las reglas de la base de datos (restricción de verificación).",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "La columna que intenta acceder no existe.",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "Este registro ya existe. Por favor use valores diferentes.",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error de la base de datos. Por favor intente de nuevo.",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "Este valor ya existe. Por favor use otro (clave duplicada).",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "Este registro está vinculado a otro y no puede ser eliminado/actualizado (violación de clave foránea).",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "Esta función no existe en la base de datos.",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "Una de sus entradas es muy larga. Por favor acórtela e intente de nuevo.",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error interno de la base de datos. Por favor intente más tarde.",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "Formato de fecha u hora inválido. Por favor use el formato correcto.",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "Tipo de entrada inválido. Por favor revise sus datos.",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "Solicitud inválida. Por favor revise la información ingresada.",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "No tiene acceso a este recurso.",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "No tiene permiso para realizar esta acción.",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "No está autorizado. Por favor inicie sesión primero.",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "El recurso solicitado no fue encontrado.",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "La solicitud tardó demasiado y fue cancelada. Por favor intente de nuevo.",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "Falta un campo requerido. Por favor complete todos los detalles requeridos.",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "La seguridad de nivel de fila bloqueó esta solicitud.",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "Hay un problema con la consulta de la base de datos (error de sintaxis).",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "La tabla que intenta acceder no existe.",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "La base de datos tiene demasiadas conexiones. Por favor intente más tarde.",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "Error inesperado de la base de datos. Por favor intente más tarde.",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("Superíndice"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("Sincronizar notas"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Siempre sincronizar notas con la nube",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("Sincronizado"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage(
      "Archivo de texto (.txt)",
    ),
    "theme": MessageLookupByLibrary.simpleMessage("Tema"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "La conexión expiró. ¡Por favor intente de nuevo!",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("Sin categoría"),
    "underline": MessageLookupByLibrary.simpleMessage("Subrayado"),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "Ocurrió un error desconocido.",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("Sin título"),
    "username": MessageLookupByLibrary.simpleMessage("Nombre de usuario"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "El nombre de usuario debe comenzar con una letra y contener solo letras y números",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage(
      "Por favor ingrese su nombre de usuario",
    ),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage(
      "Verifique su correo",
    ),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "Contraseña incorrecta o datos corruptos.",
    ),
  };
}
