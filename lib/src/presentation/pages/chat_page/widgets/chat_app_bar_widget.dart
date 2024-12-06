import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gamer_tag/src/domain/entities/user_entity/user_entity.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/icon_widget.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/image_widget.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/text_widget.dart';
import 'package:gamer_tag/src/presentation/utils/constants/assets.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class ChatAppBarWidget extends StatelessWidget {
  final VoidCallback onSwitchUser;
  final UserEntity user;

  const ChatAppBarWidget({
    super.key,
    required this.onSwitchUser,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff1E1E1E).withOpacity(0.75),
        border: Border(
          bottom: BorderSide(
            color: context.colorScheme.surfaceContainer.withOpacity(0.36),
            width: 0.5,
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: const Color(0xffF9F9F9).withOpacity(0.94),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
          child: SafeArea(
            child: Row(
              children: [
                IconWidget(
                  icon: Icons.arrow_back_ios_new,
                  size: 24,
                  iconColor: context.colorScheme.primary,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: onSwitchUser,
                    child: Center(
                      child: Column(
                        children: [
                           ImageWidget(
                            imageUrl: user.avatar,
                            height: 50,
                            width: 50,
                            boxFit: BoxFit.cover,
                            boxShape: BoxShape.circle,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget.regular(
                                user.name,
                                context: context,
                                additionalStyle: TextStyle(fontSize: 12),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: context.colorScheme.surfaceContainer
                                    .withOpacity(0.34),
                                size: 12,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                IconWidget(
                  icon: Assets.videoIcon,
                  size: 24,
                  iconColor: context.colorScheme.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
