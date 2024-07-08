import 'package:flutter/material.dart';
import 'package:futurehire/Screens/BottomBar.dart';
import 'package:futurehire/Screens/profilePage.dart';
import 'package:go_router/go_router.dart';
import 'package:futurehire/Screens/homepage.dart';
import 'package:futurehire/Screens/profilePage.dart';
import 'package:futurehire/Screens/Internships.dart';

import '../auth/login.dart';

// Define your routes
final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Login(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => BottomBar(
        si: 0,
      ),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => Profile(),
    ),
    GoRoute(
      path: '/internships',
      builder: (context, state) => Internships(),
    ),
  ],
);
