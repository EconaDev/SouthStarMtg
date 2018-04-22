// JavaScript Document

	function getAmortization(a,n,p) {
		var i=0;
		var sATline="";
		var oAmortizationTable=document.getElementById("amortizationtable");
		oAmortizationTable.style.visibility="visible";
		var sCR=String.fromCharCode(13);
		var sTab=String.fromCharCode(27);

		/* Calculate amortization and write table to text area **/
		var payment = getPayment(a,n,p);
		oAmortizationTable.value = sCR + "Monthly Payment = " + (Math.round(payment*100)/100) + sCR + sCR;
		oAmortizationTable.value += "Month  Balance    Principal  Interest  Payment    Total Interest" + sCR;
		var balance=a;
		var interest = 0.0;
		var principal=0.0;
		var totalinterest=0.0;
		for (i=1;i<=n;i++) {
			interest = balance*p/1200;
			totalinterest += interest;
			principal = payment-interest;
			balance -= principal;
			sATline = i.toString()+getSpaces(7-i.toString().length);
			sATline += Math.round(balance*100)/100;
			sATline += getSpaces(18-sATline.length);
			sATline += (Math.round(principal*100)/100);
			sATline += getSpaces(29-sATline.length);
			sATline += (Math.round(interest*100)/100);
			sATline += getSpaces(39-sATline.length);
			sATline += (Math.round(i*payment*100)/100);
			sATline += getSpaces(50-sATline.length);
			sATline += (Math.round(totalinterest*100)/100) + sCR;
			oAmortizationTable.value += sATline;
		}
	}

	function getSpaces(n) {
		var i=0; 
		var sSpaces="";
		for (i=0;i<n;i++) {sSpaces += " ";}
		return sSpaces;
	}

	function getPayment(a,n,p) {
		/* Calculates the monthly payment from annual percentage
		   rate, term of loan in months and loan amount. **/
		var acc=0;
		var base = 1 + p/1200;
		for (i=1;i<=n;i++) 
			{ acc += Math.pow(base,-i); }
		return a/acc;
	}