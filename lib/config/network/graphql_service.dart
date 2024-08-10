import 'package:book_nest_life_care/config/back4app_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

const String apiUrl = 'https://parseapi.back4app.com/graphql';
const String uploadApiUrl = 'https://parseapi.back4app.com/files';

class GraphQLService {
  static final HttpLink httpLink = HttpLink(apiUrl, defaultHeaders: {
    keyHeaderClientKey: Back4appConstants.keyClientKey,
    keyHeaderApplicationId : Back4appConstants.keyApplicationId,
    keyHeaderMasterKey: Back4appConstants.keyMasterKey
   });

  final Dio _dio = Dio();

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(store: InMemoryStore()),
    ),
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      // cache: GraphQLCache(store: InMemoryStore()),
      link: httpLink,
    );
  }

  Future<QueryResult> performMutation(String mutation,
      {Map<String, dynamic>? variables}) async {
    final MutationOptions options = MutationOptions(
      document: gql(mutation),
      variables: variables ?? {},
    );
    return await clientToQuery().mutate(options);
  }

  Future<QueryResult> performQuery(String query,
      {Map<String, dynamic>? variables}) async {
    final QueryOptions options = QueryOptions(
      document: gql(query),
      variables: variables ?? {},
    );
    return await clientToQuery().query(options);
  }
}
