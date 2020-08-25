import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todo_2/database.dart';

import 'database.dart';


void main() => runApp(MaterialApp(home: ToDo()));