import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mind_ai/src/infra/ui/chat.dart';
import 'package:mind_ai/src/infra/ui/home.dart';

part 'router.g.dart';

@TypedGoRoute<SplashRoute>(path: '/splash', routes: [])
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    return '/home';
  }
}

@TypedGoRoute<HomeRoute>(
  path: '/home',
  routes: [
    TypedGoRoute<ChatRoute>(path: 'chats/:chatId'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  build(context, state) => const HomePage();
}

class ChatRoute extends GoRouteData {
  final String chatId;

  const ChatRoute({required this.chatId});

  const ChatRoute.create({this.chatId = 'create'});

  @override
  build(context, state) => ChatPage(chatId: chatId);
}
