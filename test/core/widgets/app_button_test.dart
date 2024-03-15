import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gym/core/theme/app_colors.dart';
import 'package:gym/core/widgets/app_button.dart';

import '../../layout_tree.dart';

main() {
  testWidgets(
      'Testando o DESAPARECIMENTO do círculo de progresso dentro do botão',
      (widgetTester) async {
    var appButtonWidget = AppButton(
      circleProgressKey: const Key('AppButton_CircularProgressIndicator'),
      onPressed: () {},
      text: 'Teste',
      textColor: AppColors.neutralColor,
      background: AppColors.secondaryColor,

      progressColor: AppColors.neutralColor,
      borderColor: AppColors.neutralColor,
      loading: false,
    );

    await widgetTester.pumpWidget(
      LayoutTree(child: appButtonWidget),
    );

    expect(
        find.byKey(
          const Key('AppButton_CircularProgressIndicator'),
        ),
        findsNothing);
  });

  testWidgets('Testando o APARECIMENTO do círculo de progresso dentro do botão',
      (widgetTester) async {
    var appButtonWidget = AppButton(
      circleProgressKey: const Key('AppButton_CircularProgressIndicator'),
      onPressed: () {},
      text: 'Teste',
      textColor: AppColors.neutralColor,
      background: AppColors.secondaryColor,
      progressColor: AppColors.neutralColor,
      borderColor: AppColors.neutralColor,
      loading: true,
    );

    await widgetTester.pumpWidget(
      LayoutTree(child: appButtonWidget),
    );

    expect(
        find.byKey(
          const Key('AppButton_CircularProgressIndicator'),
        ),
        findsOneWidget);
  });
}
