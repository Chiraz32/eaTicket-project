// To parse this JSON data, do
//
//     final transaction = transactionFromJson(jsonString);

import 'dart:convert';

Transaction transactionFromJson(String str) => Transaction.fromJson(json.decode(str));

String transactionToJson(Transaction data) => json.encode(data.toJson());

class Transaction {
  Transaction({
    this.amount,
    this.senderId,
    this.recieverId,
    this.deletedAt,
    this.createdAt,
    this.updateAt,
    this.id,
  });

  int? amount;
  int? senderId;
  int? recieverId;
  DateTime? deletedAt;
  DateTime? createdAt;
  DateTime? updateAt;
  int? id;

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
    amount: json["amount"],
    senderId: json["senderId"],
    recieverId: json["recieverId"],
    deletedAt: json["deletedAt"],
    createdAt: DateTime.parse(json["createdAt"]),
    updateAt: DateTime.parse(json["updateAt"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "senderId": senderId,
    "recieverId": recieverId,
    "deletedAt": deletedAt.toString(),
    "createdAt": createdAt.toString(),
    "updateAt": updateAt.toString(),
    "id": id,
  };
}
