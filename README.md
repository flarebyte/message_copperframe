# message\_copperframe

![Experimental](https://img.shields.io/badge/status-experimental-blue)

> Delivering impactful messages to your dashboard

Manages a list of message objects and notifies listeners when the message
list changes. This is useful for maintaining reactive state in Flutter
applications, ensuring UI components can respond to message updates
efficiently.

![Hero image for message\_copperframe](doc/message_copperframe.jpeg)

Highlights:

-   Reactive Updates which notifies listeners when the message list
    changes, enabling efficient UI updates.

-   Immutable State Checks that compares old and new messages to avoid
    unnecessary notifications.

-   Easy Integration which works seamlessly with Flutter's ChangeNotifier
    for state management.

A few examples:

Create a message holder:

```dart
final CopperframeMessagesHolder holder = CopperframeMessagesHolder();
```

Create a message:

```dart
final  infoMessage  =  CopperframeMessage(  label:  'This  is  an  info
message',  level:  CopperframeMessageLevel.info,  category:  'usage',  );
```

Update the message holder and notify:

```dart
holder.messages = [infoMessage]
```

## Documentation and links

-   [Code Maintenance :wrench:](MAINTENANCE.md)
-   [Code Of Conduct](CODE_OF_CONDUCT.md)
-   [Contributing :busts\_in\_silhouette: :construction:](CONTRIBUTING.md)
-   [Architectural Decision Records :memo:](DECISIONS.md)
-   [Contributors
    :busts\_in\_silhouette:](https://github.com/flarebyte/message_copperframe/graphs/contributors)
-   [Dependencies](https://github.com/flarebyte/message_copperframe/network/dependencies)
-   [Glossary
    :book:](https://github.com/flarebyte/overview/blob/main/GLOSSARY.md)
-   [Software engineering principles
    :gem:](https://github.com/flarebyte/overview/blob/main/PRINCIPLES.md)
-   [Overview of Flarebyte.com ecosystem
    :factory:](https://github.com/flarebyte/overview)
-   [Dart dependencies](DEPENDENCIES.md)
-   [Usage](USAGE.md)
-   [Example](example/example.dart)

## Related

-   [form\_validator](https://pub.dev/packages/form_validator)
