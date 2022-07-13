import 'package:flutter/foundation.dart';
import 'package:razorpay_web/razorpay_web.dart';

payment({
  required int amount,
  required String userId,
  required String name,
  required String email,
  required String phone,
}) async {
  final _razorpay = Razorpay();
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("Success");
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
    'amount': 100 * 100,
    'currency': 'INR',
    "Notes": {"name": name, "email": email},
    'user': userId,
    'prefill': {
      'contact': "+91" + phone,
      'email': email,
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
