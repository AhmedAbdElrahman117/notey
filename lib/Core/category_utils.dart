import 'package:notey/generated/l10n.dart';

class CategoryUtils {
  // All known translations of "uncategorized" across all supported languages
  static final Set<String> _uncategorizedTranslations = {
    'uncategorized', // English
    'غير مصنّف', // Arabic
    'nicht kategorisiert', // German
    'sin categoría', // Spanish
    'non catégorisé', // French
    'senza categoria', // Italian
    '未分類', // Japanese
    '未分类', // Chinese
    '미분류', // Korean
    'без категории', // Russian
    'kategorisiz', // Turkish
    'बिना श्रेणी के', // Hindi
  };

  /// Check if a category string represents "uncategorized" in any language
  static bool isUncategorized(String category) {
    final lowerCategory = category.toLowerCase().trim();
    return _uncategorizedTranslations.any(
      (translation) => translation.toLowerCase() == lowerCategory,
    );
  }

  /// Get the display name for a category, normalizing "uncategorized" to the current locale
  static String getDisplayName(String category) {
    if (isUncategorized(category)) {
      return S.current.uncategorized;
    }
    return category;
  }
}
