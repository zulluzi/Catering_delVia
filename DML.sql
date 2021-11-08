--MASTER
	-- STAFFPOSITION
	INSERT INTO StaffPosition 
		VALUES ('SP001','CEO')
	INSERT INTO StaffPosition 
		VALUES ('SP002','Secretary')
	INSERT INTO StaffPosition 
		VALUES ('SP003','Treasurer')
	INSERT INTO StaffPosition 
		VALUES ('SP004','Marketing')
	INSERT INTO StaffPosition 
		VALUES ('SP005','Head Chef')
	INSERT INTO StaffPosition 
		VALUES ('SP006','Inventory Manager')
	INSERT INTO StaffPosition 
		VALUES ('SP007','Supervisor')
	INSERT INTO StaffPosition 
		VALUES ('SP008','Chef')
	INSERT INTO StaffPosition 
		VALUES ('SP009','Cashier')
	INSERT INTO StaffPosition 
		VALUES ('SP010','Promotion')

	--STAFF
	INSERT INTO Staff
		VALUES('ST001','Stefanus Hansen', 'SP001','Male','Stefansen24224@yahoo.com',
		'088248566987','Jl. Kemanggisan No 1B', 5000000)
	INSERT INTO Staff
		VALUES('ST002','Zulfahmi Martin', 'SP002','Male','mzulfahmi@gmail.com',
		'081346978546','Jl. Duren Sawit No 135', 4500000)
	INSERT INTO Staff
		VALUES('ST003','Adella Angelina', 'SP003','Female','AdellaGRav@yahoo.co.id',
		'088147859874','Jl. Kemajuan No 47A', 4000000)
	INSERT INTO Staff
		VALUES('ST004','Fatahillah Jaya', 'SP004','Male','Fatttttttt@gmail.com',
		'088989895654','Jl. Kemunduran Blok B No 5', 3500000)
	INSERT INTO Staff
		VALUES('ST005','Ocong Febriani', 'SP005','Female','ocong2039@yahoo.com',
		'088549878965','Jl. Kekananan No 20', 5000000)
	INSERT INTO Staff
		VALUES('ST006','Rachman Fatur', 'SP006','Male','rachmanfat@gmail.com',
		'081246847965','Jl. Kekirian Komplek Angsa No 7', 3000000)
	INSERT INTO Staff
		VALUES('ST007','Gravita Wijaya', 'SP007','Female','Gravitadel@yahoo.co.id',
		'081649796686','Jl. Kemayoran No 1A', 2500000)
	INSERT INTO Staff
		VALUES('ST008','Kate Ondang', 'SP008','Male','Fatttttttt@gmail.com',
		'084569855546','Jl. Asia Afrika No 33', 2000000)
	INSERT INTO Staff
		VALUES('ST009','Nadya Ahmad', 'SP009','Female','Nadya002@yahoo.com',
		'081649796686','Jl. Teluk Gong Gg F no 19', 1000000)
	INSERT INTO Staff
		VALUES('ST010','Agus Supono', 'SP010','Male','agusoop@gmail.com',
		'084569855546','Jl. Pluit Raya Selatan No 6', 600000)

	--Vendor
	INSERT INTO Vendor
		VALUES('VE001','PT. Hai Chicken','088136497878','Jl. Green Lake City Cluster Europe no 10')
	INSERT INTO Vendor
		VALUES('VE002','PT. Nadnad Beef','088136498778','Jl. Greenville no 7')
	INSERT INTO Vendor
		VALUES('VE003','PT. Zuls Store','081311116548','Jl. Hadiah Utama no 29B')
	INSERT INTO Vendor
		VALUES('VE004','PT. Nadnad Fish','082288889610','Jl. Greenville no 7')
	INSERT INTO Vendor
		VALUES('VE005','PT. VG tables','088647787987','Jl. Pramuka no 11A')
	INSERT INTO Vendor
		VALUES('VE006','PT. Jaya Fruit Store','088879879879','Jl. Bandengan Gg 3 no 10')
	INSERT INTO Vendor
		VALUES('VE007','PT. Abang Ingredients','088748648546','Jl. Kalimantan Komplek Utara No 9')
	INSERT INTO Vendor
		VALUES('VE008','PT. Abang Sauce','081299165670','Jl. Kalimantan Komplek Utara No 9')
	INSERT INTO Vendor
		VALUES('VE009','PT. Young Egg','088978484878','Jl. Makassar ')
	INSERT INTO Vendor
		VALUES('VE010','PT. Vitdel Ingredients','088899468777','Jl. Cipondoh Raya')
	INSERT INTO Vendor
		VALUES('VE011','PT. Mixon Water','081212457887','Jl. Pejagalan Raya no 90E')

	--Ingredient
	INSERT INTO Ingredient
		VALUES('ID001','Chicken',200,50000)
	INSERT INTO Ingredient
		VALUES('ID002','Cow Meet',300,35000)
	INSERT INTO Ingredient
		VALUES('ID003','Garlic',100,80000)
	INSERT INTO Ingredient
		VALUES('ID004','Snapper Fish',80,35000)
	INSERT INTO Ingredient
		VALUES('ID005','Brocolli',600,5000)
	INSERT INTO Ingredient
		VALUES('ID006','Orange',700,14000)
	INSERT INTO Ingredient
		VALUES('ID007','White Rice',460,40000)
	INSERT INTO Ingredient
		VALUES('ID008','Soy Sauce',330,21000)
	INSERT INTO Ingredient
		VALUES('ID009','Chieken Egg',450,23000)
	INSERT INTO Ingredient
		VALUES('ID010','Onions',200,12000)
	INSERT INTO Ingredient
		VALUES('ID011','Mineral Water',600,20000)

	--Customer
	INSERT INTO Customer
		VALUES('CU001','Fitriani','081233128236',
		'Jl. Kuningan Raya No 25C','Female','fitri25@yahoo.com')
	INSERT INTO Customer
		VALUES('CU002','David Sunjaya','088233144569',
		'Jl. Soekarno-Hatta No 10D','Male','sundavid@yahoo.co.id')
	INSERT INTO Customer
		VALUES('CU003','Desi Kristania','081279846987',
		'Jl. Pantai Mutiara No 30','Female','desides@gmail.com')
	INSERT INTO Customer
		VALUES('CU004','Roy Martin','081649874568',
		'Jl. Lodan Raya No 1 ','Male','roy_martin2@yahoo.com')
	INSERT INTO Customer
		VALUES('CU005','Ayu Ting Ting','088896647789',
		'Jl. Gajah Mada Gg 18 no 20','Female','itsayuting2@gmail.com')
	INSERT INTO Customer
		VALUES('CU006','Agnes Monica','081669877486',
		'Jl. Kemang Raya no 1B','Female','agnesmon1@gmail.com')
	INSERT INTO Customer
		VALUES('CU007','Supriyadi','088233144747',
		'Jl. Surya Kencana no 202','Male','supriyadi@yahoo.co.id')
	INSERT INTO Customer
		VALUES('CU008','Marcus Horison','089846977897',
		'Jl. Irian no 77','Male','marcushorison23@yahoo.com')
	INSERT INTO Customer
		VALUES('CU009','Budi Fasola','083314477880',
		'Jl. Pengukuran Komplek B no 39','Male','budidoremifasolasido@yahoo.com')
	INSERT INTO Customer
		VALUES('CU010','Kiki Andrini','081200331445',
		'Jl. Daan Mogot Raya no 2','Female','kikiandrinireal@yahoo.co.id')
	INSERT INTO Customer
		VALUES('CU011','Rani Aprilliani','084978468798',
		'Jl. Agus Salim no 100','Female','raniapril33@yahoo.co.id')
	INSERT INTO Customer
		VALUES('CU012','Angelina Harsono','088214569798',
		'Jl. Pattimura no 9','Female','angelharsono@yahoo.com')
	INSERT INTO Customer
		VALUES('CU013','Stefanie Fang','088899944456',
		'Jl. Tanjung Pura no 34C','Female','stefanifani@gmail.com')
	INSERT INTO Customer
		VALUES('CU014','Laura Cecilia','081245698850',
		'Jl. Ayani Komplek Batara no 1','Female','lauracecill@yahoo.com')
	INSERT INTO Customer
		VALUES('CU015','Abigail Gusmawan','085599663354',
		'Jl. Ayani Komplek Batara no 20','Female','abigusmawan@gmail.com')


	--MENU
	INSERT INTO Menu
		VALUES('ME001','Packet A','White Rice, Omelette, Fried chicken, Mineral Water',45000)
	INSERT INTO Menu
		VALUES('ME002','Packet B','Fried Rice, Beef Black Pepper, Beef Soup, Mineral Water',50000)
	INSERT INTO Menu
		VALUES('ME003','Packet C','Fried Rice, Fried Chicken, Siomay Bandung, Mineral Water',30000)
	INSERT INTO Menu
		VALUES('ME004','Packet D','White Rice, Snapper Black Pepper, Oyster Mushroom Broccoli Sauce, Orange Juice',75000)
	INSERT INTO Menu
		VALUES('ME005','Packet E','White Rice, Oyster Mushroom Broccoli Sauce, Fried Chicken, Mineral Water',35000)
	INSERT INTO Menu
		VALUES('ME006','Packet F','Fried Rice, Omelette, Fried Snapper, Mineral Water',60000)
	INSERT INTO Menu
		VALUES('ME007','Packet G','White Rice, Rendang, Fried Snapper, Orange Juice',70000)
	INSERT INTO Menu
		VALUES('ME008','Packet H','White Rice, Rendang, Beef Soup, Orange Juice',50000)
	INSERT INTO Menu
		VALUES('ME009','Packet I','Fried Rice, Rendang, Siomay Bandung, Mineral Water',40000)
	INSERT INTO Menu
		VALUES('ME010','Packet J','White Rice, Fried Snapper, Fried Chicken, Orange Juice',45000)

