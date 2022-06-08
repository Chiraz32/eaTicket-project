import 'package:eaticket/Classes/transaction.dart';
import 'package:eaticket/Classes/wallet.dart';
import 'package:eaticket/Classes/error.dart';
import 'package:http/http.dart' as http;

class HttpService{
  String url="https://ab01-197-2-213-189.eu.ngrok.io";

  Future<dynamic> wallet(var response) async{
    if (response.statusCode == 200){
      var json= response.body;
      return walletFromJson(json);
    }else {
      var error=response.body;
      return errorFromJson(error);
    }
  }

   Future<dynamic> buyTicket(int id, int ticketsNumber) async {
    String urlToSend='${this.url}/wallet/$id/$ticketsNumber';
    var response= await http.patch(Uri.parse(urlToSend));
    return wallet(response);
  }

  Future<dynamic> getBalance(int id) async {
    String urlToSend='${this.url}/wallet/$id';
    var response=await http.get(Uri.parse(urlToSend));
    return await wallet(response);
  }

  Future<dynamic> doTransaction(int senderId,int recieverId, int amount)async{
    String urlToSend='${this.url}/transaction';
    var response=await http.post(Uri.parse(urlToSend),body: {
      "amount" : amount,
      "senderId" : senderId ,
      "recieverId": recieverId
    });
    if (response.statusCode == 200){
      var json= response.body;
      return transactionFromJson(json);
    }else {
      var error=response.body;
      return errorFromJson(error);
    }

  }

}