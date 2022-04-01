import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchBoxTypingStatusProvider =
    StateProvider.autoDispose<bool>((ref) => false);
