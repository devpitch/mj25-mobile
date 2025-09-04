// ignore_for_file: type=lint
import 'dart:async';
import 'fragments.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$guest {
  factory Variables$Query$guest({required Input$FetchGuestInput input}) =>
      Variables$Query$guest._({r'input': input});

  Variables$Query$guest._(this._$data);

  factory Variables$Query$guest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$FetchGuestInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$guest._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FetchGuestInput get input => (_$data['input'] as Input$FetchGuestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$guest<Variables$Query$guest> get copyWith =>
      CopyWith$Variables$Query$guest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$guest || runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$guest<TRes> {
  factory CopyWith$Variables$Query$guest(
    Variables$Query$guest instance,
    TRes Function(Variables$Query$guest) then,
  ) = _CopyWithImpl$Variables$Query$guest;

  factory CopyWith$Variables$Query$guest.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$guest;

  TRes call({Input$FetchGuestInput? input});
}

class _CopyWithImpl$Variables$Query$guest<TRes>
    implements CopyWith$Variables$Query$guest<TRes> {
  _CopyWithImpl$Variables$Query$guest(this._instance, this._then);

  final Variables$Query$guest _instance;

  final TRes Function(Variables$Query$guest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$guest._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$FetchGuestInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$guest<TRes>
    implements CopyWith$Variables$Query$guest<TRes> {
  _CopyWithStubImpl$Variables$Query$guest(this._res);

  TRes _res;

  call({Input$FetchGuestInput? input}) => _res;
}

class Query$guest {
  Query$guest({required this.guest, this.$__typename = 'Query'});

  factory Query$guest.fromJson(Map<String, dynamic> json) {
    final l$guest = json['guest'];
    final l$$__typename = json['__typename'];
    return Query$guest(
      guest: Fragment$GuestResponse.fromJson((l$guest as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$GuestResponse guest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$guest = guest;
    _resultData['guest'] = l$guest.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$guest = guest;
    final l$$__typename = $__typename;
    return Object.hashAll([l$guest, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$guest || runtimeType != other.runtimeType) {
      return false;
    }
    final l$guest = guest;
    final lOther$guest = other.guest;
    if (l$guest != lOther$guest) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$guest on Query$guest {
  CopyWith$Query$guest<Query$guest> get copyWith =>
      CopyWith$Query$guest(this, (i) => i);
}

abstract class CopyWith$Query$guest<TRes> {
  factory CopyWith$Query$guest(
    Query$guest instance,
    TRes Function(Query$guest) then,
  ) = _CopyWithImpl$Query$guest;

  factory CopyWith$Query$guest.stub(TRes res) = _CopyWithStubImpl$Query$guest;

  TRes call({Fragment$GuestResponse? guest, String? $__typename});
  CopyWith$Fragment$GuestResponse<TRes> get guest;
}

class _CopyWithImpl$Query$guest<TRes> implements CopyWith$Query$guest<TRes> {
  _CopyWithImpl$Query$guest(this._instance, this._then);

  final Query$guest _instance;

  final TRes Function(Query$guest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? guest = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$guest(
          guest: guest == _undefined || guest == null
              ? _instance.guest
              : (guest as Fragment$GuestResponse),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$GuestResponse<TRes> get guest {
    final local$guest = _instance.guest;
    return CopyWith$Fragment$GuestResponse(local$guest, (e) => call(guest: e));
  }
}

class _CopyWithStubImpl$Query$guest<TRes>
    implements CopyWith$Query$guest<TRes> {
  _CopyWithStubImpl$Query$guest(this._res);

  TRes _res;

  call({Fragment$GuestResponse? guest, String? $__typename}) => _res;

  CopyWith$Fragment$GuestResponse<TRes> get guest =>
      CopyWith$Fragment$GuestResponse.stub(_res);
}

const documentNodeQueryguest = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'guest'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'FetchGuestInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'guest'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'GuestResponse'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionGuestResponse,
    fragmentDefinitionGuestLinkResponse,
  ],
);
Query$guest _parserFn$Query$guest(Map<String, dynamic> data) =>
    Query$guest.fromJson(data);
typedef OnQueryComplete$Query$guest =
    FutureOr<void> Function(Map<String, dynamic>?, Query$guest?);

class Options$Query$guest extends graphql.QueryOptions<Query$guest> {
  Options$Query$guest({
    String? operationName,
    required Variables$Query$guest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$guest? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$guest? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$guest(data),
               ),
         onError: onError,
         document: documentNodeQueryguest,
         parserFn: _parserFn$Query$guest,
       );

  final OnQueryComplete$Query$guest? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$guest extends graphql.WatchQueryOptions<Query$guest> {
  WatchOptions$Query$guest({
    String? operationName,
    required Variables$Query$guest variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$guest? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryguest,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$guest,
       );
}

class FetchMoreOptions$Query$guest extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$guest({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$guest variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryguest,
       );
}

extension ClientExtension$Query$guest on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$guest>> query$guest(
    Options$Query$guest options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$guest> watchQuery$guest(
    WatchOptions$Query$guest options,
  ) => this.watchQuery(options);
  void writeQuery$guest({
    required Query$guest data,
    required Variables$Query$guest variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryguest),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$guest? readQuery$guest({
    required Variables$Query$guest variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryguest),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$guest.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$guest> useQuery$guest(
  Options$Query$guest options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$guest> useWatchQuery$guest(
  WatchOptions$Query$guest options,
) => graphql_flutter.useWatchQuery(options);

class Query$guest$Widget extends graphql_flutter.Query<Query$guest> {
  Query$guest$Widget({
    widgets.Key? key,
    required Options$Query$guest options,
    required graphql_flutter.QueryBuilder<Query$guest> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Variables$Query$guests {
  factory Variables$Query$guests({
    required int limit,
    required int page,
    required String search,
  }) => Variables$Query$guests._({
    r'limit': limit,
    r'page': page,
    r'search': search,
  });

  Variables$Query$guests._(this._$data);

  factory Variables$Query$guests.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$limit = data['limit'];
    result$data['limit'] = (l$limit as int);
    final l$page = data['page'];
    result$data['page'] = (l$page as int);
    final l$search = data['search'];
    result$data['search'] = (l$search as String);
    return Variables$Query$guests._(result$data);
  }

  Map<String, dynamic> _$data;

  int get limit => (_$data['limit'] as int);

  int get page => (_$data['page'] as int);

  String get search => (_$data['search'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$limit = limit;
    result$data['limit'] = l$limit;
    final l$page = page;
    result$data['page'] = l$page;
    final l$search = search;
    result$data['search'] = l$search;
    return result$data;
  }

  CopyWith$Variables$Query$guests<Variables$Query$guests> get copyWith =>
      CopyWith$Variables$Query$guests(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$guests || runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$page = page;
    final l$search = search;
    return Object.hashAll([l$limit, l$page, l$search]);
  }
}

abstract class CopyWith$Variables$Query$guests<TRes> {
  factory CopyWith$Variables$Query$guests(
    Variables$Query$guests instance,
    TRes Function(Variables$Query$guests) then,
  ) = _CopyWithImpl$Variables$Query$guests;

  factory CopyWith$Variables$Query$guests.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$guests;

  TRes call({int? limit, int? page, String? search});
}

class _CopyWithImpl$Variables$Query$guests<TRes>
    implements CopyWith$Variables$Query$guests<TRes> {
  _CopyWithImpl$Variables$Query$guests(this._instance, this._then);

  final Variables$Query$guests _instance;

  final TRes Function(Variables$Query$guests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? search = _undefined,
  }) => _then(
    Variables$Query$guests._({
      ..._instance._$data,
      if (limit != _undefined && limit != null) 'limit': (limit as int),
      if (page != _undefined && page != null) 'page': (page as int),
      if (search != _undefined && search != null) 'search': (search as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$guests<TRes>
    implements CopyWith$Variables$Query$guests<TRes> {
  _CopyWithStubImpl$Variables$Query$guests(this._res);

  TRes _res;

  call({int? limit, int? page, String? search}) => _res;
}

class Query$guests {
  Query$guests({required this.guests, this.$__typename = 'Query'});

  factory Query$guests.fromJson(Map<String, dynamic> json) {
    final l$guests = json['guests'];
    final l$$__typename = json['__typename'];
    return Query$guests(
      guests: Query$guests$guests.fromJson((l$guests as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$guests$guests guests;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$guests = guests;
    _resultData['guests'] = l$guests.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$guests = guests;
    final l$$__typename = $__typename;
    return Object.hashAll([l$guests, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$guests || runtimeType != other.runtimeType) {
      return false;
    }
    final l$guests = guests;
    final lOther$guests = other.guests;
    if (l$guests != lOther$guests) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$guests on Query$guests {
  CopyWith$Query$guests<Query$guests> get copyWith =>
      CopyWith$Query$guests(this, (i) => i);
}

abstract class CopyWith$Query$guests<TRes> {
  factory CopyWith$Query$guests(
    Query$guests instance,
    TRes Function(Query$guests) then,
  ) = _CopyWithImpl$Query$guests;

  factory CopyWith$Query$guests.stub(TRes res) = _CopyWithStubImpl$Query$guests;

  TRes call({Query$guests$guests? guests, String? $__typename});
  CopyWith$Query$guests$guests<TRes> get guests;
}

class _CopyWithImpl$Query$guests<TRes> implements CopyWith$Query$guests<TRes> {
  _CopyWithImpl$Query$guests(this._instance, this._then);

  final Query$guests _instance;

  final TRes Function(Query$guests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? guests = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$guests(
          guests: guests == _undefined || guests == null
              ? _instance.guests
              : (guests as Query$guests$guests),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$guests$guests<TRes> get guests {
    final local$guests = _instance.guests;
    return CopyWith$Query$guests$guests(local$guests, (e) => call(guests: e));
  }
}

class _CopyWithStubImpl$Query$guests<TRes>
    implements CopyWith$Query$guests<TRes> {
  _CopyWithStubImpl$Query$guests(this._res);

  TRes _res;

  call({Query$guests$guests? guests, String? $__typename}) => _res;

  CopyWith$Query$guests$guests<TRes> get guests =>
      CopyWith$Query$guests$guests.stub(_res);
}

const documentNodeQueryguests = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'guests'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'page')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'search')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'guests'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'GuestResponse'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'limit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'page'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionGuestResponse,
    fragmentDefinitionGuestLinkResponse,
  ],
);
Query$guests _parserFn$Query$guests(Map<String, dynamic> data) =>
    Query$guests.fromJson(data);
typedef OnQueryComplete$Query$guests =
    FutureOr<void> Function(Map<String, dynamic>?, Query$guests?);

class Options$Query$guests extends graphql.QueryOptions<Query$guests> {
  Options$Query$guests({
    String? operationName,
    required Variables$Query$guests variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$guests? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$guests? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$guests(data),
               ),
         onError: onError,
         document: documentNodeQueryguests,
         parserFn: _parserFn$Query$guests,
       );

  final OnQueryComplete$Query$guests? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$guests
    extends graphql.WatchQueryOptions<Query$guests> {
  WatchOptions$Query$guests({
    String? operationName,
    required Variables$Query$guests variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$guests? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryguests,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$guests,
       );
}

class FetchMoreOptions$Query$guests extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$guests({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$guests variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryguests,
       );
}

extension ClientExtension$Query$guests on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$guests>> query$guests(
    Options$Query$guests options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$guests> watchQuery$guests(
    WatchOptions$Query$guests options,
  ) => this.watchQuery(options);
  void writeQuery$guests({
    required Query$guests data,
    required Variables$Query$guests variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryguests),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$guests? readQuery$guests({
    required Variables$Query$guests variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryguests),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$guests.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$guests> useQuery$guests(
  Options$Query$guests options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$guests> useWatchQuery$guests(
  WatchOptions$Query$guests options,
) => graphql_flutter.useWatchQuery(options);

class Query$guests$Widget extends graphql_flutter.Query<Query$guests> {
  Query$guests$Widget({
    widgets.Key? key,
    required Options$Query$guests options,
    required graphql_flutter.QueryBuilder<Query$guests> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$guests$guests {
  Query$guests$guests({
    this.items,
    required this.limit,
    required this.page,
    this.$__typename = 'PaginatedGuestResponse',
  });

  factory Query$guests$guests.fromJson(Map<String, dynamic> json) {
    final l$items = json['items'];
    final l$limit = json['limit'];
    final l$page = json['page'];
    final l$$__typename = json['__typename'];
    return Query$guests$guests(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Fragment$GuestResponse.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      limit: (l$limit as int),
      page: (l$page as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$GuestResponse>? items;

  final int limit;

  final int page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$limit = limit;
    _resultData['limit'] = l$limit;
    final l$page = page;
    _resultData['page'] = l$page;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$limit = limit;
    final l$page = page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$limit,
      l$page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$guests$guests || runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items != null && lOther$items != null) {
      if (l$items.length != lOther$items.length) {
        return false;
      }
      for (int i = 0; i < l$items.length; i++) {
        final l$items$entry = l$items[i];
        final lOther$items$entry = lOther$items[i];
        if (l$items$entry != lOther$items$entry) {
          return false;
        }
      }
    } else if (l$items != lOther$items) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$guests$guests on Query$guests$guests {
  CopyWith$Query$guests$guests<Query$guests$guests> get copyWith =>
      CopyWith$Query$guests$guests(this, (i) => i);
}

abstract class CopyWith$Query$guests$guests<TRes> {
  factory CopyWith$Query$guests$guests(
    Query$guests$guests instance,
    TRes Function(Query$guests$guests) then,
  ) = _CopyWithImpl$Query$guests$guests;

  factory CopyWith$Query$guests$guests.stub(TRes res) =
      _CopyWithStubImpl$Query$guests$guests;

  TRes call({
    List<Fragment$GuestResponse>? items,
    int? limit,
    int? page,
    String? $__typename,
  });
  TRes items(
    Iterable<Fragment$GuestResponse>? Function(
      Iterable<CopyWith$Fragment$GuestResponse<Fragment$GuestResponse>>?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$guests$guests<TRes>
    implements CopyWith$Query$guests$guests<TRes> {
  _CopyWithImpl$Query$guests$guests(this._instance, this._then);

  final Query$guests$guests _instance;

  final TRes Function(Query$guests$guests) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$guests$guests(
      items: items == _undefined
          ? _instance.items
          : (items as List<Fragment$GuestResponse>?),
      limit: limit == _undefined || limit == null
          ? _instance.limit
          : (limit as int),
      page: page == _undefined || page == null ? _instance.page : (page as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Fragment$GuestResponse>? Function(
      Iterable<CopyWith$Fragment$GuestResponse<Fragment$GuestResponse>>?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map((e) => CopyWith$Fragment$GuestResponse(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$guests$guests<TRes>
    implements CopyWith$Query$guests$guests<TRes> {
  _CopyWithStubImpl$Query$guests$guests(this._res);

  TRes _res;

  call({
    List<Fragment$GuestResponse>? items,
    int? limit,
    int? page,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Variables$Query$invitationLink {
  factory Variables$Query$invitationLink({required Input$SimpleInput input}) =>
      Variables$Query$invitationLink._({r'input': input});

  Variables$Query$invitationLink._(this._$data);

  factory Variables$Query$invitationLink.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SimpleInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$invitationLink._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SimpleInput get input => (_$data['input'] as Input$SimpleInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$invitationLink<Variables$Query$invitationLink>
  get copyWith => CopyWith$Variables$Query$invitationLink(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$invitationLink ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$invitationLink<TRes> {
  factory CopyWith$Variables$Query$invitationLink(
    Variables$Query$invitationLink instance,
    TRes Function(Variables$Query$invitationLink) then,
  ) = _CopyWithImpl$Variables$Query$invitationLink;

  factory CopyWith$Variables$Query$invitationLink.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$invitationLink;

  TRes call({Input$SimpleInput? input});
}

class _CopyWithImpl$Variables$Query$invitationLink<TRes>
    implements CopyWith$Variables$Query$invitationLink<TRes> {
  _CopyWithImpl$Variables$Query$invitationLink(this._instance, this._then);

  final Variables$Query$invitationLink _instance;

  final TRes Function(Variables$Query$invitationLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$invitationLink._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SimpleInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$invitationLink<TRes>
    implements CopyWith$Variables$Query$invitationLink<TRes> {
  _CopyWithStubImpl$Variables$Query$invitationLink(this._res);

  TRes _res;

  call({Input$SimpleInput? input}) => _res;
}

class Query$invitationLink {
  Query$invitationLink({
    required this.invitationLink,
    this.$__typename = 'Query',
  });

  factory Query$invitationLink.fromJson(Map<String, dynamic> json) {
    final l$invitationLink = json['invitationLink'];
    final l$$__typename = json['__typename'];
    return Query$invitationLink(
      invitationLink: Fragment$InvitationLinkResponse.fromJson(
        (l$invitationLink as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$InvitationLinkResponse invitationLink;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$invitationLink = invitationLink;
    _resultData['invitationLink'] = l$invitationLink.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$invitationLink = invitationLink;
    final l$$__typename = $__typename;
    return Object.hashAll([l$invitationLink, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$invitationLink || runtimeType != other.runtimeType) {
      return false;
    }
    final l$invitationLink = invitationLink;
    final lOther$invitationLink = other.invitationLink;
    if (l$invitationLink != lOther$invitationLink) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$invitationLink on Query$invitationLink {
  CopyWith$Query$invitationLink<Query$invitationLink> get copyWith =>
      CopyWith$Query$invitationLink(this, (i) => i);
}

abstract class CopyWith$Query$invitationLink<TRes> {
  factory CopyWith$Query$invitationLink(
    Query$invitationLink instance,
    TRes Function(Query$invitationLink) then,
  ) = _CopyWithImpl$Query$invitationLink;

  factory CopyWith$Query$invitationLink.stub(TRes res) =
      _CopyWithStubImpl$Query$invitationLink;

  TRes call({
    Fragment$InvitationLinkResponse? invitationLink,
    String? $__typename,
  });
  CopyWith$Fragment$InvitationLinkResponse<TRes> get invitationLink;
}

class _CopyWithImpl$Query$invitationLink<TRes>
    implements CopyWith$Query$invitationLink<TRes> {
  _CopyWithImpl$Query$invitationLink(this._instance, this._then);

  final Query$invitationLink _instance;

  final TRes Function(Query$invitationLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? invitationLink = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$invitationLink(
      invitationLink: invitationLink == _undefined || invitationLink == null
          ? _instance.invitationLink
          : (invitationLink as Fragment$InvitationLinkResponse),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$InvitationLinkResponse<TRes> get invitationLink {
    final local$invitationLink = _instance.invitationLink;
    return CopyWith$Fragment$InvitationLinkResponse(
      local$invitationLink,
      (e) => call(invitationLink: e),
    );
  }
}

class _CopyWithStubImpl$Query$invitationLink<TRes>
    implements CopyWith$Query$invitationLink<TRes> {
  _CopyWithStubImpl$Query$invitationLink(this._res);

  TRes _res;

  call({
    Fragment$InvitationLinkResponse? invitationLink,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$InvitationLinkResponse<TRes> get invitationLink =>
      CopyWith$Fragment$InvitationLinkResponse.stub(_res);
}

const documentNodeQueryinvitationLink = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'invitationLink'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SimpleInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'invitationLink'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'InvitationLinkResponse'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionInvitationLinkResponse,
    fragmentDefinitionGuestResponse,
    fragmentDefinitionGuestLinkResponse,
  ],
);
Query$invitationLink _parserFn$Query$invitationLink(
  Map<String, dynamic> data,
) => Query$invitationLink.fromJson(data);
typedef OnQueryComplete$Query$invitationLink =
    FutureOr<void> Function(Map<String, dynamic>?, Query$invitationLink?);

class Options$Query$invitationLink
    extends graphql.QueryOptions<Query$invitationLink> {
  Options$Query$invitationLink({
    String? operationName,
    required Variables$Query$invitationLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$invitationLink? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$invitationLink? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$invitationLink(data),
               ),
         onError: onError,
         document: documentNodeQueryinvitationLink,
         parserFn: _parserFn$Query$invitationLink,
       );

  final OnQueryComplete$Query$invitationLink? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$invitationLink
    extends graphql.WatchQueryOptions<Query$invitationLink> {
  WatchOptions$Query$invitationLink({
    String? operationName,
    required Variables$Query$invitationLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$invitationLink? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryinvitationLink,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$invitationLink,
       );
}

class FetchMoreOptions$Query$invitationLink extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$invitationLink({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$invitationLink variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryinvitationLink,
       );
}

extension ClientExtension$Query$invitationLink on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$invitationLink>> query$invitationLink(
    Options$Query$invitationLink options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$invitationLink> watchQuery$invitationLink(
    WatchOptions$Query$invitationLink options,
  ) => this.watchQuery(options);
  void writeQuery$invitationLink({
    required Query$invitationLink data,
    required Variables$Query$invitationLink variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryinvitationLink),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$invitationLink? readQuery$invitationLink({
    required Variables$Query$invitationLink variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryinvitationLink),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$invitationLink.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$invitationLink> useQuery$invitationLink(
  Options$Query$invitationLink options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$invitationLink> useWatchQuery$invitationLink(
  WatchOptions$Query$invitationLink options,
) => graphql_flutter.useWatchQuery(options);

class Query$invitationLink$Widget
    extends graphql_flutter.Query<Query$invitationLink> {
  Query$invitationLink$Widget({
    widgets.Key? key,
    required Options$Query$invitationLink options,
    required graphql_flutter.QueryBuilder<Query$invitationLink> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Variables$Query$invitationLinks {
  factory Variables$Query$invitationLinks({
    required int limit,
    required int page,
    required String search,
  }) => Variables$Query$invitationLinks._({
    r'limit': limit,
    r'page': page,
    r'search': search,
  });

  Variables$Query$invitationLinks._(this._$data);

  factory Variables$Query$invitationLinks.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$limit = data['limit'];
    result$data['limit'] = (l$limit as int);
    final l$page = data['page'];
    result$data['page'] = (l$page as int);
    final l$search = data['search'];
    result$data['search'] = (l$search as String);
    return Variables$Query$invitationLinks._(result$data);
  }

  Map<String, dynamic> _$data;

  int get limit => (_$data['limit'] as int);

  int get page => (_$data['page'] as int);

  String get search => (_$data['search'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$limit = limit;
    result$data['limit'] = l$limit;
    final l$page = page;
    result$data['page'] = l$page;
    final l$search = search;
    result$data['search'] = l$search;
    return result$data;
  }

  CopyWith$Variables$Query$invitationLinks<Variables$Query$invitationLinks>
  get copyWith => CopyWith$Variables$Query$invitationLinks(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$invitationLinks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$page = page;
    final l$search = search;
    return Object.hashAll([l$limit, l$page, l$search]);
  }
}

abstract class CopyWith$Variables$Query$invitationLinks<TRes> {
  factory CopyWith$Variables$Query$invitationLinks(
    Variables$Query$invitationLinks instance,
    TRes Function(Variables$Query$invitationLinks) then,
  ) = _CopyWithImpl$Variables$Query$invitationLinks;

  factory CopyWith$Variables$Query$invitationLinks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$invitationLinks;

  TRes call({int? limit, int? page, String? search});
}

class _CopyWithImpl$Variables$Query$invitationLinks<TRes>
    implements CopyWith$Variables$Query$invitationLinks<TRes> {
  _CopyWithImpl$Variables$Query$invitationLinks(this._instance, this._then);

  final Variables$Query$invitationLinks _instance;

  final TRes Function(Variables$Query$invitationLinks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? search = _undefined,
  }) => _then(
    Variables$Query$invitationLinks._({
      ..._instance._$data,
      if (limit != _undefined && limit != null) 'limit': (limit as int),
      if (page != _undefined && page != null) 'page': (page as int),
      if (search != _undefined && search != null) 'search': (search as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$invitationLinks<TRes>
    implements CopyWith$Variables$Query$invitationLinks<TRes> {
  _CopyWithStubImpl$Variables$Query$invitationLinks(this._res);

  TRes _res;

  call({int? limit, int? page, String? search}) => _res;
}

class Query$invitationLinks {
  Query$invitationLinks({
    required this.invitationLinks,
    this.$__typename = 'Query',
  });

  factory Query$invitationLinks.fromJson(Map<String, dynamic> json) {
    final l$invitationLinks = json['invitationLinks'];
    final l$$__typename = json['__typename'];
    return Query$invitationLinks(
      invitationLinks: Query$invitationLinks$invitationLinks.fromJson(
        (l$invitationLinks as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$invitationLinks$invitationLinks invitationLinks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$invitationLinks = invitationLinks;
    _resultData['invitationLinks'] = l$invitationLinks.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$invitationLinks = invitationLinks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$invitationLinks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$invitationLinks || runtimeType != other.runtimeType) {
      return false;
    }
    final l$invitationLinks = invitationLinks;
    final lOther$invitationLinks = other.invitationLinks;
    if (l$invitationLinks != lOther$invitationLinks) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$invitationLinks on Query$invitationLinks {
  CopyWith$Query$invitationLinks<Query$invitationLinks> get copyWith =>
      CopyWith$Query$invitationLinks(this, (i) => i);
}

abstract class CopyWith$Query$invitationLinks<TRes> {
  factory CopyWith$Query$invitationLinks(
    Query$invitationLinks instance,
    TRes Function(Query$invitationLinks) then,
  ) = _CopyWithImpl$Query$invitationLinks;

  factory CopyWith$Query$invitationLinks.stub(TRes res) =
      _CopyWithStubImpl$Query$invitationLinks;

  TRes call({
    Query$invitationLinks$invitationLinks? invitationLinks,
    String? $__typename,
  });
  CopyWith$Query$invitationLinks$invitationLinks<TRes> get invitationLinks;
}

class _CopyWithImpl$Query$invitationLinks<TRes>
    implements CopyWith$Query$invitationLinks<TRes> {
  _CopyWithImpl$Query$invitationLinks(this._instance, this._then);

  final Query$invitationLinks _instance;

  final TRes Function(Query$invitationLinks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? invitationLinks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$invitationLinks(
      invitationLinks: invitationLinks == _undefined || invitationLinks == null
          ? _instance.invitationLinks
          : (invitationLinks as Query$invitationLinks$invitationLinks),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$invitationLinks$invitationLinks<TRes> get invitationLinks {
    final local$invitationLinks = _instance.invitationLinks;
    return CopyWith$Query$invitationLinks$invitationLinks(
      local$invitationLinks,
      (e) => call(invitationLinks: e),
    );
  }
}

class _CopyWithStubImpl$Query$invitationLinks<TRes>
    implements CopyWith$Query$invitationLinks<TRes> {
  _CopyWithStubImpl$Query$invitationLinks(this._res);

  TRes _res;

  call({
    Query$invitationLinks$invitationLinks? invitationLinks,
    String? $__typename,
  }) => _res;

  CopyWith$Query$invitationLinks$invitationLinks<TRes> get invitationLinks =>
      CopyWith$Query$invitationLinks$invitationLinks.stub(_res);
}

const documentNodeQueryinvitationLinks = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'invitationLinks'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'page')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'search')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'invitationLinks'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'InvitationLinkResponse'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'limit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'page'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionInvitationLinkResponse,
    fragmentDefinitionGuestResponse,
    fragmentDefinitionGuestLinkResponse,
  ],
);
Query$invitationLinks _parserFn$Query$invitationLinks(
  Map<String, dynamic> data,
) => Query$invitationLinks.fromJson(data);
typedef OnQueryComplete$Query$invitationLinks =
    FutureOr<void> Function(Map<String, dynamic>?, Query$invitationLinks?);

class Options$Query$invitationLinks
    extends graphql.QueryOptions<Query$invitationLinks> {
  Options$Query$invitationLinks({
    String? operationName,
    required Variables$Query$invitationLinks variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$invitationLinks? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$invitationLinks? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$invitationLinks(data),
               ),
         onError: onError,
         document: documentNodeQueryinvitationLinks,
         parserFn: _parserFn$Query$invitationLinks,
       );

  final OnQueryComplete$Query$invitationLinks? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$invitationLinks
    extends graphql.WatchQueryOptions<Query$invitationLinks> {
  WatchOptions$Query$invitationLinks({
    String? operationName,
    required Variables$Query$invitationLinks variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$invitationLinks? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryinvitationLinks,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$invitationLinks,
       );
}

class FetchMoreOptions$Query$invitationLinks extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$invitationLinks({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$invitationLinks variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryinvitationLinks,
       );
}

extension ClientExtension$Query$invitationLinks on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$invitationLinks>> query$invitationLinks(
    Options$Query$invitationLinks options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$invitationLinks> watchQuery$invitationLinks(
    WatchOptions$Query$invitationLinks options,
  ) => this.watchQuery(options);
  void writeQuery$invitationLinks({
    required Query$invitationLinks data,
    required Variables$Query$invitationLinks variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryinvitationLinks),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$invitationLinks? readQuery$invitationLinks({
    required Variables$Query$invitationLinks variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryinvitationLinks,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$invitationLinks.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$invitationLinks> useQuery$invitationLinks(
  Options$Query$invitationLinks options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$invitationLinks> useWatchQuery$invitationLinks(
  WatchOptions$Query$invitationLinks options,
) => graphql_flutter.useWatchQuery(options);

class Query$invitationLinks$Widget
    extends graphql_flutter.Query<Query$invitationLinks> {
  Query$invitationLinks$Widget({
    widgets.Key? key,
    required Options$Query$invitationLinks options,
    required graphql_flutter.QueryBuilder<Query$invitationLinks> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$invitationLinks$invitationLinks {
  Query$invitationLinks$invitationLinks({
    this.items,
    required this.limit,
    required this.page,
    this.$__typename = 'PaginatedInvitationLinkResponse',
  });

  factory Query$invitationLinks$invitationLinks.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$items = json['items'];
    final l$limit = json['limit'];
    final l$page = json['page'];
    final l$$__typename = json['__typename'];
    return Query$invitationLinks$invitationLinks(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Fragment$InvitationLinkResponse.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      limit: (l$limit as int),
      page: (l$page as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$InvitationLinkResponse>? items;

  final int limit;

  final int page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$limit = limit;
    _resultData['limit'] = l$limit;
    final l$page = page;
    _resultData['page'] = l$page;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$limit = limit;
    final l$page = page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$limit,
      l$page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$invitationLinks$invitationLinks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items != null && lOther$items != null) {
      if (l$items.length != lOther$items.length) {
        return false;
      }
      for (int i = 0; i < l$items.length; i++) {
        final l$items$entry = l$items[i];
        final lOther$items$entry = lOther$items[i];
        if (l$items$entry != lOther$items$entry) {
          return false;
        }
      }
    } else if (l$items != lOther$items) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$invitationLinks$invitationLinks
    on Query$invitationLinks$invitationLinks {
  CopyWith$Query$invitationLinks$invitationLinks<
    Query$invitationLinks$invitationLinks
  >
  get copyWith =>
      CopyWith$Query$invitationLinks$invitationLinks(this, (i) => i);
}

abstract class CopyWith$Query$invitationLinks$invitationLinks<TRes> {
  factory CopyWith$Query$invitationLinks$invitationLinks(
    Query$invitationLinks$invitationLinks instance,
    TRes Function(Query$invitationLinks$invitationLinks) then,
  ) = _CopyWithImpl$Query$invitationLinks$invitationLinks;

  factory CopyWith$Query$invitationLinks$invitationLinks.stub(TRes res) =
      _CopyWithStubImpl$Query$invitationLinks$invitationLinks;

  TRes call({
    List<Fragment$InvitationLinkResponse>? items,
    int? limit,
    int? page,
    String? $__typename,
  });
  TRes items(
    Iterable<Fragment$InvitationLinkResponse>? Function(
      Iterable<
        CopyWith$Fragment$InvitationLinkResponse<
          Fragment$InvitationLinkResponse
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$invitationLinks$invitationLinks<TRes>
    implements CopyWith$Query$invitationLinks$invitationLinks<TRes> {
  _CopyWithImpl$Query$invitationLinks$invitationLinks(
    this._instance,
    this._then,
  );

  final Query$invitationLinks$invitationLinks _instance;

  final TRes Function(Query$invitationLinks$invitationLinks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$invitationLinks$invitationLinks(
      items: items == _undefined
          ? _instance.items
          : (items as List<Fragment$InvitationLinkResponse>?),
      limit: limit == _undefined || limit == null
          ? _instance.limit
          : (limit as int),
      page: page == _undefined || page == null ? _instance.page : (page as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Fragment$InvitationLinkResponse>? Function(
      Iterable<
        CopyWith$Fragment$InvitationLinkResponse<
          Fragment$InvitationLinkResponse
        >
      >?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map(
        (e) => CopyWith$Fragment$InvitationLinkResponse(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$invitationLinks$invitationLinks<TRes>
    implements CopyWith$Query$invitationLinks$invitationLinks<TRes> {
  _CopyWithStubImpl$Query$invitationLinks$invitationLinks(this._res);

  TRes _res;

  call({
    List<Fragment$InvitationLinkResponse>? items,
    int? limit,
    int? page,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}

class Query$me {
  Query$me({required this.me, this.$__typename = 'Query'});

  factory Query$me.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$$__typename = json['__typename'];
    return Query$me(
      me: Fragment$UserResponse.fromJson((l$me as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserResponse me;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$me = me;
    _resultData['me'] = l$me.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$me = me;
    final l$$__typename = $__typename;
    return Object.hashAll([l$me, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$me || runtimeType != other.runtimeType) {
      return false;
    }
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$me on Query$me {
  CopyWith$Query$me<Query$me> get copyWith => CopyWith$Query$me(this, (i) => i);
}

abstract class CopyWith$Query$me<TRes> {
  factory CopyWith$Query$me(Query$me instance, TRes Function(Query$me) then) =
      _CopyWithImpl$Query$me;

  factory CopyWith$Query$me.stub(TRes res) = _CopyWithStubImpl$Query$me;

  TRes call({Fragment$UserResponse? me, String? $__typename});
  CopyWith$Fragment$UserResponse<TRes> get me;
}

class _CopyWithImpl$Query$me<TRes> implements CopyWith$Query$me<TRes> {
  _CopyWithImpl$Query$me(this._instance, this._then);

  final Query$me _instance;

  final TRes Function(Query$me) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? me = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$me(
          me: me == _undefined || me == null
              ? _instance.me
              : (me as Fragment$UserResponse),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$UserResponse<TRes> get me {
    final local$me = _instance.me;
    return CopyWith$Fragment$UserResponse(local$me, (e) => call(me: e));
  }
}

class _CopyWithStubImpl$Query$me<TRes> implements CopyWith$Query$me<TRes> {
  _CopyWithStubImpl$Query$me(this._res);

  TRes _res;

  call({Fragment$UserResponse? me, String? $__typename}) => _res;

  CopyWith$Fragment$UserResponse<TRes> get me =>
      CopyWith$Fragment$UserResponse.stub(_res);
}

const documentNodeQueryme = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'me'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'me'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'UserResponse'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionUserResponse,
  ],
);
Query$me _parserFn$Query$me(Map<String, dynamic> data) =>
    Query$me.fromJson(data);
typedef OnQueryComplete$Query$me =
    FutureOr<void> Function(Map<String, dynamic>?, Query$me?);

class Options$Query$me extends graphql.QueryOptions<Query$me> {
  Options$Query$me({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$me? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$me? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$me(data),
               ),
         onError: onError,
         document: documentNodeQueryme,
         parserFn: _parserFn$Query$me,
       );

  final OnQueryComplete$Query$me? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$me extends graphql.WatchQueryOptions<Query$me> {
  WatchOptions$Query$me({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$me? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryme,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$me,
       );
}

class FetchMoreOptions$Query$me extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$me({required graphql.UpdateQuery updateQuery})
    : super(updateQuery: updateQuery, document: documentNodeQueryme);
}

extension ClientExtension$Query$me on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$me>> query$me([
    Options$Query$me? options,
  ]) async => await this.query(options ?? Options$Query$me());
  graphql.ObservableQuery<Query$me> watchQuery$me([
    WatchOptions$Query$me? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$me());
  void writeQuery$me({required Query$me data, bool broadcast = true}) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryme),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$me? readQuery$me({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryme),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$me.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$me> useQuery$me([
  Options$Query$me? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$me());
graphql.ObservableQuery<Query$me> useWatchQuery$me([
  WatchOptions$Query$me? options,
]) => graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$me());

class Query$me$Widget extends graphql_flutter.Query<Query$me> {
  Query$me$Widget({
    widgets.Key? key,
    Options$Query$me? options,
    required graphql_flutter.QueryBuilder<Query$me> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$me(),
         builder: builder,
       );
}

class Variables$Query$invitation {
  factory Variables$Query$invitation({required Input$SimpleInput input}) =>
      Variables$Query$invitation._({r'input': input});

  Variables$Query$invitation._(this._$data);

  factory Variables$Query$invitation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SimpleInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$invitation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SimpleInput get input => (_$data['input'] as Input$SimpleInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$invitation<Variables$Query$invitation>
  get copyWith => CopyWith$Variables$Query$invitation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$invitation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$invitation<TRes> {
  factory CopyWith$Variables$Query$invitation(
    Variables$Query$invitation instance,
    TRes Function(Variables$Query$invitation) then,
  ) = _CopyWithImpl$Variables$Query$invitation;

  factory CopyWith$Variables$Query$invitation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$invitation;

  TRes call({Input$SimpleInput? input});
}

class _CopyWithImpl$Variables$Query$invitation<TRes>
    implements CopyWith$Variables$Query$invitation<TRes> {
  _CopyWithImpl$Variables$Query$invitation(this._instance, this._then);

  final Variables$Query$invitation _instance;

  final TRes Function(Variables$Query$invitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$invitation._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SimpleInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$invitation<TRes>
    implements CopyWith$Variables$Query$invitation<TRes> {
  _CopyWithStubImpl$Variables$Query$invitation(this._res);

  TRes _res;

  call({Input$SimpleInput? input}) => _res;
}

class Query$invitation {
  Query$invitation({required this.invitation, this.$__typename = 'Query'});

  factory Query$invitation.fromJson(Map<String, dynamic> json) {
    final l$invitation = json['invitation'];
    final l$$__typename = json['__typename'];
    return Query$invitation(
      invitation: Fragment$GuestLinkResponse.fromJson(
        (l$invitation as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$GuestLinkResponse invitation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$invitation = invitation;
    _resultData['invitation'] = l$invitation.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$invitation = invitation;
    final l$$__typename = $__typename;
    return Object.hashAll([l$invitation, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$invitation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$invitation = invitation;
    final lOther$invitation = other.invitation;
    if (l$invitation != lOther$invitation) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$invitation on Query$invitation {
  CopyWith$Query$invitation<Query$invitation> get copyWith =>
      CopyWith$Query$invitation(this, (i) => i);
}

abstract class CopyWith$Query$invitation<TRes> {
  factory CopyWith$Query$invitation(
    Query$invitation instance,
    TRes Function(Query$invitation) then,
  ) = _CopyWithImpl$Query$invitation;

  factory CopyWith$Query$invitation.stub(TRes res) =
      _CopyWithStubImpl$Query$invitation;

  TRes call({Fragment$GuestLinkResponse? invitation, String? $__typename});
  CopyWith$Fragment$GuestLinkResponse<TRes> get invitation;
}

class _CopyWithImpl$Query$invitation<TRes>
    implements CopyWith$Query$invitation<TRes> {
  _CopyWithImpl$Query$invitation(this._instance, this._then);

  final Query$invitation _instance;

  final TRes Function(Query$invitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? invitation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$invitation(
      invitation: invitation == _undefined || invitation == null
          ? _instance.invitation
          : (invitation as Fragment$GuestLinkResponse),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$GuestLinkResponse<TRes> get invitation {
    final local$invitation = _instance.invitation;
    return CopyWith$Fragment$GuestLinkResponse(
      local$invitation,
      (e) => call(invitation: e),
    );
  }
}

class _CopyWithStubImpl$Query$invitation<TRes>
    implements CopyWith$Query$invitation<TRes> {
  _CopyWithStubImpl$Query$invitation(this._res);

  TRes _res;

  call({Fragment$GuestLinkResponse? invitation, String? $__typename}) => _res;

  CopyWith$Fragment$GuestLinkResponse<TRes> get invitation =>
      CopyWith$Fragment$GuestLinkResponse.stub(_res);
}

const documentNodeQueryinvitation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'invitation'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SimpleInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'invitation'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'GuestLinkResponse'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionGuestLinkResponse,
  ],
);
Query$invitation _parserFn$Query$invitation(Map<String, dynamic> data) =>
    Query$invitation.fromJson(data);
typedef OnQueryComplete$Query$invitation =
    FutureOr<void> Function(Map<String, dynamic>?, Query$invitation?);

class Options$Query$invitation extends graphql.QueryOptions<Query$invitation> {
  Options$Query$invitation({
    String? operationName,
    required Variables$Query$invitation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$invitation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$invitation? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$invitation(data),
               ),
         onError: onError,
         document: documentNodeQueryinvitation,
         parserFn: _parserFn$Query$invitation,
       );

  final OnQueryComplete$Query$invitation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$invitation
    extends graphql.WatchQueryOptions<Query$invitation> {
  WatchOptions$Query$invitation({
    String? operationName,
    required Variables$Query$invitation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$invitation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryinvitation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$invitation,
       );
}

class FetchMoreOptions$Query$invitation extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$invitation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$invitation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryinvitation,
       );
}

extension ClientExtension$Query$invitation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$invitation>> query$invitation(
    Options$Query$invitation options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$invitation> watchQuery$invitation(
    WatchOptions$Query$invitation options,
  ) => this.watchQuery(options);
  void writeQuery$invitation({
    required Query$invitation data,
    required Variables$Query$invitation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryinvitation),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$invitation? readQuery$invitation({
    required Variables$Query$invitation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryinvitation),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$invitation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$invitation> useQuery$invitation(
  Options$Query$invitation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$invitation> useWatchQuery$invitation(
  WatchOptions$Query$invitation options,
) => graphql_flutter.useWatchQuery(options);

class Query$invitation$Widget extends graphql_flutter.Query<Query$invitation> {
  Query$invitation$Widget({
    widgets.Key? key,
    required Options$Query$invitation options,
    required graphql_flutter.QueryBuilder<Query$invitation> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Variables$Query$galleryFilesAdmin {
  factory Variables$Query$galleryFilesAdmin({
    required Input$FetchGalleryInput input,
    required int limit,
    required int page,
    required String search,
  }) => Variables$Query$galleryFilesAdmin._({
    r'input': input,
    r'limit': limit,
    r'page': page,
    r'search': search,
  });

  Variables$Query$galleryFilesAdmin._(this._$data);

  factory Variables$Query$galleryFilesAdmin.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$FetchGalleryInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    final l$limit = data['limit'];
    result$data['limit'] = (l$limit as int);
    final l$page = data['page'];
    result$data['page'] = (l$page as int);
    final l$search = data['search'];
    result$data['search'] = (l$search as String);
    return Variables$Query$galleryFilesAdmin._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FetchGalleryInput get input =>
      (_$data['input'] as Input$FetchGalleryInput);

  int get limit => (_$data['limit'] as int);

  int get page => (_$data['page'] as int);

  String get search => (_$data['search'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    final l$limit = limit;
    result$data['limit'] = l$limit;
    final l$page = page;
    result$data['page'] = l$page;
    final l$search = search;
    result$data['search'] = l$search;
    return result$data;
  }

  CopyWith$Variables$Query$galleryFilesAdmin<Variables$Query$galleryFilesAdmin>
  get copyWith => CopyWith$Variables$Query$galleryFilesAdmin(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$galleryFilesAdmin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$limit = limit;
    final l$page = page;
    final l$search = search;
    return Object.hashAll([l$input, l$limit, l$page, l$search]);
  }
}

abstract class CopyWith$Variables$Query$galleryFilesAdmin<TRes> {
  factory CopyWith$Variables$Query$galleryFilesAdmin(
    Variables$Query$galleryFilesAdmin instance,
    TRes Function(Variables$Query$galleryFilesAdmin) then,
  ) = _CopyWithImpl$Variables$Query$galleryFilesAdmin;

  factory CopyWith$Variables$Query$galleryFilesAdmin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$galleryFilesAdmin;

  TRes call({
    Input$FetchGalleryInput? input,
    int? limit,
    int? page,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$galleryFilesAdmin<TRes>
    implements CopyWith$Variables$Query$galleryFilesAdmin<TRes> {
  _CopyWithImpl$Variables$Query$galleryFilesAdmin(this._instance, this._then);

  final Variables$Query$galleryFilesAdmin _instance;

  final TRes Function(Variables$Query$galleryFilesAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? search = _undefined,
  }) => _then(
    Variables$Query$galleryFilesAdmin._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$FetchGalleryInput),
      if (limit != _undefined && limit != null) 'limit': (limit as int),
      if (page != _undefined && page != null) 'page': (page as int),
      if (search != _undefined && search != null) 'search': (search as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$galleryFilesAdmin<TRes>
    implements CopyWith$Variables$Query$galleryFilesAdmin<TRes> {
  _CopyWithStubImpl$Variables$Query$galleryFilesAdmin(this._res);

  TRes _res;

  call({
    Input$FetchGalleryInput? input,
    int? limit,
    int? page,
    String? search,
  }) => _res;
}

class Query$galleryFilesAdmin {
  Query$galleryFilesAdmin({
    required this.galleryFilesAdmin,
    this.$__typename = 'Query',
  });

  factory Query$galleryFilesAdmin.fromJson(Map<String, dynamic> json) {
    final l$galleryFilesAdmin = json['galleryFilesAdmin'];
    final l$$__typename = json['__typename'];
    return Query$galleryFilesAdmin(
      galleryFilesAdmin: Query$galleryFilesAdmin$galleryFilesAdmin.fromJson(
        (l$galleryFilesAdmin as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$galleryFilesAdmin$galleryFilesAdmin galleryFilesAdmin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$galleryFilesAdmin = galleryFilesAdmin;
    _resultData['galleryFilesAdmin'] = l$galleryFilesAdmin.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$galleryFilesAdmin = galleryFilesAdmin;
    final l$$__typename = $__typename;
    return Object.hashAll([l$galleryFilesAdmin, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$galleryFilesAdmin || runtimeType != other.runtimeType) {
      return false;
    }
    final l$galleryFilesAdmin = galleryFilesAdmin;
    final lOther$galleryFilesAdmin = other.galleryFilesAdmin;
    if (l$galleryFilesAdmin != lOther$galleryFilesAdmin) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$galleryFilesAdmin on Query$galleryFilesAdmin {
  CopyWith$Query$galleryFilesAdmin<Query$galleryFilesAdmin> get copyWith =>
      CopyWith$Query$galleryFilesAdmin(this, (i) => i);
}

abstract class CopyWith$Query$galleryFilesAdmin<TRes> {
  factory CopyWith$Query$galleryFilesAdmin(
    Query$galleryFilesAdmin instance,
    TRes Function(Query$galleryFilesAdmin) then,
  ) = _CopyWithImpl$Query$galleryFilesAdmin;

  factory CopyWith$Query$galleryFilesAdmin.stub(TRes res) =
      _CopyWithStubImpl$Query$galleryFilesAdmin;

  TRes call({
    Query$galleryFilesAdmin$galleryFilesAdmin? galleryFilesAdmin,
    String? $__typename,
  });
  CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin<TRes>
  get galleryFilesAdmin;
}

class _CopyWithImpl$Query$galleryFilesAdmin<TRes>
    implements CopyWith$Query$galleryFilesAdmin<TRes> {
  _CopyWithImpl$Query$galleryFilesAdmin(this._instance, this._then);

  final Query$galleryFilesAdmin _instance;

  final TRes Function(Query$galleryFilesAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? galleryFilesAdmin = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$galleryFilesAdmin(
      galleryFilesAdmin:
          galleryFilesAdmin == _undefined || galleryFilesAdmin == null
          ? _instance.galleryFilesAdmin
          : (galleryFilesAdmin as Query$galleryFilesAdmin$galleryFilesAdmin),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin<TRes>
  get galleryFilesAdmin {
    final local$galleryFilesAdmin = _instance.galleryFilesAdmin;
    return CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin(
      local$galleryFilesAdmin,
      (e) => call(galleryFilesAdmin: e),
    );
  }
}

class _CopyWithStubImpl$Query$galleryFilesAdmin<TRes>
    implements CopyWith$Query$galleryFilesAdmin<TRes> {
  _CopyWithStubImpl$Query$galleryFilesAdmin(this._res);

  TRes _res;

  call({
    Query$galleryFilesAdmin$galleryFilesAdmin? galleryFilesAdmin,
    String? $__typename,
  }) => _res;

  CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin<TRes>
  get galleryFilesAdmin =>
      CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin.stub(_res);
}

const documentNodeQuerygalleryFilesAdmin = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'galleryFilesAdmin'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'FetchGalleryInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'page')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'search')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'galleryFilesAdmin'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'FileResponse'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'limit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'page'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionFileResponse,
    fragmentDefinitionGuestResponse,
    fragmentDefinitionGuestLinkResponse,
  ],
);
Query$galleryFilesAdmin _parserFn$Query$galleryFilesAdmin(
  Map<String, dynamic> data,
) => Query$galleryFilesAdmin.fromJson(data);
typedef OnQueryComplete$Query$galleryFilesAdmin =
    FutureOr<void> Function(Map<String, dynamic>?, Query$galleryFilesAdmin?);

class Options$Query$galleryFilesAdmin
    extends graphql.QueryOptions<Query$galleryFilesAdmin> {
  Options$Query$galleryFilesAdmin({
    String? operationName,
    required Variables$Query$galleryFilesAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$galleryFilesAdmin? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$galleryFilesAdmin? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$galleryFilesAdmin(data),
               ),
         onError: onError,
         document: documentNodeQuerygalleryFilesAdmin,
         parserFn: _parserFn$Query$galleryFilesAdmin,
       );

  final OnQueryComplete$Query$galleryFilesAdmin? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$galleryFilesAdmin
    extends graphql.WatchQueryOptions<Query$galleryFilesAdmin> {
  WatchOptions$Query$galleryFilesAdmin({
    String? operationName,
    required Variables$Query$galleryFilesAdmin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$galleryFilesAdmin? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQuerygalleryFilesAdmin,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$galleryFilesAdmin,
       );
}

class FetchMoreOptions$Query$galleryFilesAdmin
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$galleryFilesAdmin({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$galleryFilesAdmin variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerygalleryFilesAdmin,
       );
}

extension ClientExtension$Query$galleryFilesAdmin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$galleryFilesAdmin>> query$galleryFilesAdmin(
    Options$Query$galleryFilesAdmin options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$galleryFilesAdmin> watchQuery$galleryFilesAdmin(
    WatchOptions$Query$galleryFilesAdmin options,
  ) => this.watchQuery(options);
  void writeQuery$galleryFilesAdmin({
    required Query$galleryFilesAdmin data,
    required Variables$Query$galleryFilesAdmin variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQuerygalleryFilesAdmin,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$galleryFilesAdmin? readQuery$galleryFilesAdmin({
    required Variables$Query$galleryFilesAdmin variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerygalleryFilesAdmin,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$galleryFilesAdmin.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$galleryFilesAdmin>
useQuery$galleryFilesAdmin(Options$Query$galleryFilesAdmin options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$galleryFilesAdmin>
useWatchQuery$galleryFilesAdmin(WatchOptions$Query$galleryFilesAdmin options) =>
    graphql_flutter.useWatchQuery(options);

class Query$galleryFilesAdmin$Widget
    extends graphql_flutter.Query<Query$galleryFilesAdmin> {
  Query$galleryFilesAdmin$Widget({
    widgets.Key? key,
    required Options$Query$galleryFilesAdmin options,
    required graphql_flutter.QueryBuilder<Query$galleryFilesAdmin> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$galleryFilesAdmin$galleryFilesAdmin {
  Query$galleryFilesAdmin$galleryFilesAdmin({
    this.items,
    required this.limit,
    required this.page,
    this.$__typename = 'PaginatedGalleryResponse',
  });

  factory Query$galleryFilesAdmin$galleryFilesAdmin.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$items = json['items'];
    final l$limit = json['limit'];
    final l$page = json['page'];
    final l$$__typename = json['__typename'];
    return Query$galleryFilesAdmin$galleryFilesAdmin(
      items: (l$items as List<dynamic>?)
          ?.map(
            (e) => Fragment$FileResponse.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      limit: (l$limit as int),
      page: (l$page as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$FileResponse>? items;

  final int limit;

  final int page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$items = items;
    _resultData['items'] = l$items?.map((e) => e.toJson()).toList();
    final l$limit = limit;
    _resultData['limit'] = l$limit;
    final l$page = page;
    _resultData['page'] = l$page;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$items = items;
    final l$limit = limit;
    final l$page = page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$items == null ? null : Object.hashAll(l$items.map((v) => v)),
      l$limit,
      l$page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$galleryFilesAdmin$galleryFilesAdmin ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items != null && lOther$items != null) {
      if (l$items.length != lOther$items.length) {
        return false;
      }
      for (int i = 0; i < l$items.length; i++) {
        final l$items$entry = l$items[i];
        final lOther$items$entry = lOther$items[i];
        if (l$items$entry != lOther$items$entry) {
          return false;
        }
      }
    } else if (l$items != lOther$items) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$galleryFilesAdmin$galleryFilesAdmin
    on Query$galleryFilesAdmin$galleryFilesAdmin {
  CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin<
    Query$galleryFilesAdmin$galleryFilesAdmin
  >
  get copyWith =>
      CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin(this, (i) => i);
}

abstract class CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin<TRes> {
  factory CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin(
    Query$galleryFilesAdmin$galleryFilesAdmin instance,
    TRes Function(Query$galleryFilesAdmin$galleryFilesAdmin) then,
  ) = _CopyWithImpl$Query$galleryFilesAdmin$galleryFilesAdmin;

  factory CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin.stub(TRes res) =
      _CopyWithStubImpl$Query$galleryFilesAdmin$galleryFilesAdmin;

  TRes call({
    List<Fragment$FileResponse>? items,
    int? limit,
    int? page,
    String? $__typename,
  });
  TRes items(
    Iterable<Fragment$FileResponse>? Function(
      Iterable<CopyWith$Fragment$FileResponse<Fragment$FileResponse>>?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$galleryFilesAdmin$galleryFilesAdmin<TRes>
    implements CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin<TRes> {
  _CopyWithImpl$Query$galleryFilesAdmin$galleryFilesAdmin(
    this._instance,
    this._then,
  );

  final Query$galleryFilesAdmin$galleryFilesAdmin _instance;

  final TRes Function(Query$galleryFilesAdmin$galleryFilesAdmin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? items = _undefined,
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$galleryFilesAdmin$galleryFilesAdmin(
      items: items == _undefined
          ? _instance.items
          : (items as List<Fragment$FileResponse>?),
      limit: limit == _undefined || limit == null
          ? _instance.limit
          : (limit as int),
      page: page == _undefined || page == null ? _instance.page : (page as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes items(
    Iterable<Fragment$FileResponse>? Function(
      Iterable<CopyWith$Fragment$FileResponse<Fragment$FileResponse>>?,
    )
    _fn,
  ) => call(
    items: _fn(
      _instance.items?.map((e) => CopyWith$Fragment$FileResponse(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$galleryFilesAdmin$galleryFilesAdmin<TRes>
    implements CopyWith$Query$galleryFilesAdmin$galleryFilesAdmin<TRes> {
  _CopyWithStubImpl$Query$galleryFilesAdmin$galleryFilesAdmin(this._res);

  TRes _res;

  call({
    List<Fragment$FileResponse>? items,
    int? limit,
    int? page,
    String? $__typename,
  }) => _res;

  items(_fn) => _res;
}
