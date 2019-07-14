<!DOCTYPE html>
<html>
<head>
<title>AFSI | Promisory Note</title>
<style type="text/css">
    table{
        border: none;
        border-collapse: collapse;
        float: left;
        margin: 10px 0;
        width: 100%;
    }
    td, th {
        text-align: left;
        padding: 6px 10px;
        font-size: 14px;
    }
    tr {
        border: none;
    }
    h3 {
        font-size: 17px;
    }
    h4 {
        font-size: 15px;
    }
    h5 {
        font-size: 13px;
        margin: 2px auto;       
    }
    .underlyn {
        text-decoration: underline;
    }

    .big {
        font-weight: bold;
    }

    .promimage {
        position: relative;        
    }

    .promimage img{
        display: block;
        width: 180px;
        padding: 0;
        margin: 0 auto;
    }

    .txtmiddle {
        text-align: center;
    }

</style>
</head>
<body>  
    <div class="promimage">
        <img src="{{ asset('img/afsi-logo.png') }}" alt="User Image"> 
    </div>
    <h2 class="txtmiddle big">PROMISSORY NOTE</h2>

    <table>
        <tr>
            <td style="width:70%">Amount Php: {{ $profile->loan }}</td>
            <td>Account No. <span>{{ date('Y') }}</span>-{{ $profile->id }}</td>
        </tr>
        <tr>
            <td style="width:70%">&nbsp;</td>
            <td>Date: {{ date('d-m-Y', strtotime($profile->date_from)) }}</td>
        </tr>        
    </table>

    <div>
        <p>FOR VALUE RECEIVED I/WE, <span class="underlyn big">{{ $profile->full_name }}</span> of Legal age, Filipino Married/Single and with residence and postal address at <span class="underlyn big">{{ $profile->address }}</span>, Philippines, 
        do hereby promise to pay ALLEN FINANCIAL SERVICES INCORPORATED or its order with business address at  Santa Filomena, Dipolog City, Philippines, the sum of ____________________________________________________________________________ (Php _______________________ ) Philippine Currency, subject to the following terms, amortization and installment due to wit. </p>
        <p>1. The above amount shall be payable within two (2) months from the date of the note or until the whole amount is fully paid with interest at the rate of  ten percent ( 10 % ) per month to be paid on daily installment at ______________________________________________ (Php________________________) per day.<br>
        2. I/We further agree and obligate ourselves that in case of failure to pay any daily installment dues as above stated, said daily installment shall earn an interest of one percent ( 1 % ) per day , by way of liquidation damages until said daily installment is fully paid.<br>
        3. That further in the event, the principal, above stated or any portion thereof, is not fully paid on its due date, the remaining balance shall earn additional charge of one percent (1%) for each and every day, after such due date, until fully paid.<br>
        4. That I/We further bind ourselves to pay an additional amount of ten percent (10%) in case of extrajudicial collection, or twenty-five percent (25%) in case of judicial collection, based on the remaining principal obligation, by way of attorney’s fee.<br>
        5. That in case of litigation arising from or in connection with this note, the venue of any case as may be filed shall be at the decision of the creditor, the proper court in the City of Dipolog to the exclusion of other courts.</p>  

        <p>IN WITNESS WHEREOF, I/WE have hereunto set my/our  hand/s  this ________day of ________20________ in the City of Dipolog, Philippines.</p>
    </div>

    <table>
        <tr><td style="width:70%">&nbsp;</td>
            <td>Name</td>
        </tr>
        <tr><td style="width:70%">&nbsp;</td>
            <td>Promissor/Debtor</td>
        </tr>
        <tr><td style="width:70%">&nbsp;</td>
            <td>Res. Cert. No.</td>
        </tr>
        <tr><td style="width:70%">&nbsp;</td>
            <td>Issued On</td>
        </tr>
        <tr><td style="width:70%">&nbsp;</td>
            <td>Issued At</td>
        </tr>
    </table>
    
</body>
</html>