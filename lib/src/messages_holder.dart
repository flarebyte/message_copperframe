import 'package:flutter/foundation.dart';
import 'package:grand_copperframe/grand_copperframe.dart';

/// A class that holds and manages a list of [CopperframeMessage] objects.
///
/// The class extends [ChangeNotifier] to notify listeners when the list of
/// messages changes. The messages can be retrieved or updated, and listeners
/// will be notified of any changes to the list.
class CopperframeMessagesHolder with ChangeNotifier {
  /// Private backing field for the list of [CopperframeMessage] instances.
  List<CopperframeMessage> _messages = [];

  /// Default constructor for creating an instance of [CopperframeMessagesHolder].
  CopperframeMessagesHolder();

  /// Updates the list of messages.
  ///
  /// If the new list of messages is different from the current list,
  /// the internal list is updated, and listeners are notified.
  ///
  /// ```dart
  /// holder.messages = newMessages;
  /// ```
  ///
  /// Use this setter to replace the entire message list and trigger
  /// notifications for any change.
  set messages(List<CopperframeMessage> newMessages) {
    if (_haveMessagesChanged(newMessages)) {
      _messages = newMessages;
      notifyListeners();
    }
  }

  /// Returns the current list of [CopperframeMessage] objects.
  ///
  /// This getter allows accessing the messages stored within this holder.
  ///
  /// ```dart
  /// List<CopperframeMessage> currentMessages = holder.messages;
  /// ```
  List<CopperframeMessage> get messages {
    return _messages;
  }

  /// Checks if the provided list of [CopperframeMessage] objects differs from
  /// the current list.
  ///
  /// Returns `true` if the length of the lists differ or if any individual
  /// message has changed. Returns `false` otherwise.
  ///
  /// This is a helper method used internally to avoid unnecessary updates
  /// when the messages have not changed.
  bool _haveMessagesChanged(List<CopperframeMessage> newMessages) {
    if (newMessages.length != _messages.length) {
      return true;
    }
    if (_messages.isEmpty) {
      return false;
    }

    for (var i = 0; i < _messages.length; i++) {
      final hasChanged = _messages[i] != newMessages[i];
      if (hasChanged) {
        return true;
      }
    }

    return false;
  }
}
