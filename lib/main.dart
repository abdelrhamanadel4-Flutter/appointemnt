import 'package:appointemnt/core/Routing/app_router.dart';
import 'package:appointemnt/core/di/dependency_injection.dart';
import 'package:appointemnt/doc_doc.dart';
import 'package:flutter/material.dart';

void main() {
setupGetIt();

  runApp( DocApp(appRouter: AppRouter(),));
}


