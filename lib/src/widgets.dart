import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gtk_flutter/main.dart';

class Header extends StatelessWidget {
  const Header(this.heading, {super.key});
  final String heading;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          heading,
          style: const TextStyle(fontSize: 24),
        ),
      );
}

class Paragraph extends StatelessWidget {
  const Paragraph(this.content, {super.key});
  final String content;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Text(
          content,
          style: const TextStyle(fontSize: 18),
        ),
      );
}

// class ParagraphOfTime extends StatefulWidget {
//   const ParagraphOfTime(this.name, this.send, this.time, this.userid, {super.key});
//   final String name;
//   final String send;
//   final String time;
//   final String userid;
//
//   @override
//   State<ParagraphOfTime> createState() => _ParagraphOfTimeState();
// }

// class _ParagraphOfTimeState extends State<ParagraphOfTime> {
//   User? user = FirebaseAuth.instance.currentUser;
//
//   @override
//   Widget build(BuildContext context) => Container(
//     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//     child: Row(
//       children: [
//         Flexible(
//           child: Text.rich(
//             TextSpan(
//             children: [
//               TextSpan(text: widget.name, style: const TextStyle(fontSize: 18)),
//               const TextSpan(text: ': ', style: TextStyle(fontSize: 18)),
//               TextSpan(text: widget.send, style: const TextStyle(fontSize: 18)),
//               const TextSpan(text: '\n'),
//               TextSpan(text: widget.time, style: const TextStyle(fontSize: 12)),
//             ],
//           ),
//           ),
//         ),
//         if (widget.userid == user!.uid)
//           IconButton(
//             onPressed: () => onPressed(),
//             icon: const Icon(Icons.delete_outlined),
//         ),
//       ],
//     ),
//   );
//
//   // Future<void> onPressed() async {
//   //   FirebaseAuth.instance.userChanges().listen((user) {
//   //     if (user != null && user.uid == widget.userid) {
//   //       await FirebaseFirestore.instance.collection('guestbook').doc(widget.send).delete();
//   //     }
//   //   });
//   //   deleteDoc(widget.userid);
//   // }
//
//   // void deleteDoc(String docID) {
//   //   Firestore.instance.collection('guestbook').document(docID).delete();
//   // }
// }

class IconAndDetail extends StatelessWidget {
  const IconAndDetail(this.icon, this.detail, {super.key});
  final IconData icon;
  final String detail;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 8),
            Text(
              detail,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      );
}

class StyledButton extends StatelessWidget {
  const StyledButton({required this.child, required this.onPressed, super.key});
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.deepPurple)),
        onPressed: onPressed,
        child: child,
      );
}
