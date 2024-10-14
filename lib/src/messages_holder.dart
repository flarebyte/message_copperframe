import 'package:flutter/foundation.dart';
import 'package:grand_copperframe/grand_copperframe.dart';

class CopperframeMessagesHolder with ChangeNotifier {
  List<CopperframeMessage> _messages = [];
  CopperframeMessagesHolder();

  set messages(List<CopperframeMessage> newMessages) {
    if (_haveMessagesChanged(newMessages)) {
      _messages = newMessages;
      notifyListeners();
    }
  }

  List<CopperframeMessage> get messages {
    return _messages;
  }

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
