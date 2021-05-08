// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';

// class NotificationPage extends StatefulWidget {
//   NotificationPage({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   NotificationPageState createState() => NotificationPageState();
// }

// class NotificationPageState extends State<NotificationPage> {
// final FirebaseMessaging firebaseMessaging = firebaseMessaging();

//   //FirebaseMessaging firebaseMessaging() => FirebaseMessaging();

//   final List<Notification> notifications = [];
//   @override
//   void initState() {
//     super.initState();
//     firebaseMessaging.configure(
//       onMessage: (Map<String, dynamic> notification) async {
//         setState(() {
//           notifications.add(
//             Notification(
//               title: notification["notification"]["title"],
//               body: notification["notification"]["body"],
//               color: Colors.lightBlue,
//             ),
//           );
//         });
//       },
//       onLaunch: (Map<String, dynamic> notification) async {
//         setState(() {
//           notifications.add(
//             Notification(
//               title: notification["notification"]["title"],
//               body: notification["notification"]["body"],
//               color: Colors.lightBlue,
//             ),
//           );
//         });
//       },
//       onResume: (Map<String, dynamic> notification) async {
//         setState(() {
//           notifications.add(
//             Notification(
//               title: notification["notification"]["title"],
//               body: notification["notification"]["body"],
//               color: Colors.lightBlue,
//             ),
//           );
//         });
//       },
//     );
//   //  firebaseMessaging.requestNotificationPermissions();
//     // _firebaseMessaging.getToken().then((token) {
//     //   print(token);
//     // }).catchError((e) {
//     //   print(e);
//     // });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView(
//         children: notifications.map(buildNotification).toList(),
//       ),
//     );
//   }

//   Widget buildNotification(Notification notification) {
//     return ListTile(
//       title: Text(
//         notification.title,
//         style: TextStyle(
//           color: notification.color,
//         ),
//       ),
//       subtitle: Text(notification.body),
//     );
//   }
// }

// class Notification {
//   final String title;
//   final String body;
//   final Color color;
//   const Notification(
//       {@required this.title, @required this.body, @required this.color});
// }
