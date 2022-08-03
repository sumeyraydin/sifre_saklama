<?php

    //veritabanımızı bağlıyoruz 

    $servername= "localhost";
    $user="root";
    $pass="";
    $veritabanı="ogrenci";

    $conn= new mysqli ($servername, $user, $pass, $veritabanı);

    if ($conn -> connect_error ){
        die("connection : " .$conn -> conect_error);
    }
    
    //türkçe karakter sorunu için

    $conn->set_charset("utf8");


    //formdan gelen verilerimizi çekiyoruz


    $ad=$_POST ["ad"];
    $soyad=$_POST ["soyad"];
    $ogrno=$_POST ["ogrno"];
    $sifre=$_POST ["sifre"];
    $bolum=$_POST ["bolum"];
    $giris=$_POST ["tarih"];

    //salt ekledik

    $saltlanmis="46sfdh465s4dfh64sdh4shd4".$sifre."fjisfds6h46fds4h64fs6d" ;

    //hashledik

    $hashlenmis=hash('sha512',$saltlanmis);

    //prepared ifadelerle formdan gelen bilgilerimizi veritabanına  eklemek için kullanıyoruz


    $sorgu = $conn->prepare("INSERT INTO ogrenci (ad , soyad, ogrno, sifre,bolumu, giris_yili ) VALUES(?, ?, ?, ?, ?, ?)");
    $sorgu->bind_param ('ssssss', $ad, $soyad, $ogrno, $hashlenmis, $bolum, $giris);
    $sorgu->execute();

    if ($conn->errno > 0) {
        die("<b>Sorgu Hatası:</b> " . $conn->error);
    }

    $sorgu->close();
    $conn->close();

?>