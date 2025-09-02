// ignore_for_file: type=lint
import 'dart:async';
import 'fragments.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$generateInviteLink {
  factory Variables$Mutation$generateInviteLink({
    required Input$CreateInvitationLinkInput input,
  }) => Variables$Mutation$generateInviteLink._({r'input': input});

  Variables$Mutation$generateInviteLink._(this._$data);

  factory Variables$Mutation$generateInviteLink.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateInvitationLinkInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$generateInviteLink._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateInvitationLinkInput get input =>
      (_$data['input'] as Input$CreateInvitationLinkInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$generateInviteLink<
    Variables$Mutation$generateInviteLink
  >
  get copyWith =>
      CopyWith$Variables$Mutation$generateInviteLink(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$generateInviteLink ||
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

abstract class CopyWith$Variables$Mutation$generateInviteLink<TRes> {
  factory CopyWith$Variables$Mutation$generateInviteLink(
    Variables$Mutation$generateInviteLink instance,
    TRes Function(Variables$Mutation$generateInviteLink) then,
  ) = _CopyWithImpl$Variables$Mutation$generateInviteLink;

  factory CopyWith$Variables$Mutation$generateInviteLink.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$generateInviteLink;

  TRes call({Input$CreateInvitationLinkInput? input});
}

class _CopyWithImpl$Variables$Mutation$generateInviteLink<TRes>
    implements CopyWith$Variables$Mutation$generateInviteLink<TRes> {
  _CopyWithImpl$Variables$Mutation$generateInviteLink(
    this._instance,
    this._then,
  );

  final Variables$Mutation$generateInviteLink _instance;

  final TRes Function(Variables$Mutation$generateInviteLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$generateInviteLink._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateInvitationLinkInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$generateInviteLink<TRes>
    implements CopyWith$Variables$Mutation$generateInviteLink<TRes> {
  _CopyWithStubImpl$Variables$Mutation$generateInviteLink(this._res);

  TRes _res;

  call({Input$CreateInvitationLinkInput? input}) => _res;
}

class Mutation$generateInviteLink {
  Mutation$generateInviteLink({
    required this.generateInviteLink,
    this.$__typename = 'Mutation',
  });

  factory Mutation$generateInviteLink.fromJson(Map<String, dynamic> json) {
    final l$generateInviteLink = json['generateInviteLink'];
    final l$$__typename = json['__typename'];
    return Mutation$generateInviteLink(
      generateInviteLink: Fragment$OkayResponse.fromJson(
        (l$generateInviteLink as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$OkayResponse generateInviteLink;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$generateInviteLink = generateInviteLink;
    _resultData['generateInviteLink'] = l$generateInviteLink.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$generateInviteLink = generateInviteLink;
    final l$$__typename = $__typename;
    return Object.hashAll([l$generateInviteLink, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$generateInviteLink ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$generateInviteLink = generateInviteLink;
    final lOther$generateInviteLink = other.generateInviteLink;
    if (l$generateInviteLink != lOther$generateInviteLink) {
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

extension UtilityExtension$Mutation$generateInviteLink
    on Mutation$generateInviteLink {
  CopyWith$Mutation$generateInviteLink<Mutation$generateInviteLink>
  get copyWith => CopyWith$Mutation$generateInviteLink(this, (i) => i);
}

abstract class CopyWith$Mutation$generateInviteLink<TRes> {
  factory CopyWith$Mutation$generateInviteLink(
    Mutation$generateInviteLink instance,
    TRes Function(Mutation$generateInviteLink) then,
  ) = _CopyWithImpl$Mutation$generateInviteLink;

  factory CopyWith$Mutation$generateInviteLink.stub(TRes res) =
      _CopyWithStubImpl$Mutation$generateInviteLink;

  TRes call({Fragment$OkayResponse? generateInviteLink, String? $__typename});
  CopyWith$Fragment$OkayResponse<TRes> get generateInviteLink;
}

class _CopyWithImpl$Mutation$generateInviteLink<TRes>
    implements CopyWith$Mutation$generateInviteLink<TRes> {
  _CopyWithImpl$Mutation$generateInviteLink(this._instance, this._then);

  final Mutation$generateInviteLink _instance;

  final TRes Function(Mutation$generateInviteLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? generateInviteLink = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$generateInviteLink(
      generateInviteLink:
          generateInviteLink == _undefined || generateInviteLink == null
          ? _instance.generateInviteLink
          : (generateInviteLink as Fragment$OkayResponse),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$OkayResponse<TRes> get generateInviteLink {
    final local$generateInviteLink = _instance.generateInviteLink;
    return CopyWith$Fragment$OkayResponse(
      local$generateInviteLink,
      (e) => call(generateInviteLink: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$generateInviteLink<TRes>
    implements CopyWith$Mutation$generateInviteLink<TRes> {
  _CopyWithStubImpl$Mutation$generateInviteLink(this._res);

  TRes _res;

  call({Fragment$OkayResponse? generateInviteLink, String? $__typename}) =>
      _res;

  CopyWith$Fragment$OkayResponse<TRes> get generateInviteLink =>
      CopyWith$Fragment$OkayResponse.stub(_res);
}

const documentNodeMutationgenerateInviteLink = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'generateInviteLink'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateInvitationLinkInput'),
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
            name: NameNode(value: 'generateInviteLink'),
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
                  name: NameNode(value: 'OkayResponse'),
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
    fragmentDefinitionOkayResponse,
  ],
);
Mutation$generateInviteLink _parserFn$Mutation$generateInviteLink(
  Map<String, dynamic> data,
) => Mutation$generateInviteLink.fromJson(data);
typedef OnMutationCompleted$Mutation$generateInviteLink =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$generateInviteLink?,
    );

class Options$Mutation$generateInviteLink
    extends graphql.MutationOptions<Mutation$generateInviteLink> {
  Options$Mutation$generateInviteLink({
    String? operationName,
    required Variables$Mutation$generateInviteLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$generateInviteLink? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$generateInviteLink? onCompleted,
    graphql.OnMutationUpdate<Mutation$generateInviteLink>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null
                     ? null
                     : _parserFn$Mutation$generateInviteLink(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationgenerateInviteLink,
         parserFn: _parserFn$Mutation$generateInviteLink,
       );

  final OnMutationCompleted$Mutation$generateInviteLink? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$generateInviteLink
    extends graphql.WatchQueryOptions<Mutation$generateInviteLink> {
  WatchOptions$Mutation$generateInviteLink({
    String? operationName,
    required Variables$Mutation$generateInviteLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$generateInviteLink? typedOptimisticResult,
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
         document: documentNodeMutationgenerateInviteLink,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$generateInviteLink,
       );
}

extension ClientExtension$Mutation$generateInviteLink on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$generateInviteLink>>
  mutate$generateInviteLink(
    Options$Mutation$generateInviteLink options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$generateInviteLink>
  watchMutation$generateInviteLink(
    WatchOptions$Mutation$generateInviteLink options,
  ) => this.watchMutation(options);
}

class Mutation$generateInviteLink$HookResult {
  Mutation$generateInviteLink$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$generateInviteLink runMutation;

  final graphql.QueryResult<Mutation$generateInviteLink> result;
}

Mutation$generateInviteLink$HookResult useMutation$generateInviteLink([
  WidgetOptions$Mutation$generateInviteLink? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$generateInviteLink(),
  );
  return Mutation$generateInviteLink$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$generateInviteLink>
useWatchMutation$generateInviteLink(
  WatchOptions$Mutation$generateInviteLink options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$generateInviteLink
    extends graphql.MutationOptions<Mutation$generateInviteLink> {
  WidgetOptions$Mutation$generateInviteLink({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$generateInviteLink? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$generateInviteLink? onCompleted,
    graphql.OnMutationUpdate<Mutation$generateInviteLink>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null
                     ? null
                     : _parserFn$Mutation$generateInviteLink(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationgenerateInviteLink,
         parserFn: _parserFn$Mutation$generateInviteLink,
       );

  final OnMutationCompleted$Mutation$generateInviteLink? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$generateInviteLink =
    graphql.MultiSourceResult<Mutation$generateInviteLink> Function(
      Variables$Mutation$generateInviteLink, {
      Object? optimisticResult,
      Mutation$generateInviteLink? typedOptimisticResult,
    });
typedef Builder$Mutation$generateInviteLink =
    widgets.Widget Function(
      RunMutation$Mutation$generateInviteLink,
      graphql.QueryResult<Mutation$generateInviteLink>?,
    );

class Mutation$generateInviteLink$Widget
    extends graphql_flutter.Mutation<Mutation$generateInviteLink> {
  Mutation$generateInviteLink$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$generateInviteLink? options,
    required Builder$Mutation$generateInviteLink builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$generateInviteLink(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Variables$Mutation$generatePrintCard {
  factory Variables$Mutation$generatePrintCard({
    required Input$CreatePrintCardInput input,
  }) => Variables$Mutation$generatePrintCard._({r'input': input});

  Variables$Mutation$generatePrintCard._(this._$data);

  factory Variables$Mutation$generatePrintCard.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreatePrintCardInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$generatePrintCard._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreatePrintCardInput get input =>
      (_$data['input'] as Input$CreatePrintCardInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$generatePrintCard<
    Variables$Mutation$generatePrintCard
  >
  get copyWith => CopyWith$Variables$Mutation$generatePrintCard(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$generatePrintCard ||
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

abstract class CopyWith$Variables$Mutation$generatePrintCard<TRes> {
  factory CopyWith$Variables$Mutation$generatePrintCard(
    Variables$Mutation$generatePrintCard instance,
    TRes Function(Variables$Mutation$generatePrintCard) then,
  ) = _CopyWithImpl$Variables$Mutation$generatePrintCard;

  factory CopyWith$Variables$Mutation$generatePrintCard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$generatePrintCard;

  TRes call({Input$CreatePrintCardInput? input});
}

class _CopyWithImpl$Variables$Mutation$generatePrintCard<TRes>
    implements CopyWith$Variables$Mutation$generatePrintCard<TRes> {
  _CopyWithImpl$Variables$Mutation$generatePrintCard(
    this._instance,
    this._then,
  );

  final Variables$Mutation$generatePrintCard _instance;

  final TRes Function(Variables$Mutation$generatePrintCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$generatePrintCard._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreatePrintCardInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$generatePrintCard<TRes>
    implements CopyWith$Variables$Mutation$generatePrintCard<TRes> {
  _CopyWithStubImpl$Variables$Mutation$generatePrintCard(this._res);

  TRes _res;

  call({Input$CreatePrintCardInput? input}) => _res;
}

class Mutation$generatePrintCard {
  Mutation$generatePrintCard({
    required this.generatePrintCard,
    this.$__typename = 'Mutation',
  });

  factory Mutation$generatePrintCard.fromJson(Map<String, dynamic> json) {
    final l$generatePrintCard = json['generatePrintCard'];
    final l$$__typename = json['__typename'];
    return Mutation$generatePrintCard(
      generatePrintCard: Fragment$OkayResponse.fromJson(
        (l$generatePrintCard as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$OkayResponse generatePrintCard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$generatePrintCard = generatePrintCard;
    _resultData['generatePrintCard'] = l$generatePrintCard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$generatePrintCard = generatePrintCard;
    final l$$__typename = $__typename;
    return Object.hashAll([l$generatePrintCard, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$generatePrintCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$generatePrintCard = generatePrintCard;
    final lOther$generatePrintCard = other.generatePrintCard;
    if (l$generatePrintCard != lOther$generatePrintCard) {
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

extension UtilityExtension$Mutation$generatePrintCard
    on Mutation$generatePrintCard {
  CopyWith$Mutation$generatePrintCard<Mutation$generatePrintCard>
  get copyWith => CopyWith$Mutation$generatePrintCard(this, (i) => i);
}

abstract class CopyWith$Mutation$generatePrintCard<TRes> {
  factory CopyWith$Mutation$generatePrintCard(
    Mutation$generatePrintCard instance,
    TRes Function(Mutation$generatePrintCard) then,
  ) = _CopyWithImpl$Mutation$generatePrintCard;

  factory CopyWith$Mutation$generatePrintCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$generatePrintCard;

  TRes call({Fragment$OkayResponse? generatePrintCard, String? $__typename});
  CopyWith$Fragment$OkayResponse<TRes> get generatePrintCard;
}

class _CopyWithImpl$Mutation$generatePrintCard<TRes>
    implements CopyWith$Mutation$generatePrintCard<TRes> {
  _CopyWithImpl$Mutation$generatePrintCard(this._instance, this._then);

  final Mutation$generatePrintCard _instance;

  final TRes Function(Mutation$generatePrintCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? generatePrintCard = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$generatePrintCard(
      generatePrintCard:
          generatePrintCard == _undefined || generatePrintCard == null
          ? _instance.generatePrintCard
          : (generatePrintCard as Fragment$OkayResponse),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$OkayResponse<TRes> get generatePrintCard {
    final local$generatePrintCard = _instance.generatePrintCard;
    return CopyWith$Fragment$OkayResponse(
      local$generatePrintCard,
      (e) => call(generatePrintCard: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$generatePrintCard<TRes>
    implements CopyWith$Mutation$generatePrintCard<TRes> {
  _CopyWithStubImpl$Mutation$generatePrintCard(this._res);

  TRes _res;

  call({Fragment$OkayResponse? generatePrintCard, String? $__typename}) => _res;

  CopyWith$Fragment$OkayResponse<TRes> get generatePrintCard =>
      CopyWith$Fragment$OkayResponse.stub(_res);
}

const documentNodeMutationgeneratePrintCard = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'generatePrintCard'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreatePrintCardInput'),
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
            name: NameNode(value: 'generatePrintCard'),
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
                  name: NameNode(value: 'OkayResponse'),
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
    fragmentDefinitionOkayResponse,
  ],
);
Mutation$generatePrintCard _parserFn$Mutation$generatePrintCard(
  Map<String, dynamic> data,
) => Mutation$generatePrintCard.fromJson(data);
typedef OnMutationCompleted$Mutation$generatePrintCard =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$generatePrintCard?);

class Options$Mutation$generatePrintCard
    extends graphql.MutationOptions<Mutation$generatePrintCard> {
  Options$Mutation$generatePrintCard({
    String? operationName,
    required Variables$Mutation$generatePrintCard variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$generatePrintCard? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$generatePrintCard? onCompleted,
    graphql.OnMutationUpdate<Mutation$generatePrintCard>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null
                     ? null
                     : _parserFn$Mutation$generatePrintCard(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationgeneratePrintCard,
         parserFn: _parserFn$Mutation$generatePrintCard,
       );

  final OnMutationCompleted$Mutation$generatePrintCard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$generatePrintCard
    extends graphql.WatchQueryOptions<Mutation$generatePrintCard> {
  WatchOptions$Mutation$generatePrintCard({
    String? operationName,
    required Variables$Mutation$generatePrintCard variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$generatePrintCard? typedOptimisticResult,
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
         document: documentNodeMutationgeneratePrintCard,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$generatePrintCard,
       );
}

extension ClientExtension$Mutation$generatePrintCard on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$generatePrintCard>>
  mutate$generatePrintCard(Options$Mutation$generatePrintCard options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$generatePrintCard>
  watchMutation$generatePrintCard(
    WatchOptions$Mutation$generatePrintCard options,
  ) => this.watchMutation(options);
}

class Mutation$generatePrintCard$HookResult {
  Mutation$generatePrintCard$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$generatePrintCard runMutation;

  final graphql.QueryResult<Mutation$generatePrintCard> result;
}

Mutation$generatePrintCard$HookResult useMutation$generatePrintCard([
  WidgetOptions$Mutation$generatePrintCard? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$generatePrintCard(),
  );
  return Mutation$generatePrintCard$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$generatePrintCard>
useWatchMutation$generatePrintCard(
  WatchOptions$Mutation$generatePrintCard options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$generatePrintCard
    extends graphql.MutationOptions<Mutation$generatePrintCard> {
  WidgetOptions$Mutation$generatePrintCard({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$generatePrintCard? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$generatePrintCard? onCompleted,
    graphql.OnMutationUpdate<Mutation$generatePrintCard>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null
                     ? null
                     : _parserFn$Mutation$generatePrintCard(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationgeneratePrintCard,
         parserFn: _parserFn$Mutation$generatePrintCard,
       );

  final OnMutationCompleted$Mutation$generatePrintCard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$generatePrintCard =
    graphql.MultiSourceResult<Mutation$generatePrintCard> Function(
      Variables$Mutation$generatePrintCard, {
      Object? optimisticResult,
      Mutation$generatePrintCard? typedOptimisticResult,
    });
typedef Builder$Mutation$generatePrintCard =
    widgets.Widget Function(
      RunMutation$Mutation$generatePrintCard,
      graphql.QueryResult<Mutation$generatePrintCard>?,
    );

class Mutation$generatePrintCard$Widget
    extends graphql_flutter.Mutation<Mutation$generatePrintCard> {
  Mutation$generatePrintCard$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$generatePrintCard? options,
    required Builder$Mutation$generatePrintCard builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$generatePrintCard(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Variables$Mutation$login {
  factory Variables$Mutation$login({required Input$LoginInput input}) =>
      Variables$Mutation$login._({r'input': input});

  Variables$Mutation$login._(this._$data);

  factory Variables$Mutation$login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$LoginInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$login._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LoginInput get input => (_$data['input'] as Input$LoginInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$login<Variables$Mutation$login> get copyWith =>
      CopyWith$Variables$Mutation$login(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$login ||
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

abstract class CopyWith$Variables$Mutation$login<TRes> {
  factory CopyWith$Variables$Mutation$login(
    Variables$Mutation$login instance,
    TRes Function(Variables$Mutation$login) then,
  ) = _CopyWithImpl$Variables$Mutation$login;

  factory CopyWith$Variables$Mutation$login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$login;

  TRes call({Input$LoginInput? input});
}

class _CopyWithImpl$Variables$Mutation$login<TRes>
    implements CopyWith$Variables$Mutation$login<TRes> {
  _CopyWithImpl$Variables$Mutation$login(this._instance, this._then);

  final Variables$Mutation$login _instance;

  final TRes Function(Variables$Mutation$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$login._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$LoginInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$login<TRes>
    implements CopyWith$Variables$Mutation$login<TRes> {
  _CopyWithStubImpl$Variables$Mutation$login(this._res);

  TRes _res;

  call({Input$LoginInput? input}) => _res;
}

class Mutation$login {
  Mutation$login({required this.login, this.$__typename = 'Mutation'});

  factory Mutation$login.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$login(
      login: Fragment$LoginResponse.fromJson((l$login as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$LoginResponse login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([l$login, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$login || runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Mutation$login on Mutation$login {
  CopyWith$Mutation$login<Mutation$login> get copyWith =>
      CopyWith$Mutation$login(this, (i) => i);
}

abstract class CopyWith$Mutation$login<TRes> {
  factory CopyWith$Mutation$login(
    Mutation$login instance,
    TRes Function(Mutation$login) then,
  ) = _CopyWithImpl$Mutation$login;

  factory CopyWith$Mutation$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$login;

  TRes call({Fragment$LoginResponse? login, String? $__typename});
  CopyWith$Fragment$LoginResponse<TRes> get login;
}

class _CopyWithImpl$Mutation$login<TRes>
    implements CopyWith$Mutation$login<TRes> {
  _CopyWithImpl$Mutation$login(this._instance, this._then);

  final Mutation$login _instance;

  final TRes Function(Mutation$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? login = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$login(
          login: login == _undefined || login == null
              ? _instance.login
              : (login as Fragment$LoginResponse),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$LoginResponse<TRes> get login {
    final local$login = _instance.login;
    return CopyWith$Fragment$LoginResponse(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$login<TRes>
    implements CopyWith$Mutation$login<TRes> {
  _CopyWithStubImpl$Mutation$login(this._res);

  TRes _res;

  call({Fragment$LoginResponse? login, String? $__typename}) => _res;

  CopyWith$Fragment$LoginResponse<TRes> get login =>
      CopyWith$Fragment$LoginResponse.stub(_res);
}

const documentNodeMutationlogin = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'login'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'LoginInput'),
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
            name: NameNode(value: 'login'),
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
                  name: NameNode(value: 'LoginResponse'),
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
    fragmentDefinitionLoginResponse,
    fragmentDefinitionUserResponse,
    fragmentDefinitionTokenResponse,
  ],
);
Mutation$login _parserFn$Mutation$login(Map<String, dynamic> data) =>
    Mutation$login.fromJson(data);
typedef OnMutationCompleted$Mutation$login =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$login?);

class Options$Mutation$login extends graphql.MutationOptions<Mutation$login> {
  Options$Mutation$login({
    String? operationName,
    required Variables$Mutation$login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$login? onCompleted,
    graphql.OnMutationUpdate<Mutation$login>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$login(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationlogin,
         parserFn: _parserFn$Mutation$login,
       );

  final OnMutationCompleted$Mutation$login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$login
    extends graphql.WatchQueryOptions<Mutation$login> {
  WatchOptions$Mutation$login({
    String? operationName,
    required Variables$Mutation$login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$login? typedOptimisticResult,
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
         document: documentNodeMutationlogin,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$login,
       );
}

extension ClientExtension$Mutation$login on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$login>> mutate$login(
    Options$Mutation$login options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$login> watchMutation$login(
    WatchOptions$Mutation$login options,
  ) => this.watchMutation(options);
}

class Mutation$login$HookResult {
  Mutation$login$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$login runMutation;

  final graphql.QueryResult<Mutation$login> result;
}

Mutation$login$HookResult useMutation$login([
  WidgetOptions$Mutation$login? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$login(),
  );
  return Mutation$login$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$login> useWatchMutation$login(
  WatchOptions$Mutation$login options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$login
    extends graphql.MutationOptions<Mutation$login> {
  WidgetOptions$Mutation$login({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$login? onCompleted,
    graphql.OnMutationUpdate<Mutation$login>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$login(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationlogin,
         parserFn: _parserFn$Mutation$login,
       );

  final OnMutationCompleted$Mutation$login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$login =
    graphql.MultiSourceResult<Mutation$login> Function(
      Variables$Mutation$login, {
      Object? optimisticResult,
      Mutation$login? typedOptimisticResult,
    });
typedef Builder$Mutation$login =
    widgets.Widget Function(
      RunMutation$Mutation$login,
      graphql.QueryResult<Mutation$login>?,
    );

class Mutation$login$Widget extends graphql_flutter.Mutation<Mutation$login> {
  Mutation$login$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$login? options,
    required Builder$Mutation$login builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$login(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$refreshToken {
  Mutation$refreshToken({
    required this.refreshToken,
    this.$__typename = 'Mutation',
  });

  factory Mutation$refreshToken.fromJson(Map<String, dynamic> json) {
    final l$refreshToken = json['refreshToken'];
    final l$$__typename = json['__typename'];
    return Mutation$refreshToken(
      refreshToken: Fragment$LoginResponse.fromJson(
        (l$refreshToken as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$LoginResponse refreshToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$refreshToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$refreshToken || runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
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

extension UtilityExtension$Mutation$refreshToken on Mutation$refreshToken {
  CopyWith$Mutation$refreshToken<Mutation$refreshToken> get copyWith =>
      CopyWith$Mutation$refreshToken(this, (i) => i);
}

abstract class CopyWith$Mutation$refreshToken<TRes> {
  factory CopyWith$Mutation$refreshToken(
    Mutation$refreshToken instance,
    TRes Function(Mutation$refreshToken) then,
  ) = _CopyWithImpl$Mutation$refreshToken;

  factory CopyWith$Mutation$refreshToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$refreshToken;

  TRes call({Fragment$LoginResponse? refreshToken, String? $__typename});
  CopyWith$Fragment$LoginResponse<TRes> get refreshToken;
}

class _CopyWithImpl$Mutation$refreshToken<TRes>
    implements CopyWith$Mutation$refreshToken<TRes> {
  _CopyWithImpl$Mutation$refreshToken(this._instance, this._then);

  final Mutation$refreshToken _instance;

  final TRes Function(Mutation$refreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshToken = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$refreshToken(
      refreshToken: refreshToken == _undefined || refreshToken == null
          ? _instance.refreshToken
          : (refreshToken as Fragment$LoginResponse),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$LoginResponse<TRes> get refreshToken {
    final local$refreshToken = _instance.refreshToken;
    return CopyWith$Fragment$LoginResponse(
      local$refreshToken,
      (e) => call(refreshToken: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$refreshToken<TRes>
    implements CopyWith$Mutation$refreshToken<TRes> {
  _CopyWithStubImpl$Mutation$refreshToken(this._res);

  TRes _res;

  call({Fragment$LoginResponse? refreshToken, String? $__typename}) => _res;

  CopyWith$Fragment$LoginResponse<TRes> get refreshToken =>
      CopyWith$Fragment$LoginResponse.stub(_res);
}

const documentNodeMutationrefreshToken = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'refreshToken'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'LoginResponse'),
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
    fragmentDefinitionLoginResponse,
    fragmentDefinitionUserResponse,
    fragmentDefinitionTokenResponse,
  ],
);
Mutation$refreshToken _parserFn$Mutation$refreshToken(
  Map<String, dynamic> data,
) => Mutation$refreshToken.fromJson(data);
typedef OnMutationCompleted$Mutation$refreshToken =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$refreshToken?);

class Options$Mutation$refreshToken
    extends graphql.MutationOptions<Mutation$refreshToken> {
  Options$Mutation$refreshToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$refreshToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$refreshToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$refreshToken>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$refreshToken(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationrefreshToken,
         parserFn: _parserFn$Mutation$refreshToken,
       );

  final OnMutationCompleted$Mutation$refreshToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$refreshToken
    extends graphql.WatchQueryOptions<Mutation$refreshToken> {
  WatchOptions$Mutation$refreshToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$refreshToken? typedOptimisticResult,
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
         document: documentNodeMutationrefreshToken,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$refreshToken,
       );
}

extension ClientExtension$Mutation$refreshToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$refreshToken>> mutate$refreshToken([
    Options$Mutation$refreshToken? options,
  ]) async => await this.mutate(options ?? Options$Mutation$refreshToken());
  graphql.ObservableQuery<Mutation$refreshToken> watchMutation$refreshToken([
    WatchOptions$Mutation$refreshToken? options,
  ]) => this.watchMutation(options ?? WatchOptions$Mutation$refreshToken());
}

class Mutation$refreshToken$HookResult {
  Mutation$refreshToken$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$refreshToken runMutation;

  final graphql.QueryResult<Mutation$refreshToken> result;
}

Mutation$refreshToken$HookResult useMutation$refreshToken([
  WidgetOptions$Mutation$refreshToken? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$refreshToken(),
  );
  return Mutation$refreshToken$HookResult(
    ({optimisticResult, typedOptimisticResult}) => result.runMutation(
      const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$refreshToken> useWatchMutation$refreshToken([
  WatchOptions$Mutation$refreshToken? options,
]) => graphql_flutter.useWatchMutation(
  options ?? WatchOptions$Mutation$refreshToken(),
);

class WidgetOptions$Mutation$refreshToken
    extends graphql.MutationOptions<Mutation$refreshToken> {
  WidgetOptions$Mutation$refreshToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$refreshToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$refreshToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$refreshToken>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$refreshToken(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationrefreshToken,
         parserFn: _parserFn$Mutation$refreshToken,
       );

  final OnMutationCompleted$Mutation$refreshToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$refreshToken =
    graphql.MultiSourceResult<Mutation$refreshToken> Function({
      Object? optimisticResult,
      Mutation$refreshToken? typedOptimisticResult,
    });
typedef Builder$Mutation$refreshToken =
    widgets.Widget Function(
      RunMutation$Mutation$refreshToken,
      graphql.QueryResult<Mutation$refreshToken>?,
    );

class Mutation$refreshToken$Widget
    extends graphql_flutter.Mutation<Mutation$refreshToken> {
  Mutation$refreshToken$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$refreshToken? options,
    required Builder$Mutation$refreshToken builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$refreshToken(),
         builder: (run, result) => builder(
           ({optimisticResult, typedOptimisticResult}) => run(
             const {},
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Variables$Mutation$rsvp {
  factory Variables$Mutation$rsvp({required Input$CreateGuestInput input}) =>
      Variables$Mutation$rsvp._({r'input': input});

  Variables$Mutation$rsvp._(this._$data);

  factory Variables$Mutation$rsvp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateGuestInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$rsvp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateGuestInput get input =>
      (_$data['input'] as Input$CreateGuestInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$rsvp<Variables$Mutation$rsvp> get copyWith =>
      CopyWith$Variables$Mutation$rsvp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$rsvp || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Mutation$rsvp<TRes> {
  factory CopyWith$Variables$Mutation$rsvp(
    Variables$Mutation$rsvp instance,
    TRes Function(Variables$Mutation$rsvp) then,
  ) = _CopyWithImpl$Variables$Mutation$rsvp;

  factory CopyWith$Variables$Mutation$rsvp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$rsvp;

  TRes call({Input$CreateGuestInput? input});
}

class _CopyWithImpl$Variables$Mutation$rsvp<TRes>
    implements CopyWith$Variables$Mutation$rsvp<TRes> {
  _CopyWithImpl$Variables$Mutation$rsvp(this._instance, this._then);

  final Variables$Mutation$rsvp _instance;

  final TRes Function(Variables$Mutation$rsvp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$rsvp._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateGuestInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$rsvp<TRes>
    implements CopyWith$Variables$Mutation$rsvp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$rsvp(this._res);

  TRes _res;

  call({Input$CreateGuestInput? input}) => _res;
}

class Mutation$rsvp {
  Mutation$rsvp({required this.rsvp, this.$__typename = 'Mutation'});

  factory Mutation$rsvp.fromJson(Map<String, dynamic> json) {
    final l$rsvp = json['rsvp'];
    final l$$__typename = json['__typename'];
    return Mutation$rsvp(
      rsvp: (l$rsvp as List<dynamic>)
          .map(
            (e) => Fragment$GuestResponse.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$GuestResponse> rsvp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rsvp = rsvp;
    _resultData['rsvp'] = l$rsvp.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rsvp = rsvp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$rsvp.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$rsvp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rsvp = rsvp;
    final lOther$rsvp = other.rsvp;
    if (l$rsvp.length != lOther$rsvp.length) {
      return false;
    }
    for (int i = 0; i < l$rsvp.length; i++) {
      final l$rsvp$entry = l$rsvp[i];
      final lOther$rsvp$entry = lOther$rsvp[i];
      if (l$rsvp$entry != lOther$rsvp$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$rsvp on Mutation$rsvp {
  CopyWith$Mutation$rsvp<Mutation$rsvp> get copyWith =>
      CopyWith$Mutation$rsvp(this, (i) => i);
}

abstract class CopyWith$Mutation$rsvp<TRes> {
  factory CopyWith$Mutation$rsvp(
    Mutation$rsvp instance,
    TRes Function(Mutation$rsvp) then,
  ) = _CopyWithImpl$Mutation$rsvp;

  factory CopyWith$Mutation$rsvp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$rsvp;

  TRes call({List<Fragment$GuestResponse>? rsvp, String? $__typename});
  TRes rsvp(
    Iterable<Fragment$GuestResponse> Function(
      Iterable<CopyWith$Fragment$GuestResponse<Fragment$GuestResponse>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$rsvp<TRes>
    implements CopyWith$Mutation$rsvp<TRes> {
  _CopyWithImpl$Mutation$rsvp(this._instance, this._then);

  final Mutation$rsvp _instance;

  final TRes Function(Mutation$rsvp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? rsvp = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$rsvp(
          rsvp: rsvp == _undefined || rsvp == null
              ? _instance.rsvp
              : (rsvp as List<Fragment$GuestResponse>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes rsvp(
    Iterable<Fragment$GuestResponse> Function(
      Iterable<CopyWith$Fragment$GuestResponse<Fragment$GuestResponse>>,
    )
    _fn,
  ) => call(
    rsvp: _fn(
      _instance.rsvp.map((e) => CopyWith$Fragment$GuestResponse(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$rsvp<TRes>
    implements CopyWith$Mutation$rsvp<TRes> {
  _CopyWithStubImpl$Mutation$rsvp(this._res);

  TRes _res;

  call({List<Fragment$GuestResponse>? rsvp, String? $__typename}) => _res;

  rsvp(_fn) => _res;
}

const documentNodeMutationrsvp = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'rsvp'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateGuestInput'),
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
            name: NameNode(value: 'rsvp'),
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
Mutation$rsvp _parserFn$Mutation$rsvp(Map<String, dynamic> data) =>
    Mutation$rsvp.fromJson(data);
typedef OnMutationCompleted$Mutation$rsvp =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$rsvp?);

class Options$Mutation$rsvp extends graphql.MutationOptions<Mutation$rsvp> {
  Options$Mutation$rsvp({
    String? operationName,
    required Variables$Mutation$rsvp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$rsvp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$rsvp? onCompleted,
    graphql.OnMutationUpdate<Mutation$rsvp>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$rsvp(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationrsvp,
         parserFn: _parserFn$Mutation$rsvp,
       );

  final OnMutationCompleted$Mutation$rsvp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$rsvp
    extends graphql.WatchQueryOptions<Mutation$rsvp> {
  WatchOptions$Mutation$rsvp({
    String? operationName,
    required Variables$Mutation$rsvp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$rsvp? typedOptimisticResult,
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
         document: documentNodeMutationrsvp,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$rsvp,
       );
}

extension ClientExtension$Mutation$rsvp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$rsvp>> mutate$rsvp(
    Options$Mutation$rsvp options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$rsvp> watchMutation$rsvp(
    WatchOptions$Mutation$rsvp options,
  ) => this.watchMutation(options);
}

class Mutation$rsvp$HookResult {
  Mutation$rsvp$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$rsvp runMutation;

  final graphql.QueryResult<Mutation$rsvp> result;
}

Mutation$rsvp$HookResult useMutation$rsvp([
  WidgetOptions$Mutation$rsvp? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$rsvp(),
  );
  return Mutation$rsvp$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$rsvp> useWatchMutation$rsvp(
  WatchOptions$Mutation$rsvp options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$rsvp
    extends graphql.MutationOptions<Mutation$rsvp> {
  WidgetOptions$Mutation$rsvp({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$rsvp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$rsvp? onCompleted,
    graphql.OnMutationUpdate<Mutation$rsvp>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$rsvp(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationrsvp,
         parserFn: _parserFn$Mutation$rsvp,
       );

  final OnMutationCompleted$Mutation$rsvp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$rsvp =
    graphql.MultiSourceResult<Mutation$rsvp> Function(
      Variables$Mutation$rsvp, {
      Object? optimisticResult,
      Mutation$rsvp? typedOptimisticResult,
    });
typedef Builder$Mutation$rsvp =
    widgets.Widget Function(
      RunMutation$Mutation$rsvp,
      graphql.QueryResult<Mutation$rsvp>?,
    );

class Mutation$rsvp$Widget extends graphql_flutter.Mutation<Mutation$rsvp> {
  Mutation$rsvp$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$rsvp? options,
    required Builder$Mutation$rsvp builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$rsvp(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}
