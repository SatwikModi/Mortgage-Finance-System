<!DOCTYPE HTML>
<html>
    <head>
     <title>EMI Calculator</title>
     <script type="text/javascript" src="EMICalculator.js"></script>

     <style>
   h1{
text-align: center;
             color: #F0000;
             font-style: italic;
             font-weight: bold;
    }
    
   table{
    text-align: left;
    margin-left: 35%;
    background-color: #00FFFF ;
   }
   td{
    padding: 10px;
   }
   
   
     </style>

<script type="text/javascript">

function calculateEMI(){
    var P = document.getElementById("principalAmount").value;
    var r = document.getElementById("interestRate").value;
    var R = (r/100)/12;
    var N = document.getElementById("tenure").value;
    var EMI = (P * R * Math.pow((1+R),N)/(Math.pow((1+R),N)-1)).toFixed(2);
    document.getElementById("result").innerHTML = "EMI is Rs."+EMI;
    return false;
}

</script>

   </head>
    <body>
        <form onsubmit="return calculateEMI()" >
        <h1>EMI Calculator</h1>
        <table>
         	<tr>
                <td><label id="l_principalAmount" >Principal Amount in Rs.</label></td>
                <td><input type="number" id="principalAmount" placeholder="Principal Amount" required></td>
            </tr>
            <tr>
                <td><label id="l_interestRate">Interest Per Annum</label></td>
                <td><input type="number" id="interestRate" placeholder="Interest Per Annum" required></td>
            </tr>
             <tr>
                <td><label id="l_tenure">Tenure in Months</label></td>
                <td><input type="number" id="tenure" placeholder="Tenure in Months" required></td>
            </tr>
            <tr>
             <td align="right"><input type="submit" id="submit"  value="Calculate" > </td>
             <td align="left"><input type="reset" id="reset"  value="Clear" > </td>
            </tr>
            <tr>
             <td colspan="2"> <div id="result"></div> </td>
            </tr>
        </table>
        
        
        </form>
    </body>
    
</html>