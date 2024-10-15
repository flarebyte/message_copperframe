import 'package:grand_copperframe/grand_copperframe.dart';
import 'package:message_copperframe/message_copperframe.dart';

void main() {
  final CopperframeMessagesHolder holder = CopperframeMessagesHolder();
  holder.messages = [
    CopperframeMessage(
      label: 'Blue message',
      level: CopperframeMessageLevel.info,
      category: 'usage',
    ),
    CopperframeMessage(
      label: 'Green message',
      level: CopperframeMessageLevel.info,
      category: 'usage',
    ),
  ];
}
