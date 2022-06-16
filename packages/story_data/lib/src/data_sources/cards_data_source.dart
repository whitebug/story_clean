import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:story_core/story_core.dart';
import 'package:story_data/src/models/card_model.dart';

const String cardsCollection = 'cards';

/// Getting cards info from firebase
abstract class CardsDataSource {
  Stream<List<CardModel>> getCards();
}

class CardsDataSourceImpl implements CardsDataSource {
  final FirebaseFirestore fireStore;

  CardsDataSourceImpl({required this.fireStore});

  @override
  Stream<List<CardModel>> getCards() {
    try {
      return fireStore
          .collection(cardsCollection)
          .snapshots()
          .map((snapShot) => snapShot.docs.map((doc) => CardModel.fromJson(doc.data())).toList());
    } catch (e) {
      throw ServerException();
    }
  }
}
