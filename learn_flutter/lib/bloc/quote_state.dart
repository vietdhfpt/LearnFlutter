import 'package:equatable/equatable.dart';
import 'package:learn_flutter/models/quote.dart';

abstract class QuoteState extends Equatable {
  const QuoteState();

  @override
  List<Object> get props => [];
}

class QuoteEmpty extends QuoteState {}

class QuoteLoading extends QuoteState {}

class QuoteLoaded extends QuoteState {
  final Quote quote;

  const QuoteLoaded({this.quote}) : assert(quote != null);

  @override
  List<Object> get props => [quote];
}

class QuoteError extends QuoteState {}
