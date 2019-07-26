<!DOCTYPE html>
<html>
<head>
<title></title>
<style type="text/css">
    table{
        border: 1px solid #eee;
        border-collapse: collapse;
        float: left;
        margin: 0;
        padding: 2px 4px;
        width: 100%;
    }
    td, th {
        text-align: left;
        padding: 5px;
        font-size: 11px;
        border: 1px solid #eee;
    }    
    tr {
        
    }
    h5 {
        margin: 2px auto;       
    }
    h3 {
        margin: 0;
        padding: 0;
        font-size: 16px;
        font-weight: bold;
    }

    p {
        margin: 0;
        padding: 0;
        font-size: 11px;
        line-height: 10pt;
    }
    
    .cardstitle {
        width: 80%;
        position: relative;        
        float:left;
    }

    .promimage {
        width: 20%;
        position: relative;        
        float:right;
    }

    .promimage img{
        display: block;
        width: 80px;
        padding: 0;        
    }

    .alignmiddle {
        text-align: center;
        line-height: 12pt;
        margin: 0 auto;
        padding: 0;
    }

</style>
</head>
<body>    
    <h3 class="alignmiddle">ALLEN FINANCIAL SERVICES INC.</h3>
    <p class="alignmiddle">Sta. Filomena Dipolog City</p>
    <div class="promimage">
        <p>Date: {{ date('Y-m-d') }} </p>
    </div>
    
    <div class="cardstitle"><p>
    @php
        if($area) {
            $item = json_decode($area);
            echo "<p>Area: <b>" . $item->area_code . "</b> | Collector: <b>" . $item->collector . "</b></p>";        
        } else {
            echo "<p>Area: <b>All</b> | Collector: <b>All</b></p>";
        }
    @endphp
    </p></div>         

    <table>
        <tr>     
            <th width="3%">No.</th>                           
            <th width="22%">Full Name</th>  
            <th width="8%">Payment</th>  

            <th width="3%">No.</th>                           
            <th width="22%">Full Name</th>  
            <th width="8%">Payment</th>  

            <th width="3%">No.</th>                           
            <th width="22%">Full Name</th>  
            <th width="8%">Payment</th>                                                                        
        </tr>   
        @php
        $ctr = 1;        
        foreach($profiles as $profile) {    
            if ($ctr == 1) {
                echo "<tr>";                                                    
            }                                        

            echo '<td width="3%">'. $ctr . '</td><td width="22%">'. $profile->full_name .'</td><td width="8%">'. $profile->status .'</td>';                        

            if ($ctr%3==0) {                  
                echo "</tr>";
            } 

            if ($ctr%3==0) {                  
                echo "<tr>";                                                    
            }  
                                                                    
            $ctr++;   
        }
        @endphp
    </table>
    
</body>
</html>