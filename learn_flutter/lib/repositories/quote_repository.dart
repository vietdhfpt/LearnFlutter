import 'package:learn_flutter/models/quote.dart';
import 'package:learn_flutter/repositories/quote_api_client.dart';

class QuoteRepository {
  final QuoteApiClient quoteApiClient;

  QuoteRepository({this.quoteApiClient}) : assert(quoteApiClient != null);

  Future<Quote> fetchQuote() async {
    return await quoteApiClient.fetchQuote();
  }
}
