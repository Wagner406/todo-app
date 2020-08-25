import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String userID;
  DatabaseService(this.userID);

  final CollectionReference userTodos = FirebaseFirestore.instance.collection('userTodos');

  Future setTodo(String key, bool value) async {
    return await userTodos.doc(userID).set(
        {key: value}, merge: true);
  }

  Future deleteTodo(String key) async {
    return await userTodos.doc(userID).updateData({
      key: FieldValue.delete(),
    });
  }

  Future checkIfUserExists() async {
    if ((await userTodos.doc(userID).get()).exists) {
      return true;
    } else {
      return false;
    }
  }

  Stream getTodos() {
    return userTodos.doc(userID).snapshots();
  }
}