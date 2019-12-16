import 'package:cc_uffs/app/pages/noticies/noticies_controller.dart';
import 'package:cc_uffs/app/utils/default_view.dart';
import 'package:cc_uffs/app/widgets/noticy_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class NoticiesView extends View {

  @override
  State<StatefulWidget> createState() => NoticiesViewState(NoticiesController());
  
}

class NoticiesViewState extends DefaultViewState<NoticiesView, NoticiesController> {
  NoticiesViewState(Controller controller) : super(controller);

  @override
  Widget defaultBuild(BuildContext context) {
    return Container(
      child: RefreshIndicator(
        onRefresh: () async => null,
        child: ListView(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          children: <Widget>[
            const NoticyCard(
              image: 'https://cc.uffs.edu.br/images/posts/teaser-sacc-400x250.jpg',
              title: 'Semana Acadêmica Ciência da Computação 2019',
              subtitle: '16 de Outubro de 2019'
            ),
            const NoticyCard(
              image: 'https://cc.uffs.edu.br/images/posts/teaser-aviso-1800x600.jpg',
              title: 'Ato deliberativo sobre carga horária mínima',
              subtitle: '15 de Outubro de 2019'
            ),
            const NoticyCard(
              image: 'https://cc.uffs.edu.br/images/posts/teaser-aviso-1800x600.jpg',
              title: 'Ato deliberativo sobre carga horária mínima',
              subtitle: '15 de Outubro de 2019'
            ),
          ],
        ),
      )
    );
  }

}