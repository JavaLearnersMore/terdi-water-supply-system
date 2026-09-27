<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Payment Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 40px;
        }

        .container {
            max-width: 450px;
            margin: auto;
            background-color: white;
            padding: 25px 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-top: 15px;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 9px 10px;
            border-radius: 4px;
            border: 1px solid #3498db;
            box-sizing: border-box;
        }

        input:focus {
            outline: none;
            border-color: #2980b9;
        }

        button {
            margin-top: 25px;
            width: 100%;
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px;
            font-size: 18px;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #218838;
        }

        p {
            text-align: center;
            font-weight: bold;
        }

        .action-buttons {
            max-width: 450px;
            margin: auto;
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .action-buttons button {
            flex: 1;
            background-color: #3498db;
            padding: 12px 0;
            font-size: 16px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
        }

        .action-buttons button:hover {
            background-color: #2980b9;
        }

        .action-buttons button.cancel {
            background-color: #e74c3c;
        }

        .action-buttons button.cancel:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Payment Form</h2>

        <form id="paymentForm" action="processPayment" method="post" name="paymentFrm" >

			<!-- Hidden User ID -->
   			<input type="hidden" id="userId" name="user_id" value="${param.user_id}" />
   			
   			<!-- Bill No -->
		    <label for="billNo">Bill No</label>
		    <input type="text" id="billNo" name="bill_no" placeholder="Enter Bill Number" required />
		    
		    <!-- Full Name -->
		    <label for="userName">Full Name</label>
		    <input type="text" id="userName" name="user_name" value="${param.userName}" required />
		
		    <!-- Amount -->
		    <label for="amount">Amount</label>
		    <input type="number" id="amount" name="amount" placeholder="Enter amount" required />
		
		  	<!-- Month (Calendar for Month Selection) --> 
		  	<label for="month">Month</label> 
		  	<input type="month" id="month" name="month" required />	
			 	
			<!-- Date (Calendar for Date Selection) -->
		    <label for="paymentDate">Payment Date</label>
		    <input type="date" id="paymentDate" name="payment_date" required />
		
		    <!-- Submit Button -->
		    <button type="submit">Pay</button>
		</form>

            <button type="button" class="cancel" onclick="history.back()">Cancel</button>
        </div>
    </div>

</body>
</html>
