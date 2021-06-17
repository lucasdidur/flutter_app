import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String uid;
  String nome;

  UserModel({this.uid, this.nome});

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    return UserModel(
      nome: doc['nome'],
      uid: doc['uid'],
    );
  }

  save() {
    FirebaseFirestore.instance.collection('user').doc(uid).set({
      'nome': nome,
    });
  }
}
