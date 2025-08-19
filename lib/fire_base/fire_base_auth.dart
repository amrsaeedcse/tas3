import 'package:firebase_auth/firebase_auth.dart';
import 'package:task/fire_base/fire_base_fire_store.dart';
import 'package:task/models/user/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FireBaseFireAuth {
  final fireBaseAuth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn.instance;
  Future signIn(String email, String pass) async {
    UserCredential userCredential = await fireBaseAuth
        .signInWithEmailAndPassword(email: email, password: pass);
  }

  Future signInGoogle() async {
    await googleSignIn.initialize(
      serverClientId:
          "448293348234-1fvprrtmc4b93sgv9pndvh9h5misqe1g.apps.googleusercontent.com",
    );
    GoogleSignInAccount googleSignInAccount = await googleSignIn.authenticate();
    GoogleSignInAuthentication googleSignInAuthentication =
        googleSignInAccount.authentication;
    AuthCredential authCredential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
    );
    UserCredential userCredential = await fireBaseAuth.signInWithCredential(
      authCredential,
    );
    await FireBaseFireStore().addUser(
      UserModel(
        image: null,
        name: userCredential.user!.displayName!,
        email: userCredential.user!.email!,
      ),
      userCredential.user!.uid,
    );
  }

  Future signUp(UserModel userModel, String pass) async {
    UserCredential userCredential = await fireBaseAuth
        .createUserWithEmailAndPassword(email: userModel.email, password: pass);
    FireBaseFireStore fireStore = FireBaseFireStore();
    await fireStore.addUser(userModel, userCredential.user!.uid);
  }
}
