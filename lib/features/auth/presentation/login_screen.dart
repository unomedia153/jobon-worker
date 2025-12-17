import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_colors.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            Text(
              'JobOn 작업자',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8),
            const Text(
              '휴대폰 번호로 로그인하여\n오늘의 배차 현황을 확인하세요.',
            ),
            const SizedBox(height: 32),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: '휴대폰 번호',
                hintText: '예) 01012345678',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // TODO: 추후 휴대폰 번호 인증 로직 연동
                context.go('/home');
              },
              child: const Text('로그인'),
            ),
            const Spacer(),
            const Text(
              'By JobOn',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}


