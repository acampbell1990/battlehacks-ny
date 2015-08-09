package com.battlehack.ny.emojipay.controller;

import com.braintreegateway.BraintreeGateway;
import com.braintreegateway.Environment;

public class BraintreeController {
	
	private static BraintreeGateway gateway = new BraintreeGateway(Environment.SANDBOX, 
			"nr4j778pfv72vqcq",
			"8j257k6cm2kzbv3b",
			"e2dc17870612ac31c1afe533068bfa26");
}
