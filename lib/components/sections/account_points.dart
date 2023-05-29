import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

import '../box_card.dart';
import '../color_dot.dart';
import '../content_division.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Pontos da Conta',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            BoxCard(
              boxContent: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Pontos totais:'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '3000',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  const ContentDivision(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                    child: Text(
                      'Objetivos:',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  _ObjectivePoints(
                    color: ThemeColors.recentActivity['delivery'],
                    text: 'Entrga gratis: 15000pts',
                  ),
                  _ObjectivePoints(
                    color: ThemeColors.recentActivity['streaming'],
                    text: '1 mês de streaming: 30000pts',
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class _ObjectivePoints extends StatelessWidget {
  final Color? color;
  final String text;

  const _ObjectivePoints({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          ColorDot(color: color),
          Text(text),
        ],
      ),
    );
  }
}
