<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="formcss.css">
    <title>Document</title>
</head>
<body>


    <?php

    if (isset($_POST["kulanici"])){
        $kullanici=$_POST["kulanici"]
        $sifre=$_POST["sifre"]
    }

    if(($kullanici=="admin")&& ($sifre=="123456")){
        echo "<p style= 'color:red ; font-sizez:14px;' > hoşgeldin ". $kullanici. "</p>"
    }

    else {
        echo "yanlış şifre, giriş yapılamadı"
    }
    else{

    
    ?>

<form method="POST"  action="11.haftaslaytuygulaması.php">

<div class="form-group">
    <input class="form-field" type="text" name="ad" placeholder="Ad giriniz ">
    
</div>

<div class="form-group">
    <input class="form-field" type="password" name="sifre" placeholder="Şifre giriniz">
    
</div>

<div class="form-group">
    <input class="form-field" type="submit" value="Kayıt ol" placeholder="Kayıt ol">
    
</div>

</form>


    

    
</body>
</html>