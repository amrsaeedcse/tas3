import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task/models/user/user_model.dart';

class FireBaseFireStore {
  final fireStore = FirebaseFirestore.instance;
  Future addUser(UserModel userModel, String userId) async {
    await fireStore.collection("users").doc(userId).set(userModel.toJson());
  }
}
