package com.battlehack.ny.emojipay.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.PaymentExecution;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.ShippingAddress;
import com.paypal.api.payments.Transaction;
import com.paypal.api.payments.Transactions;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.OAuthTokenCredential;
import com.paypal.base.rest.PayPalRESTException;

@Controller
public class PaypalController {
	Logger LOG = Logger.getLogger(PaypalController.class);

	private Map<String, String> sdkConfig = new HashMap<String, String>();
	
	@RequestMapping(value="/paypalAuth") 
	public String authorizePayment() {
		sdkConfig.put("mode", "sandbox");
		OAuthTokenCredential tokenCredential =
				new OAuthTokenCredential("AcEwF3x3-hGu2Wg1kZYfVoRr6cWp8Mo--hcwCA3qAlqD9Yj-vMjSC3d7lFSZZIbhvLtYwta8-OxYA2cQ",
						"EMZWWwDnjZcJI6B1x79K318LeGo3NcmNqz_9GQf1dszpfD-71wkfDY23EeWOidYswqk08JZiZCSL3NR3",sdkConfig);
		
		String accessToken = null;
		try {
			accessToken = tokenCredential.getAccessToken();
		} catch (PayPalRESTException e1) {
			LOG.info(e1);
			e1.printStackTrace();
		}
		APIContext apiContext = new APIContext(accessToken);
		apiContext.setConfigurationMap(sdkConfig);

		Amount amount = new Amount();
		amount.setCurrency("USD");
		amount.setTotal("12");

		Transaction transaction = new Transaction();
		transaction.setDescription("creating a payment");
		transaction.setAmount(amount);

		List<Transaction> transactions = new ArrayList<Transaction>();
		transactions.add(transaction);

		Payer payer = new Payer();
		payer.setPaymentMethod("paypal");
		PayerInfo payerInfo = new PayerInfo();
		payerInfo.setFirstName("Andrew");
		payerInfo.setLastName("Campbell");
		
		ShippingAddress shippingAddress = new ShippingAddress();
		shippingAddress.setCity("Wilmington");
		shippingAddress.setLine1("2117 Pyle Street");
		shippingAddress.setState("Delaware");
		shippingAddress.setPostalCode("19805");
		
		payerInfo.setShippingAddress(shippingAddress);
		payer.setPayerInfo(payerInfo);

		Payment payment = new Payment();
		payment.setIntent("sale");
		payment.setPayer(payer);

		payment.setTransactions(transactions);
		RedirectUrls redirectUrls = new RedirectUrls();
		String guid = UUID.randomUUID().toString().replaceAll("-", "");
		redirectUrls.setCancelUrl("https://localhost:8443/EmoticonPayments/paypalFail");
		redirectUrls.setReturnUrl("https://localhost:8443/EmoticonPayments/paypalSuccess?guid="+ guid);
		payment.setRedirectUrls(redirectUrls);

		Payment createdPayment = null;
		try {
			createdPayment = payment.create(apiContext);
		} catch (PayPalRESTException e) {
			LOG.info(e);
			e.printStackTrace();
		}
		for(Links link : createdPayment.getLinks()) {
			if(link.getRel().equals("approval_url")) {
				return "redirect:" + link.getHref();		
			}
		}
		return null;
	}
	
	@RequestMapping(value="/paypalSuccess") 
	public String makePayment(@RequestParam("paymentId") String paymentId,
			@RequestParam("token") String token, 
			@RequestParam("PayerID") String payerId,
			@RequestParam("guid") String guid) {
		OAuthTokenCredential tokenCredential =
				new OAuthTokenCredential("AcEwF3x3-hGu2Wg1kZYfVoRr6cWp8Mo--hcwCA3qAlqD9Yj-vMjSC3d7lFSZZIbhvLtYwta8-OxYA2cQ",
						"EMZWWwDnjZcJI6B1x79K318LeGo3NcmNqz_9GQf1dszpfD-71wkfDY23EeWOidYswqk08JZiZCSL3NR3", sdkConfig);

		String accessToken = null;
		try {
			accessToken = tokenCredential.getAccessToken();
		} catch (PayPalRESTException e1) {
			e1.printStackTrace();
		}
		APIContext apiContext = new APIContext(accessToken);
		sdkConfig.put("endPointUrl","https://api.sandbox.paypal.com/v1/payments/payment");
		apiContext.setConfigurationMap(sdkConfig);
		
		//Payment payment = new Payment();
		//payment.setId(guid);
		Payment payment = null;
		try {
			payment = Payment.get(apiContext, paymentId);
		} catch (PayPalRESTException e1) {
			e1.printStackTrace();
		}
		PaymentExecution paymentExecute = new PaymentExecution();
		paymentExecute.setPayerId(payerId);
		Payment newPayment = null;
		try {
			newPayment = payment.execute(apiContext, paymentExecute);
		} catch (PayPalRESTException e) {
			LOG.info(e);
			e.printStackTrace();
		}
		
		return "index";
	}
}
