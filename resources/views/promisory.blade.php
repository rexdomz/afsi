<!DOCTYPE html>
<html>
<head>
<title></title>
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
        padding: 0;
        font-size: 14px;
        margin: 0;
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
    p {
        font-size: 11pt;
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

    .marginless {
        margin: 0;
        padding: 0;
        line-height: 12px;
    }

    .space {
        height: 5px;
        width: 100%;
        float: left;
    }

    .border-btm {
        width: 100%;
        border-bottom: 1px solid #000;
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
        do hereby promise to pay ALLEN FINANCIAL SERVICES INCORPORATED or its order with business address at  Santa Filomena, Dipolog City, Philippines, the sum of _____________________________________________________________________ (Php <span class="underlyn big">{{ $profile->amount_loan }}</span> ) Philippine Currency, subject to the following terms, amortization and installment due to wit. </p>
        <p>1. The above amount shall be payable within two (2) months from the date of the note or until the whole amount is fully paid with interest at the rate of  ten percent ( 10 % ) per month to be paid on daily installment at ______________________________________________ (Php <span class="underlyn big">{{ number_format($ratePerDay,2) }}</span>) per day.<br>
        2. I/We further agree and obligate ourselves that in case of failure to pay any daily installment dues as above stated, said daily installment shall earn an interest of one percent ( 1 % ) per day , by way of liquidation damages until said daily installment is fully paid.<br>
        3. That further in the event, the principal, above stated or any portion thereof, is not fully paid on its due date, the remaining balance shall earn additional charge of one percent (1%) for each and every day, after such due date, until fully paid.<br>
        4. That I/We further bind ourselves to pay an additional amount of ten percent (10%) in case of extrajudicial collection, or twenty-five percent (25%) in case of judicial collection, based on the remaining principal obligation, by way of attorney’s fee.<br>
        5. That in case of litigation arising from or in connection with this note, the venue of any case as may be filed shall be at the decision of the creditor, the proper court in the City of Dipolog to the exclusion of other courts.</p>  

        <p>IN WITNESS WHEREOF, I/WE have hereunto set my/our  hand/s  this ________day of ________20________ in the City of Dipolog, Philippines.</p>
    </div>

    <table>
        <tr><td style="width:60%">&nbsp;</td>
            <td><h3 class="underlyn big txtmiddle marginless">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $profile->full_name }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3></td>
        </tr>
        <tr><td style="width:60%">&nbsp;</td>
            <td><p class="txtmiddle marginless">Promissor/Debtor</p></td>
        </tr>
        <tr>
            <td style="width:60%">&nbsp;</td>        
            <td style="width:40%"><p class="marginless">Res. Cert. No. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $profile->promisor_certno }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></td>            
        </tr>
        <tr>
            <td style="width:60%">&nbsp;</td>        
            <td style="width:40%"><p class="marginless">Issued On &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $profile->promisor_cert_issued_on }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></td>            
        </tr>
        <tr>
            <td style="width:60%">&nbsp;</td>        
            <td style="width:40%"><p class="marginless">Issued At &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $profile->promisor_cert_issued_at }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></td>            
        </tr>
    </table>

    <div class="">&nbsp;</div>

    <table>
        <tr>
            <td style="width:40%">
                <h3 class="underlyn big txtmiddle marginless">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {{ $profile->comaker1_name }} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
                <p class="txtmiddle marginless">Co-Maker</p>
                <p class="marginless">Res. Cert. No. {{ $profile->comaker1_certno }}</p>
                <p class="marginless">Issued On {{ $profile->comaker1_cert_issued_on }}</p>
                <p class="marginless">Issued At {{ $profile->comaker1_cert_issued_at }}</p>
            </td>
            <td style="width:20%">&nbsp;</td>
            <td style="width:40%">            
                <h3 class="underlyn big txtmiddle marginless">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {{ $profile->comaker2_name }} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
                <p class="txtmiddle marginless">Co-Maker</p>
                <p class="marginless">Res. Cert. No. {{ $profile->comaker2_certno }}</p>
                <p class="marginless">Issued On {{ $profile->comaker2_cert_issued_on }}</p>
                <p class="marginless">Issued At {{ $profile->comaker2_cert_issued_at }}</p>
            </td>
        </tr>        
    </table>

    <div class="">&nbsp;</div>    
    <p class="txtmiddle">Sign in the presence of </p>
    <div class="space">&nbsp;</div>  

    <table>
        <tr>
            <td style="width:40%">
                <h3 class="underlyn marginless border-btm">&nbsp;</h3>
            </td>
            <td style="width:20%">            
            <p class="txtmiddle">and</p>
            </td>
            <td style="width:40%">            
                <h3 class="underlyn marginless border-btm">&nbsp;</h3>
            </td>
        </tr>        
    </table>
    <h2 class="txtmiddle">A C K N O W L E D G E M E N T</h2>
    <p class="space" style="line-height: 12pt">REPUBLIC OF THE PHILIPPINES)<br>CITY OF DIPOLOG. . . . . . . . . . . . . . .) S.S.<br></p>
    <div style="margin-top: 25px;" class="space">&nbsp;</div>         
    <p style="margin: 5px 0; text-align: left">BEFORE ME, a notary public and in the City of Dipolog, Philippines, this ________ day of ___________________20_______. Personally appeared <span class="underlyn big txtmiddle marginless">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{ $profile->full_name }}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> with respective Res. Cert. No. _______________. The stated, know to me and to me known to be the same their own free and voluntary set and deed.</p>

    <table>
        <tr>
            <td style="width:50%">
                <p>Doc. No. _____________________________; <br> Page No. _____________________________; <br> Book No. _____________________________; <br> Series Of _____________________________.</p>
            </td>
            <td style="width:50%">            
                <p>AFS INC. DATE : _____________________ <br> RELEASED BY:_______________________ <br> SIGNATURE:________________________ </p>
            </td>
        </tr>        
    </table>
    
</body>
</html>