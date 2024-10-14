import 'package:flutter_test/flutter_test.dart';
import 'package:grand_copperframe/grand_copperframe.dart';
import 'package:message_copperframe/message_copperframe.dart';

void main() {
  late CopperframeMessagesHolder holder;
  late List<CopperframeMessage> initialMessages;

  setUp(() {
    holder = CopperframeMessagesHolder();
    initialMessages = [
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
  });

  test('Initial state should have an empty message list', () {
    expect(holder.messages, isEmpty);
  });

  test('Setting new messages should update the message list', () {
    holder.messages = initialMessages;
    expect(holder.messages, initialMessages);
  });

  test('Setting the same messages should not notify listeners', () {
    var notificationCalled = false;
    holder.addListener(() {
      notificationCalled = true;
    });

    holder.messages = initialMessages;
    notificationCalled = false;

    holder.messages = initialMessages;

    expect(notificationCalled, isFalse);
  });

  test('Setting a different number of messages should notify listeners', () {
    var notificationCalled = false;
    holder.addListener(() {
      notificationCalled = true;
    });

    // Act
    holder.messages = initialMessages;
    holder.messages = [
      CopperframeMessage(
        label: 'Red message',
        level: CopperframeMessageLevel.info,
        category: 'usage',
      ),
    ];

    expect(notificationCalled, isTrue);
  });

  test('Setting different messages should notify listeners', () {
    var notificationCalled = false;
    holder.addListener(() {
      notificationCalled = true;
    });

    // Act
    holder.messages = initialMessages;
    holder.messages = [
      initialMessages[0],
      CopperframeMessage(
        label: 'Red message',
        level: CopperframeMessageLevel.info,
        category: 'usage',
      ),
    ];

    expect(notificationCalled, isTrue);
  });
}
