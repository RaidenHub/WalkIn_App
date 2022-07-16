import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_web/razorpay_web.dart';
import 'package:walk_in/main.dart';

payment({
  required int amount,
  required String userId,
  required String name,
  required String email,
  required String phone,
  required BuildContext context,
}) async {
  final _razorpay = Razorpay();
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("Success");
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyApp()));
    print(response.paymentId.toString());
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print(response.message! + response.code.toString());
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print(
      response.walletName,
    );
  }

  var options = {
    'key': 'rzp_test_NsejSxR5U27dvg',
    'amount': 60 * 100,
    'currency': 'INR',
    "Notes": {"name": 'Pavan', "email": 'test@test.com'},
    'user': userId,
    'prefill': {
      'contact': "+91" + '1234567890',
      'email': 'test@test.com',
    },
  };

  try {
    _razorpay.open(options);
  } catch (e) {
    debugPrint(e.toString());
  }
  _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
  _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
}
