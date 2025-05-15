import 'package:easy_guitalele_app/src/data/database_repository.dart';
import 'package:easy_guitalele_app/src/data/mock_database_repository.dart';
import 'package:easy_guitalele_app/src/easy_guitalele_app.dart';
import 'package:flutter/material.dart';

void main() {
  final DatabaseRepository myRepository = MockDatabaseRepository();
  runApp(EasyGuitaleleApp(myRepository));
}
