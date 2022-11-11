import 'package:flutter_chat/models/userModel.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message(
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  );
}

// YOU - current user
final User currentUser = User(
  0,
  'Current User',
  'assets/images/greg.jpg',
);

// USERS
final User greg = User(
  1,
  'Greg',
  'assets/images/greg.jpg',
);
final User james = User(
  2,
  'James',
  'assets/images/james.jpg',
);
final User john = User(
  3,
  'John',
  'assets/images/john.jpg',
);
final User olivia = User(
  4,
  'Olivia',
  'assets/images/olivia.jpg',
);
final User sam = User(
  5,
  'Sam',
  'assets/images/sam.jpg',
);
final User sophia = User(
  6,
  'Sophia',
  'assets/images/sophia.jpg',
);
final User steven = User(
  7,
  'Steven',
  'assets/images/steven.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sam, steven, olivia, john, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sam,
    '5:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    true,
  ),
  Message(
    steven,
    '4:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    false,
  ),
  Message(
    olivia,
    '3:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    false,
  ),
  Message(
    john,
    '2:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    false,
  ),
  Message(
    greg,
    '1:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    false,
  ),
  Message(
    james,
    '12:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    true,
  ),
  Message(
    sophia,
    '11:30 AM',
    'Hey, how\'s it going? What did you do today?',
    false,
    false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    greg,
    '5:30 PM',
    'Hey, how\'s it going? What did you do today?',
    false,
    true,
  ),
  Message(
    currentUser,
    '4:30 PM',
    'Just walked my doge. She was super duper cute. The best pupper!!',
    true,
    true,
  ),
  Message(
    greg,
    '3:45 PM',
    'How\'s the doggo?',
    false,
    true,
  ),
  Message(
    greg,
    '3:15 PM',
    'All the food',
    false,
    true,
  ),
];
