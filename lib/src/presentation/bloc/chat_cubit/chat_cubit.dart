import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_page_state.dart';
import 'package:gamer_tag/src/presentation/bloc/general_cubit/base_cubit.dart';

class ChatPageCubit extends BaseCubit<ChatPageState> {
  ChatPageCubit() : super(ChatPageInitState());
}
