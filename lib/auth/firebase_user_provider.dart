import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HaceloCircularFirebaseUser {
  HaceloCircularFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

HaceloCircularFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HaceloCircularFirebaseUser> haceloCircularFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HaceloCircularFirebaseUser>(
      (user) {
        currentUser = HaceloCircularFirebaseUser(user);
        return currentUser!;
      },
    );
