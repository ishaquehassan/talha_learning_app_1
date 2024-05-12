import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zap_test_app/gen/assets.gen.dart';
import 'package:zap_test_app/ui/common/app_colors.dart';
import 'package:zap_test_app/ui/common/app_text_styles.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Expanded(
              child: viewModel.selectedScreen

          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: [
                (icon: Assets.transactionIcon, label: "Home"),
                (icon: Assets.transactionIcon, label: "Transactions"),
                (icon: Assets.scanIcon, label: null),
                (icon: Assets.walletIcon, label: "Wallet"),
                (icon: Assets.settingsIcon, label: "Settings"),
              ]
                  .map(
                    (tabItem) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1, vertical: 11),
                        child: Column(
                          children: [
                            if (tabItem.label != null) ...[
                              tabItem.icon.image(
                                  color: AppColors.text, width: 24, height: 24),
                              const SizedBox(height: 2),
                              Text(
                                tabItem.label ?? "",
                                style: AppTextStyles.bold12px.copyWith(
                                  color: AppColors.text.withOpacity(.24),
                                ),
                              )
                            ],
                            if (tabItem.label == null)
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius:
                                        BorderRadius.circular(64 / 2)),
                                padding: const EdgeInsets.all(20),
                                child: tabItem.icon.image(
                                  color: Colors.white,
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
