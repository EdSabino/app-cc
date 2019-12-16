import 'package:cc_uffs/app/pages/messages/messages_controller.dart';
import 'package:cc_uffs/app/utils/default_view.dart';
import 'package:cc_uffs/app/widgets/message_list_item.dart';
import 'package:cc_uffs/theme/app_cc_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class MessagesView extends View {
  @override
  State<StatefulWidget> createState() => MessagesViewState(MessagesController());
  
}

class MessagesViewState extends DefaultViewState<MessagesView, MessagesController> {
  MessagesViewState(Controller controller) : super(controller);
  @override
  Widget defaultBuild(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: () async => null,
        child: ListView(
          children: <Widget>[
            MessageItemList(),
            MessageItemList(),
            MessageItemList(),
          ],
        )
      )
    );
  }

}