--Transaction
	--Purchase 
	INSERT INTO Purchase
		VALUES('PU001','ST001','VE010','2020-01-01','ID010',100)
	INSERT INTO Purchase
		VALUES('PU002','ST002','VE002','2020-02-01','ID002',150)
	INSERT INTO Purchase
		VALUES('PU003','ST003','VE003','2020-03-02','ID003',50)
	INSERT INTO Purchase
		VALUES('PU004','ST004','VE001','2020-04-02','ID001',100)
	INSERT INTO Purchase
		VALUES('PU005','ST007','VE007','2020-05-03','ID007',120)
	INSERT INTO Purchase
		VALUES('PU006','ST006','VE008','2020-05-03','ID008',100)
	INSERT INTO Purchase
		VALUES('PU007','ST009','VE009','2020-07-04','ID009',100)
	INSERT INTO Purchase
		VALUES('PU008','ST010','VE004','2020-07-04','ID004',30)
	INSERT INTO Purchase
		VALUES('PU009','ST005','VE005','2020-09-05','ID005',100)
	INSERT INTO Purchase
		VALUES('PU010','ST008','VE006','2020-09-05','ID006',100)
	INSERT INTO Purchase
		VALUES('PU011','ST007','VE008','2020-10-07','ID008',10)
	INSERT INTO Purchase
		VALUES('PU012','ST003','VE009','2020-11-07','ID009',200)
	INSERT INTO Purchase
		VALUES('PU013','ST002','VE004','2020-11-20','ID004',40)
	INSERT INTO Purchase
		VALUES('PU014','ST010','VE005','2020-12-05','ID005',210)
	INSERT INTO Purchase
		VALUES('PU015','ST004','VE011','2020-12-12','ID011',40)
		
	--ServicesTransaction
	INSERT INTO ServicesTransaction
		VALUES('TR001','ST001','CU001','ME010',40)
	INSERT INTO ServicesTransaction
		VALUES('TR002','ST002','CU002','ME009',100)
	INSERT INTO ServicesTransaction
		VALUES('TR003','ST003','CU003','ME008',100)
	INSERT INTO ServicesTransaction
		VALUES('TR004','ST004','CU004','ME007',200)
	INSERT INTO ServicesTransaction
		VALUES('TR005','ST005','CU005','ME006',50)
	INSERT INTO ServicesTransaction
		VALUES('TR006','ST006','CU006','ME005',250)
	INSERT INTO ServicesTransaction
		VALUES('TR007','ST007','CU007','ME004',250)
	INSERT INTO ServicesTransaction
		VALUES('TR008','ST008','CU008','ME003',150)
	INSERT INTO ServicesTransaction
		VALUES('TR009','ST009','CU009','ME002',40)
	INSERT INTO ServicesTransaction
		VALUES('TR010','ST010','CU010','ME001',100)
	INSERT INTO ServicesTransaction
		VALUES('TR011','ST001','CU011','ME002',100)
	INSERT INTO ServicesTransaction
		VALUES('TR012','ST002','CU012','ME003',100)
	INSERT INTO ServicesTransaction
		VALUES('TR013','ST003','CU013','ME004',50)
	INSERT INTO ServicesTransaction
		VALUES('TR014','ST004','CU014','ME005',60)
	INSERT INTO ServicesTransaction
		VALUES('TR015','ST005','CU015','ME006',50)
	INSERT INTO ServicesTransaction
		VALUES('TR016','ST006','CU015','ME007',100)
	INSERT INTO ServicesTransaction
		VALUES('TR017','ST007','CU015','ME008',50)
	INSERT INTO ServicesTransaction
		VALUES('TR018','ST008','CU001','ME009',30)
	INSERT INTO ServicesTransaction
		VALUES('TR019','ST009','CU002','ME010',20)
	INSERT INTO ServicesTransaction
		VALUES('TR020','ST010','CU005','ME003',80)
	INSERT INTO ServicesTransaction
		VALUES('TR021','ST009','CU006','ME004',100)
	INSERT INTO ServicesTransaction
		VALUES('TR022','ST008','CU015','ME005',50)
	INSERT INTO ServicesTransaction
		VALUES('TR023','ST007','CU014','ME006',40)
	INSERT INTO ServicesTransaction
		VALUES('TR024','ST006','CU014','ME007',30)
	INSERT INTO ServicesTransaction
		VALUES('TR025','ST005','CU001','ME008',100)

