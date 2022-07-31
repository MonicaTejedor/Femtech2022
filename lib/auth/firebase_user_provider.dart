import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MomsAppFirebaseUser {
  MomsAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MomsAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MomsAppFirebaseUser> momsAppFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<MomsAppFirebaseUser>(
        (user) => currentUser = MomsAppFirebaseUser(user));
