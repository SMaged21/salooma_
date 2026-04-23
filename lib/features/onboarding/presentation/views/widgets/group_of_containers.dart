import 'package:flutter/material.dart';
import 'package:salma_maged/features/onboarding/presentation/views/widgets/custom_container.dart';

class GroupOfContainers extends StatelessWidget {
  final bool index1;
  final bool index2;
  final bool index3;
  const GroupOfContainers({
    super.key,
    this.index1 = true,
    this.index2 = false,
    this.index3 = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        CustomContainer(isActivated: index1),
        SizedBox(width: 15),
        CustomContainer(isActivated: index2),
        SizedBox(width: 15),
        CustomContainer(isActivated: index3),
      ],
    );
  }
}
