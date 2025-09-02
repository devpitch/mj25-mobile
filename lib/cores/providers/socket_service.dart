// import 'dart:async';
// import 'dart:math' as math;
//
// import 'package:rxdart/rxdart.dart';
// import 'package:event_handler/cores/cache/secure_storage_interactor.dart';
// import 'package:event_handler/injections/injector.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;
//
// enum SocketConnectionState {
//   disconnected,
//   connecting,
//   connected,
//   reconnecting,
//   error,
// }
//
// // Refactored SocketIOChannel
// class SocketIOChannel {
//   final String url;
//   final String? namespace;
//   IO.Socket? _socket;
//   final _connectionStateSubject = BehaviorSubject<SocketConnectionState>.seeded(
//     SocketConnectionState.disconnected,
//   );
//   final _eventStreamSubject = BehaviorSubject<Map<String, dynamic>>();
//
//   bool _isManuallyClosed = false;
//   bool _destroyed = false;
//
//   bool get destroyed => _destroyed;
//   int _retryCount = 0;
//   static const int _maxRetries = 5;
//   Timer? _reconnectionTimer;
//
//   SocketIOChannel(this.url, {Map<String, dynamic>? query, this.namespace}) {
//     _startConnection(query: query);
//   }
//
//   Stream<SocketConnectionState> get connectionState =>
//       _connectionStateSubject.stream;
//   Stream<Map<String, dynamic>> get eventStream => _eventStreamSubject.stream;
//   SocketConnectionState get currentState => _connectionStateSubject.value;
//   bool get isConnected => _socket?.connected == true;
//   String? get socketId => _socket?.id;
//
//   Map<String, dynamic> get connectionInfo => {
//     'url': url,
//     'namespace': namespace,
//     'state': currentState.toString(),
//     'retryCount': _retryCount,
//     'maxRetries': _maxRetries,
//     'isManuallyClosed': _isManuallyClosed,
//     'socketId': socketId,
//     'isConnected': isConnected,
//   };
//
//   void _startConnection({Map<String, dynamic>? query}) async {
//     if (_isManuallyClosed || _destroyed) return;
//
//     try {
//       _connectionStateSubject.add(SocketConnectionState.connecting);
//       final token = await getIt<SecureStorageInteractor>().token;
//       if (token == null || token.isEmpty) {
//         _connectionStateSubject.add(SocketConnectionState.error);
//         return;
//       }
//
//       final connectionUrl = namespace != null ? '$url$namespace' : url;
//
//       _socket?.disconnect();
//       _socket?.dispose();
//
//       _socket = IO.io(
//         connectionUrl,
//         IO.OptionBuilder()
//             .setTransports(['websocket'])
//             .setExtraHeaders({'authorization': token.trim()})
//             .setTimeout(10000)
//             .setReconnectionAttempts(_maxRetries - _retryCount)
//             .setReconnectionDelay(1000)
//             .setReconnectionDelayMax(30000)
//             .setQuery(query ?? {})
//             .disableAutoConnect()
//             .setRetries(5)
//             .build(),
//       );
//
//       _setupEventListeners();
//       _socket!.connect();
//     } catch (e, stackTrace) {
//       _connectionStateSubject.add(SocketConnectionState.error);
//       _handleLostConnection();
//     }
//   }
//
//   void _setupEventListeners() {
//     if (_socket == null) return;
//
//     _socket!
//       ..onConnect(
//         (_) => _connectionStateSubject.add(SocketConnectionState.connected),
//       )
//       ..onDisconnect((reason) {
//         if (!_isManuallyClosed) {
//           _connectionStateSubject.add(SocketConnectionState.disconnected);
//           _handleLostConnection();
//         }
//       })
//       ..onConnectError((error) => _handleLostConnection())
//       ..onError((_) => _connectionStateSubject.add(SocketConnectionState.error))
//       ..onAny(
//         (event, data) => _eventStreamSubject.add({
//           'event': event,
//           'data': data,
//           'timestamp': DateTime.now().millisecondsSinceEpoch,
//         }),
//       );
//   }
//
//   void _handleLostConnection() {
//     if (_isManuallyClosed || _retryCount >= _maxRetries || _destroyed) {
//       _connectionStateSubject.add(SocketConnectionState.error);
//       return;
//     }
//
//     _retryCount++;
//     final delay = Duration(
//       seconds: math.min(30, math.pow(2, _retryCount).toInt()),
//     );
//     _reconnectionTimer?.cancel();
//     _reconnectionTimer = Timer(delay, () {
//       if (!isConnected && !_isManuallyClosed && !_destroyed) _startConnection();
//     });
//   }
//
//   void reconnect() {
//     if (_destroyed) return;
//     _retryCount = 0;
//     _socket?.clearListeners();
//     _socket?.disconnect();
//     _socket?.close();
//     _socket?.dispose();
//     _socket = null;
//     Future.delayed(const Duration(milliseconds: 1000), () {
//       if (!_isManuallyClosed && !_destroyed) _startConnection();
//     });
//   }
//
//   Future<void> close() async {
//     _destroyed = true;
//     _isManuallyClosed = true;
//     _connectionStateSubject.add(SocketConnectionState.disconnected);
//     _reconnectionTimer?.cancel();
//     _socket?.clearListeners();
//     _socket?.disconnect();
//     await Future.delayed(const Duration(milliseconds: 100));
//     _socket?.close();
//     _socket?.dispose();
//     _socket = null;
//     await _eventStreamSubject.close();
//     await _connectionStateSubject.close();
//   }
// }
//
// ///
// ///
// ///
// // enum SocketConnectionState {
// //   disconnected,
// //   connecting,
// //   connected,
// //   reconnecting,
// //   error,
// // }
// //
// // class SocketIOChannel {
// //   /// Constructor that initializes the socket.io connection with the provided [url]
// //   SocketIOChannel(this.url, {Map<String, dynamic>? query, this.namespace}) {
// //     _startConnection(query: query);
// //   }
// //
// //   /// [url] for socket.io server
// //   final String url;
// //
// //   /// Optional namespace for the socket connection
// //   final String? namespace;
// //
// //   /// The underlying Socket.IO client
// //   IO.Socket? _socket;
// //
// //   /// Connection state subject
// //   final _connectionStateSubject = BehaviorSubject<SocketConnectionState>.seeded(
// //     SocketConnectionState.disconnected,
// //   );
// //
// //   /// Event stream subject for emitting socket events
// //   final _eventStreamSubject = BehaviorSubject<Map<String, dynamic>>();
// //
// //   /// Connection state stream
// //   Stream<SocketConnectionState> get connectionState =>
// //       _connectionStateSubject.stream;
// //
// //   /// Event stream for socket events
// //   Stream<Map<String, dynamic>> get eventStream => _eventStreamSubject.stream;
// //
// //   /// Current connection state
// //   SocketConnectionState get currentState => _connectionStateSubject.value;
// //
// //   /// Flags and counters for connection management
// //   bool _isManuallyClosed = false;
// //   int _retryCount = 0;
// //   static const int _maxRetries = 5;
// //
// //   /// Timer for manual reconnection attempts
// //   Timer? _reconnectionTimer;
// //
// //   /// Initiates the socket.io connection
// //   void _startConnection({Map<String, dynamic>? query}) async {
// //     if (_isManuallyClosed) return;
// //
// //     try {
// //       _connectionStateSubject.add(SocketConnectionState.connecting);
// //
// //       final secureStorageInteractor = getIt<SecureStorageInteractor>();
// //       final String? token = await secureStorageInteractor.token;
// //       log("::::The token is $token");
// //
// //       if (token == null || token.isEmpty) {
// //         log(
// //           'No authentication token available for: $url',
// //           name: 'SocketIOChannel',
// //         );
// //         _connectionStateSubject.add(SocketConnectionState.error);
// //         return;
// //       }
// //
// //       // Build the full URL with namespace if provided
// //       final String connectionUrl = namespace != null ? '$url$namespace' : url;
// //       log(
// //         "Connecting to Socket.IO server at: $connectionUrl",
// //         name: 'SocketIOChannel',
// //       );
// //
// //       // Disconnect previous socket if exists
// //       _socket?.disconnect();
// //       _socket?.dispose();
// //
// //       // Create Socket.IO client with options
// //       _socket = IO.io(
// //         connectionUrl,
// //         IO.OptionBuilder()
// //             .setTransports(['websocket']) // Force websocket transport
// //             .setExtraHeaders({'authorization': token.trim()}) // Authentication
// //             .setTimeout(10000) // 10 second timeout
// //             .setReconnectionAttempts(_maxRetries - _retryCount)
// //             .setReconnectionDelay(1000)
// //             .setReconnectionDelayMax(30000)
// //             .setQuery(query ?? {})
// //             .disableAutoConnect()
// //             .setRetries(5)
// //             .build(),
// //       );
// //
// //       _setupEventListeners();
// //
// //       // Connect manually if auto-connect is disabled
// //       _socket!.connect();
// //     } catch (e, stackTrace) {
// //       log(
// //         'Socket.IO connection error: $e at: $url',
// //         stackTrace: stackTrace,
// //         name: 'SocketIOChannel',
// //       );
// //       _connectionStateSubject.add(SocketConnectionState.error);
// //       _handleLostConnection();
// //     }
// //   }
// //
// //   /// Sets up Socket.IO event listeners
// //   void _setupEventListeners() {
// //     if (_socket == null) return;
// //
// //     // Connection events
// //     _socket!.onConnect((_) {
// //       log(
// //         'Socket.IO connected to: $url${namespace ?? ""}',
// //         name: 'SocketIOChannel',
// //       );
// //       _connectionStateSubject.add(SocketConnectionState.connected);
// //       // _retryCount = 0; // Reset retry count on successful connection
// //     });
// //
// //     _socket!.onDisconnect((reason) {
// //       log(
// //         'Socket.IO disconnected from: $url${namespace ?? ""}, reason: $reason',
// //         name: 'SocketIOChannel',
// //       );
// //
// //       // Only handle reconnection if not manually closed
// //       if (!_isManuallyClosed) {
// //         _connectionStateSubject.add(SocketConnectionState.disconnected);
// //         _handleLostConnection();
// //       } else {
// //         // If manually closed, ensure no further ping processing
// //         log(
// //           'Ignoring disconnect event - connection was manually closed',
// //           name: 'SocketIOChannel',
// //         );
// //       }
// //     });
// //
// //     _socket!.onConnectError((error) {
// //       log(
// //         'Socket.IO connection error: $error at: $url${namespace ?? ""}',
// //         name: 'SocketIOChannel',
// //       );
// //       if (!_isManuallyClosed) {
// //         _connectionStateSubject.add(SocketConnectionState.error);
// //         _handleLostConnection();
// //       }
// //     });
// //
// //     _socket!.onError((error) {
// //       log(
// //         'Socket.IO error: $error at: $url${namespace ?? ""}',
// //         name: 'SocketIOChannel',
// //       );
// //       if (!_isManuallyClosed) {
// //         _connectionStateSubject.add(SocketConnectionState.error);
// //       }
// //     });
// //
// //     _socket!.onAny((event, data) {
// //       // Handle the emitting of socket events
// //       final eventData = {
// //         'event': event,
// //         'data': data,
// //         'timestamp': DateTime.now().millisecondsSinceEpoch,
// //       };
// //
// //       _eventStreamSubject.add(eventData);
// //
// //       log('Received event: "$event" with data: $data', name: 'SocketIOChannel');
// //     });
// //   }
// //
// //   /// Handles lost connection for manual retry logic
// //   void _handleLostConnection() {
// //     log(":::: You called the retry state.>>>>0 ${_retryCount}");
// //     if (_isManuallyClosed || _retryCount >= _maxRetries) {
// //       log(":::: You called the retry state.>>>>1");
// //       if (_retryCount >= _maxRetries) {
// //         log(":::: You called the retry state.>>>>2");
// //         log(
// //           'Max retry attempts reached for: $url${namespace ?? ""}',
// //           name: 'SocketIOChannel',
// //         );
// //         _connectionStateSubject.add(SocketConnectionState.error);
// //       }
// //       log(":::: You called the retry state.>>>>3");
// //       return;
// //     }
// //     log(":::: You called the retry state.>>>>4");
// //     _retryCount++;
// //
// //     // Let Socket.IO handle automatic reconnection first
// //     // Only use manual reconnection as fallback
// //     final delay = Duration(
// //       seconds: math.min(30, math.pow(2, _retryCount).toInt()),
// //     );
// //     log(":::: You called the retry state.>>>>5");
// //     _reconnectionTimer?.cancel();
// //     _reconnectionTimer = Timer(delay, () {
// //       if (!_socket!.connected && !_isManuallyClosed) {
// //         log(":::: You called the retry state.>>>>6");
// //         log(
// //           'Manual reconnection attempt $_retryCount for: $url${namespace ?? ""}',
// //           name: 'SocketIOChannel',
// //         );
// //         log(":::: You called the retry state.>>>>7");
// //         _startConnection();
// //         log(":::: You called the retry state.>>>>8");
// //       }
// //     });
// //   }
// //
// //   /// Improved reconnect method with proper cleanup
// //   void reconnect() {
// //     log(
// //       'Manual reconnection requested for: $url${namespace ?? ""}',
// //       name: 'SocketIOChannel',
// //     );
// //     _retryCount = 0; // Reset retry count for manual reconnection
// //
// //     // Force close current connection if it exists
// //     if (_socket != null) {
// //       try {
// //         _socket!.clearListeners();
// //         _socket!.disconnect();
// //         _socket!.close();
// //         _socket!.dispose();
// //         _socket = null;
// //       } catch (e) {
// //         log('Error during reconnect cleanup: $e', name: 'SocketIOChannel');
// //         _socket = null;
// //       }
// //     }
// //
// //     // Wait longer before reconnecting to ensure cleanup
// //     Future.delayed(const Duration(milliseconds: 1000), () {
// //       if (!_isManuallyClosed) {
// //         _startConnection();
// //       }
// //     });
// //   }
// //
// //   /// Closes the Socket.IO connection with forced cleanup
// //   Future<void> close() async {
// //     log(
// //       'Closing Socket.IO connection at: $url${namespace ?? ""}',
// //       name: 'SocketIOChannel',
// //     );
// //     _isManuallyClosed = true;
// //     _connectionStateSubject.add(SocketConnectionState.disconnected);
// //
// //     // Cancel timers first
// //     _reconnectionTimer?.cancel();
// //
// //     // Remove all event listeners before disconnecting
// //     _socket?.clearListeners();
// //
// //     // Force disconnect with explicit close
// //     if (_socket != null) {
// //       try {
// //         // Disconnect the socket
// //         _socket!.disconnect();
// //
// //         // Wait a moment for graceful disconnection
// //         await Future.delayed(const Duration(milliseconds: 100));
// //
// //         // Force close the underlying connection
// //         _socket!.close();
// //
// //         // Dispose the socket instance
// //         _socket!.dispose();
// //         _socket!.destroy();
// //         _socket = null;
// //
// //         log(
// //           'Socket.IO connection forcefully closed at: $url${namespace ?? ""}',
// //           name: 'SocketIOChannel',
// //         );
// //       } catch (e) {
// //         log('Error during socket cleanup: $e', name: 'SocketIOChannel');
// //         _socket = null; // Ensure socket is nullified even if cleanup fails
// //       }
// //     }
// //
// //     // Close subjects
// //     try {
// //       await _eventStreamSubject.close();
// //     } catch (e) {
// //       log('Error closing event stream subject: $e', name: 'SocketIOChannel');
// //     }
// //
// //     try {
// //       await _connectionStateSubject.close();
// //     } catch (e) {
// //       log(
// //         'Error closing connection state subject: $e',
// //         name: 'SocketIOChannel',
// //       );
// //     }
// //   }
// //
// //   /// Checks if Socket.IO is connected
// //   bool get isConnected => _socket?.connected == true;
// //
// //   /// Gets the Socket.IO client ID
// //   String? get socketId => _socket?.id;
// //
// //   /// Gets connection info for debugging
// //   Map<String, dynamic> get connectionInfo => {
// //     'url': url,
// //     'namespace': namespace,
// //     'state': currentState.toString(),
// //     'retryCount': _retryCount,
// //     'maxRetries': _maxRetries,
// //     'isManuallyClosed': _isManuallyClosed,
// //     'socketId': socketId,
// //     'isConnected': isConnected,
// //   };
// // }