--TransactionDetail
	--TransactionDetail
	INSERT INTO TransactionDetail
		VALUES('TR001','2020-01-02','Birthday Party','2020-02-02','Hotel Agathon')
	INSERT INTO TransactionDetail
		VALUES('TR002','2020-02-01','Wedding','2020-05-07','Gedung Patrajasa')
	INSERT INTO TransactionDetail
		VALUES('TR003','2020-03-03','Wedding','2020-06-30','Gedung Serbaguna Galaksi')
	INSERT INTO TransactionDetail
		VALUES('TR004','2020-04-03','School/College','2020-05-03','SMPN 9 Jakarta')
	INSERT INTO TransactionDetail
		VALUES('TR005','2020-05-15','Birthday Party','2020-06-20','Hotel Ritz Carlton')
	INSERT INTO TransactionDetail
		VALUES('TR006','2020-05-26','Wedding','2020-08-26','The Westin Hotel')
	INSERT INTO TransactionDetail
		VALUES('TR007','2020-06-03','Wedding','2020-10-21','The Tribata DHarmawangsa')
	INSERT INTO TransactionDetail
		VALUES('TR008','2020-06-10','Wedding','2020-10-10','Gedung Gema Pesona Depok')
	INSERT INTO TransactionDetail
		VALUES('TR009','2020-06-20','School/College','2020-07-15','BINUS Kijang')
	INSERT INTO TransactionDetail
		VALUES('TR010','2020-06-23','Wedding','2020-10-31','Gedung SDELOG Polri')
	INSERT INTO TransactionDetail
		VALUES('TR011','2020-06-28','Wedding','2020-09-30','Hotel JW Marriot')
	INSERT INTO TransactionDetail
		VALUES('TR012','2020-07-19','Wedding','2020-10-19','Merlynn Park Hotel')
	INSERT INTO TransactionDetail
		VALUES('TR013','2020-08-08','School/College','2020-09-26','SMA Pusaka Abadi Jakarta')
	INSERT INTO TransactionDetail
		VALUES('TR014','2020-09-03','School/College','2020-09-25','BPK Penabur Pluit')
	INSERT INTO TransactionDetail
		VALUES('TR015','2020-09-06','School/College','2020-10-01','BINUS Syahdan')
	INSERT INTO TransactionDetail
		VALUES('TR016','2020-09-13','Wedding','2020-09-26','Gedung Al-Fath')
	INSERT INTO TransactionDetail
		VALUES('TR017','2020-09-25','Birthday Party','2020-10-04','Hotel Bidakara')
	INSERT INTO TransactionDetail
		VALUES('TR018','2020-10-15','Birthday Party','2020-10-25','Unity Building')
	INSERT INTO TransactionDetail
		VALUES('TR019','2020-10-18','School/College','2020-11-18','UNTAR Gedung R')
	INSERT INTO TransactionDetail
		VALUES('TR020','2020-10-28','School/College','2020-11-30','SMAN 87')
	INSERT INTO TransactionDetail
		VALUES('TR021','2020-11-05','Wedding','2020-12-05','Gedung Al-Fath')
	INSERT INTO TransactionDetail
		VALUES('TR022','2020-11-15','Birthday Party','2020-11-21','Resort Prima Cipayung Puncak')
	INSERT INTO TransactionDetail
		VALUES('TR023','2020-11-9','Birthday Party','2020-11-29','Hotel Grand Asia')
	INSERT INTO TransactionDetail
		VALUES('TR024','2020-12-03','School/College','2020-12-23','BINUS Alam Sutera')
	INSERT INTO TransactionDetail
		VALUES('TR025','2020-12-08','Wedding','2021-03-03','Gading Premier Hall')
