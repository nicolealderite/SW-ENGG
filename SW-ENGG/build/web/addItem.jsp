<%-- 
Document   : addItem
Created on : Oct 16, 2017, 6:18:25 PM
Author     : Christian
--%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add New Item / Facility</title>
    <script
        src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
        crossorigin="anonymous">
    </script>
     
    <!-- Latest compiled and minified CSS -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

     <!-- Optional theme -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

     <!-- Latest compiled and minified JavaScript -->
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <form id="addItem" action="itemservlet" method="POST">
        <p> What do you want to add?
            <select id="type" name="type" >
                <option value="0" disabled selected> Select Type </option>
                <option value="item"> Item </option>
                <option value="facility"> Facility </option>
            </select>
        </p><br>    
        Name: <input name="name" type="text" placeholder="item name" required><br>
        <div id="div2">
            Address: <input id="address" name="address" type="text" placeholder="address" required> <br>
        </div>
        Description: <input name="description" type="text" placeholder="description" required> <br>
        <div id="div3">
            Initial Quantity: <input id="init_qty" name="init_qty" type="number" placeholder="initial quantity" required> <br>
        </div>
        Renting Price: <input name="price" type="number" step=".01" placeholder="renting price" required> <br>            
        <input type="submit" name="addItemBtn" value="Add Item">
            
    </form>
</body>
<script>
    $(document).ready(function(){
        $("#div2").hide();
        $("#div3").hide();
        $("#addItem input").prop("disabled", true);
        
    });
    $("#type").change(function(){
        $("#addItem input").prop("disabled", false);
        $("#addItem input").trigger("reset");
        if($("#type option:selected").val()==="item"){
            $("#address").prop("disabled", true);
            $("#div2").hide();
            $("#div3").show();
        }
        if($("#type option:selected").val()==="facility"){
            $("#init_qty").prop("disabled", true);
            $("#div3").hide();
            $("#div2").show();
        }
    });
    
</script>
</html>
