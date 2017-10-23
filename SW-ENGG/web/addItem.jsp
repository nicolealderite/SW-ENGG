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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style>
        input[type=text], input[type=password], input[type=number], #type {
            margin: 5px 0px;
        }
        .center-content{
            position:absolute;
            width: 350px;
            top: 5%;
            left: 275px;
            margin:0 auto;
        }
        
        body {
            font-family: "Helvetica";
        }
        .sidenav {
            height: 100%;
            width: 200px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            padding-top: 20px;
        }

        .sidenav a {
            padding: 6px 6px 6px 32px;
            text-decoration: none;
            font-size: 18px;
            color: #818181;
            display: block;
        }

        .sidenav a:hover {
            color: #f1f1f1;
        }


        @media screen and (max-height: 450px) {
          .sidenav {padding-top: 15px;}
          .sidenav a {font-size: 18px;}
        }
        
        .selected{
            color:#006699;
        }
    </style>
</head>
<body>
    <div class="sidenav">
        <a href="index.jsp">Home</a>
        <a href="#">Inventory</a>
        <a href="#">Add Stock</a>
        <a class="active" href="addItem.jsp">Create Stock</a>
        <a href="login.jsp">Login</a>
    </div>
    
    <div class="container center-content">
        <div class="page-header">
            <h2>Create Stock</h2>      
        </div>
    <form id="addItem" action="itemservlet" method="POST">
        <div class="form-group">
            <label for="type">What do you want to add?</label>
            <select id="type" name="type" class="form-control">
                <option value="0" disabled selected> Select Type </option>
                <option value="item"> Item </option>
                <option value="facility"> Facility </option>
            </select>
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input name="name" type="text" class="form-control" placeholder="item name" required>
        </div>
        <div id="div2" class="form-group">
            <label for="address">Address:</label>
            <input id="address" name="address" type="text" class="form-control" placeholder="address" required>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <input name="description" type="text" class="form-control" placeholder="short and sweet" required>
        </div>
        <div id="div3" class="form-group">
            <label for="init_qty">Initial Quantity:</label>
            <input id="init_qty" name="init_qty" type="number" class="form-control" placeholder="0" required>
        </div>
        <div class="form-group">
            <label for="price">Renting Price(in PhP):</label>
            <input name="price" type="number" step=".01" class="form-control" placeholder="0.00" required>         
        </div>
        <input type="submit" name="addItemBtn" class="btn btn-default" value="Add Item">
            
    </form>
    </div>
</body>
<script>
    $(document).ready(function(){
        $("#div2").hide();
        $("#div3").hide();
        $("#addItem input").prop("disabled", true);
        
    });
    $("#type").change(function(){
        $("#addItem input").prop("disabled", false);
        $('#addItem :not(.active) input:not([name="type"])').val('');
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
