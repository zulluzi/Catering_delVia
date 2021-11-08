--Pada tanggal 15 Desember 2020 ada customer yang datang ke kantor Catering delVia untuk catering di acara ulang tahun anaknya.
--Customer tersebut mengisi data diri terlebih dahulu, yaitu 
--		Nama		: Richie Jonathan
--		No. Telp	: 088555544698
--		Alamat		: Jl. Pejompongan Timur no 29AD
--      Email		: richiejojo22@gmail.com
--Setelah selesai, nantinya marketing akan menyimpan data diri customer ke dalam database Catering delVia 
--(Table Customer)
BEGIN TRANSACTION
	INSERT INTO Customer
		VALUES('CU016','Richie Jonathan','088555544698',
		'Jl. Pejompongan Timur no 29AD','Male','richiejojo22@gmail.com')
ROLLBACK TRANSACTION
--Selanjutnya customer diminta oleh marketing kami untuk mengisi data untuk pemesanan jasa dari Catering delVia, yaitu
--		Reservation Type : Birthday Party
--		Reservation Date : 22 Desember 2020
--		Reservation Address : JW Marriot Hotel
--		Pax (Max 50)	 : 40 Pax
--		Menu			 : Packet B
--Setelah selesai, nantinya marketing juga akan menyimpan data pemesanan customer ke dalam database Catering delVia 
--(Table ServicesTransaction & Table TransactionDetail)
BEGIN TRANSACTION
	INSERT INTO TransactionDetail
		VALUES('TR026','2020-12-15','Birthday Party','2020-12-22','JW Marriot Hotel')
	INSERT INTO ServicesTransaction
		VALUES('TR026','ST004','CU016','ME002',40)
ROLLBACK TRANSACTION
--Setelah membayar uang muka dan customer pulang, marketing akan melakukan pengecekan terhadap stock bahan yang diperlukan 
--untuk acara tersebut. Ternyata stock daging sapi, beras dan bawang putih habis. Oleh karena itu, marketing pun memerintahkan 
--inventory manager untuk membeli bahan - bahan tersebut pada hari berikutnya.
--(Table Purchase)
BEGIN TRANSACTION
	INSERT INTO Purchase
		VALUES('PU016','ST006','VE011','2020-12-16','ID002',150)
	INSERT INTO Purchase
		VALUES('PU017','ST006','VE011','2020-12-17','ID007',120)
	INSERT INTO Purchase
		VALUES('PU018','ST006','VE011','2020-12-18','ID003',50)
ROLLBACK TRANSACTION
--
--Jadi pada simulation transaction kali ini data pada table yang bertambah adalah data pada table Customer, TransactionDetail, 
--ServicesTransaction dan Purchase.
