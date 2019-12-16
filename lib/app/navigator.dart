import 'package:cc_uffs/app/pages/login/login_view.dart';
import 'package:cc_uffs/app/pages/messages/messages_view.dart';
import 'package:cc_uffs/app/pages/noticies/noticies_view.dart';
import 'package:flutter/material.dart';
import 'package:navigate/navigate.dart';

Handler loginHandler = Handler(
  transactionType: TransactionType.fromRight,
  pageBuilder: (BuildContext context, dynamic arg){
    return LoginView();
  }
);

Handler noticiesHandler = Handler(
  transactionType: TransactionType.fromRight,
  pageBuilder: (BuildContext context, dynamic arg)   {
    return NoticiesView();
  }
);

Handler messagesHandler = Handler(
  transactionType: TransactionType.fromRight,
  pageBuilder: (BuildContext context, dynamic arg)   {
    return MessagesView();
  }
);

// define your route here
Map<String,Handler> route = <String, Handler>{
  'login': loginHandler,
  'noticies': noticiesHandler,
  'messages': messagesHandler
};