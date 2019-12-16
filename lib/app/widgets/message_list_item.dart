import 'package:cc_uffs/theme/app_cc_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.grey, width: 0.5))
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: const NetworkImage('https://cc.uffs.edu.br/images/posts/teaser-aviso-1800x600.jpg')
              )
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Nome individuo'),
                      Text('22:59'),
                    ],
                  ),
                  Text('Ultima mensagem')
                ],
              )
            )
          )
        ],
      )
    );
  }
  
}