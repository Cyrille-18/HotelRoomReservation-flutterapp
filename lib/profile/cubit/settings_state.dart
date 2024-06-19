part of 'settings_cubit.dart';

@immutable
class SettingsState extends Equatable {
  const SettingsState({
    required this.locale,
    this.themeMode = ThemeMode.system,
    this.locales = const <Locale>[
      Locale('en'),
      Locale('fr'),
      // Locale.fromSubtags(languageCode: 'ee'),
    ],
  });

  factory SettingsState.fromJson(Map<String, dynamic> map) {
    return SettingsState(
      themeMode: themeFromRawValue(map['themeMode'] as String),
      locale: Locale(map['locale'] as String),
    );
  }

  final ThemeMode themeMode;
  final Locale locale;
  final List<Locale> locales;

  @override
  List<Object?> get props => [
        themeMode,
        locale,
      ];

  Map<String, dynamic> toJson() {
    return {
      'themeMode': themeMode.name,
      'locale': locale.languageCode,
    };
  }

  static ThemeMode themeFromRawValue(String value) {
    if (value == ThemeMode.system.name) {
      return ThemeMode.system;
    } else if (value == ThemeMode.light.name) {
      return ThemeMode.light;
    } else if (value == ThemeMode.dark.name) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  SettingsState copyWith({
    ThemeMode? themeMode,
    Locale? locale,
  }) {
    return SettingsState(
      themeMode: themeMode ?? this.themeMode,
      locale: locale ?? this.locale,
    );
  }
}
