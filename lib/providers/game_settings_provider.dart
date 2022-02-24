
import 'package:riverpod/riverpod.dart';

class GameSettings {
  final int wordsize = 5;
  final int attempts = 6;

  GameSettings({required this.wordsize, required this.attempts});

  GameSettings clone({int? wordsize, int? attempts}) {
    return GameSettings(
      attempts: attempts ?? this.attempts,
      wordsize: wordsize ?? this.wordsize
    );
  }
}

class GameSettingsNotifier extends StateNotifier<GameSettings> {
  GameSettingsNotifier() : super(GameSettings(wordsize: 5, attempts: 6));

  void UpdateAttempts(int attempts) {
    state = state.clone(attempts: attempts);
  }

  void updateWordsize(int wordsize) {
    state = state.clone(wordsize: wordsize);
  }
}

const gameSettingsProvider =
    StateNotifierProvider<GameSettingsNotifier, GameSettings>((ref) {
      return GameSettingsNotifier();
});