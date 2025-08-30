import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../config/theme/app_theme.dart';
import 'custom_text.dart';

class WebViewScreen extends ConsumerStatefulWidget {
  final String url, title;
  final bool showCloseButton;

  const WebViewScreen({
    super.key,
    required this.url,
    required this.title,
    this.showCloseButton = false,
  });

  @override
  ConsumerState<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends ConsumerState<WebViewScreen> {
  WebViewController? _webViewController;

  @override
  void initState() {
    super.initState();
    initWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        foregroundColor: context.contentPrimary,
        backgroundColor: context.backgroundColor,
        elevation: 0,
        title: CustomText(text: widget.title, size: 16),
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _webViewController!),
          // if (accountController.onGoingDebit.value == "card" || widget.showCloseButton)
          //   Positioned(top: 20.h, right: 20.w, child: const CustomCloseBox()),
        ],
      ),
    );
  }

  initWebView() {
    _webViewController =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(const Color(0x00000000))
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (int progress) {
                // Update loading bar.
              },
              onPageStarted: (String url) {
                // https://api.ryd.mie/billing/paystack/success
                log(":::: from page Started room::: $url");
                // if (url.contains("success")) {
                //   log(":::::: we are inside the url watcher::::");
                //   //   Get.offNamedUntil(
                //   //       AppRouter.dashboardScreen, ModalRoute.withName(AppRouter.onboarding));
                // }
              },
              onPageFinished: (String url) {},
              onHttpError: (HttpResponseError error) {},
              onWebResourceError: (WebResourceError error) {},
              onNavigationRequest: (NavigationRequest request) {
                // if (request.url == "https://staging.dashboard.salariopay.com/login") {
                //   return NavigationDecision.prevent;
                // }
                if (request.url.contains("success")) {
                  log(":::::: we are inside on Navigate the url watcher::::");
                  Get.back(result: true);

                  return NavigationDecision.prevent;
                } else {
                  return NavigationDecision.navigate;
                }
              },
            ),
          )
          ..loadRequest(
            Uri.parse(
              widget.url.startsWith("https://")
                  ? widget.url
                  : "https://${widget.url}",
            ),
          );
  }
}
