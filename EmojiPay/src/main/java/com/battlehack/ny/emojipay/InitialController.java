package com.battlehack.ny.emojipay;

public class InitialController {

	
	private static BraintreeGateway gateway = new BraintreeGateway(
		Environment.SANDBOX,
	    merchantId:   'nr4j778pfv72vqcq',
	    publicKey:    '8j257k6cm2kzbv3b',
	    privateKey:   'e2dc17870612ac31c1afe533068bfa26'
	});
	
	
}
