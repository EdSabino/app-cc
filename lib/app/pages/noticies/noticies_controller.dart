import 'package:cc_uffs/app/pages/noticies/noticies_presenter.dart';
import 'package:cc_uffs/app/utils/default_controller.dart';

class NoticiesController extends DefaultController<NoticiesPresenter> {
  NoticiesController() :
    super(NoticiesPresenter());

  @override
  void initListeners() {
    title = 'Noticias';
    // TODO: implement initListeners
  }
}