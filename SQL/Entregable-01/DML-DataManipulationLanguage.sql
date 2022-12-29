-- https://pokemon.fandom.com/es/wiki/Medalla#Medallas
-- https://pokemon.fandom.com/es/wiki/Tipos_elementales
-- https://www.wikidex.net/wiki/L%C3%ADder_de_gimnasio
INSERT INTO leagues
    (name)
VALUES 
    ( 'Kanto'),
    ( 'Johto');

INSERT INTO medals (id_league,name) 
SELECT id_league , 'Roca'  FROM leagues WHERE name = 'Kanto'     UNION ALL
SELECT id_league , 'Cascada'  FROM leagues WHERE name = 'Kanto'  UNION ALL
SELECT id_league , 'Trueno'  FROM leagues WHERE name = 'Kanto'   UNION ALL
SELECT id_league , 'Arcoíris'  FROM leagues WHERE name = 'Kanto' UNION ALL
SELECT id_league , 'Alma'  FROM leagues WHERE name = 'Kanto'     UNION ALL
SELECT id_league , 'Pantano'  FROM leagues WHERE name = 'Kanto'  UNION ALL
SELECT id_league , 'Volcán'  FROM leagues WHERE name = 'Kanto'   UNION ALL
SELECT id_league , 'Tierra'  FROM leagues WHERE name = 'Kanto'   UNION ALL
SELECT id_league , 'Céfiro'  FROM leagues WHERE name = 'Johto'   UNION ALL
SELECT id_league , 'Colmena'  FROM leagues WHERE name = 'Johto'   UNION ALL
SELECT id_league , 'Planicie'  FROM leagues WHERE name = 'Johto'   UNION ALL
SELECT id_league , 'Niebla'  FROM leagues WHERE name = 'Johto'   UNION ALL
SELECT id_league , 'Tormenta'  FROM leagues WHERE name = 'Johto'   UNION ALL
SELECT id_league , 'Mineral'  FROM leagues WHERE name = 'Johto'   UNION ALL
SELECT id_league , 'Glaciar'  FROM leagues WHERE name = 'Johto'   UNION ALL
SELECT id_league , 'Dragón'  FROM leagues WHERE name = 'Johto' ;

INSERT INTO gym_leaders ( id_medal , name )
SELECT m.id_medal, 'Brock' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Kanto' and  m.name = 'Roca' UNION ALL
SELECT m.id_medal, 'Misty' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Kanto' and  m.name = 'Cascada' UNION ALL
SELECT m.id_medal, 'Lt. Surge' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Kanto' and  m.name = 'Trueno' UNION ALL
SELECT m.id_medal, 'Erika' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Kanto' and  m.name = 'Arcoíris' UNION ALL
SELECT m.id_medal, 'Koga' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Kanto' and  m.name = 'Alma' UNION ALL
SELECT m.id_medal, 'sabrina' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Kanto' and  m.name = 'Pantano' UNION ALL
SELECT m.id_medal, 'Blaine' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Kanto' and  m.name = 'Volcán' UNION ALL
SELECT m.id_medal, 'Azul' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Kanto' and  m.name = 'Tierra' UNION ALL
SELECT m.id_medal, 'Pegaso' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Johto' and  m.name = 'Céfiro' UNION ALL
SELECT m.id_medal, 'Antón' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Johto' and  m.name = 'Colmena' UNION ALL
SELECT m.id_medal, 'Blanca' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Johto' and  m.name = 'Planicie' UNION ALL
SELECT m.id_medal, 'Morti' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Johto' and  m.name = 'Niebla' UNION ALL
SELECT m.id_medal, 'Aníbal' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Johto' and  m.name = 'Tormenta' UNION ALL
SELECT m.id_medal, 'Yasmina' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Johto' and  m.name = 'Mineral' UNION ALL
SELECT m.id_medal, 'Fredo' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Johto' and  m.name = 'Glaciar' UNION ALL
SELECT m.id_medal, 'Débora' FROM medals m INNER JOIN leagues l ON m.id_league = l.id_league WHERE l.name='Johto' and  m.name = 'Dragón' ;

INSERT INTO Pokemons
(number,name,gender, height_cm, weight_kg, generation,is_legendary,classfication  ) VALUES
(1,'Bulbasaur','M',70,6.9,1,false,'Seed Pokemon'),
(2,'Ivysaur','M',100,13,1,false,'Seed Pokemon'),
(3,'Venusaur','M',200,100,1,false,'Seed Pokemon'),
(4,'Charmander','M',60,8.5,1,false,'Lizard Pokemon'),
(5,'Charmeleon','M',110,19,1,false,'Flame Pokemon'),
(6,'Charizard','M',170,90.5,1,false,'Flame Pokemon'),
(7,'Squirtle','M',50,9,1,false,'Tiny Turtle Pokemon'),
(8,'Wartortle','M',100,22.5,1,false,'Turtle Pokemon'),
(9,'Blastoise','M',160,85.5,1,false,'Shellfish Pokemon'),
(10,'Caterpie','M',30,2.9,1,false,'Worm Pokemon'),
(11,'Metapod','M',70,9.9,1,false,'Cocoon Pokemon'),
(12,'Butterfree','M',110,32,1,false,'Butterfly Pokemon'),
(13,'Weedle','M',30,3.2,1,false,'Hairy Pokemon'),
(14,'Kakuna','M',60,10,1,false,'Cocoon Pokemon'),
(15,'Beedrill','M',100,29.5,1,false,'Poison Bee Pokemon'),
(16,'Pidgey','M',30,1.8,1,false,'Tiny Bird Pokemon'),
(17,'Pidgeotto','M',110,30,1,false,'Bird Pokemon'),
(18,'Pidgeot','M',150,39.5,1,false,'Bird Pokemon'),
(19,'Rattata','M',0,NULL,1,false,'Mouse Pokemon'),
(20,'Raticate','M',0,NULL,1,false,'Mouse Pokemon'),
(21,'Spearow','M',30,2,1,false,'Tiny Bird Pokemon'),
(22,'Fearow','M',120,38,1,false,'Beak Pokemon'),
(23,'Ekans','M',200,6.9,1,false,'Snake Pokemon'),
(24,'Arbok','M',350,65,1,false,'Cobra Pokemon'),
(25,'Pikachu','M',40,6,1,false,'Mouse Pokemon'),
(26,'Raichu','M',0,NULL,1,false,'Mouse Pokemon'),
(27,'Sandshrew','M',0,NULL,1,false,'Mouse Pokemon'),
(28,'Sandslash','M',0,NULL,1,false,'Mouse Pokemon'),
(29,'Nidoran ♀','F',40,7,1,false,'Poison Pin Pokemon'),
(30,'Nidorina','F',80,20,1,false,'Poison Pin Pokemon'),
(31,'Nidoqueen','F',130,60,1,false,'Drill Pokemon'),
(32,'Nidoran ♂ ','M',50,9,1,false,'Poison Pin Pokemon'),
(33,'Nidorino','M',90,19.5,1,false,'Poison Pin Pokemon'),
(34,'Nidoking','M',140,62,1,false,'Drill Pokemon'),
(35,'Clefairy','M',60,7.5,1,false,'Fairy Pokemon'),
(36,'Clefable','M',130,40,1,false,'Fairy Pokemon'),
(37,'Vulpix','M',0,NULL,1,false,'Fox Pokemon'),
(38,'Ninetales','M',0,NULL,1,false,'Fox Pokemon'),
(39,'Jigglypuff','M',50,5.5,1,false,'Balloon Pokemon'),
(40,'Wigglytuff','M',100,12,1,false,'Balloon Pokemon'),
(41,'Zubat','M',80,7.5,1,false,'Bat Pokemon'),
(42,'Golbat','M',160,55,1,false,'Bat Pokemon'),
(43,'Oddish','M',50,5.4,1,false,'Weed Pokemon'),
(44,'Gloom','M',80,8.6,1,false,'Weed Pokemon'),
(45,'Vileplume','M',120,18.6,1,false,'Flower Pokemon'),
(46,'Paras','M',30,5.4,1,false,'Mushroom Pokemon'),
(47,'Parasect','M',100,29.5,1,false,'Mushroom Pokemon'),
(48,'Venonat','M',100,30,1,false,'Insect Pokemon'),
(49,'Venomoth','M',150,12.5,1,false,'Poison Moth Pokemon'),
(50,'Diglett','M',0,NULL,1,false,'Mole Pokemon'),
(51,'Dugtrio','M',0,NULL,1,false,'Mole Pokemon'),
(52,'Meowth','M',0,NULL,1,false,'Scratch Cat Pokemon'),
(53,'Persian','M',0,NULL,1,false,'Classy Cat Pokemon'),
(54,'Psyduck','M',80,19.6,1,false,'Duck Pokemon'),
(55,'Golduck','M',170,76.6,1,false,'Duck Pokemon'),
(56,'Mankey','M',50,28,1,false,'Pig Monkey Pokemon'),
(57,'Primeape','M',100,32,1,false,'Pig Monkey Pokemon'),
(58,'Growlithe','M',70,19,1,false,'Puppy Pokemon'),
(59,'Arcanine','M',190,155,1,false,'Legendary Pokemon'),
(60,'Poliwag','M',60,12.4,1,false,'Tadpole Pokemon'),
(61,'Poliwhirl','M',100,20,1,false,'Tadpole Pokemon'),
(62,'Poliwrath','M',130,54,1,false,'Tadpole Pokemon'),
(63,'Abra','M',90,19.5,1,false,'Psi Pokemon'),
(64,'Kadabra','M',130,56.5,1,false,'Psi Pokemon'),
(65,'Alakazam','M',150,48,1,false,'Psi Pokemon'),
(66,'Machop','M',80,19.5,1,false,'Superpower Pokemon'),
(67,'Machoke','M',150,70.5,1,false,'Superpower Pokemon'),
(68,'Machamp','M',160,130,1,false,'Superpower Pokemon'),
(69,'Bellsprout','M',70,4,1,false,'Flower Pokemon'),
(70,'Weepinbell','M',100,6.4,1,false,'Flycatcher Pokemon'),
(71,'Victreebel','M',170,15.5,1,false,'Flycatcher Pokemon'),
(72,'Tentacool','M',90,45.5,1,false,'Jellyfish Pokemon'),
(73,'Tentacruel','M',160,55,1,false,'Jellyfish Pokemon'),
(74,'Geodude','M',0,NULL,1,false,'Rock Pokemon'),
(75,'Graveler','M',0,NULL,1,false,'Rock Pokemon'),
(76,'Golem','M',0,NULL,1,false,'Megaton Pokemon'),
(77,'Ponyta','M',100,30,1,false,'Fire Horse Pokemon'),
(78,'Rapidash','M',170,95,1,false,'Fire Horse Pokemon'),
(79,'Slowpoke','M',120,36,1,false,'Dopey Pokemon'),
(80,'Slowbro','M',160,78.5,1,false,'Hermit Crab Pokemon'),
(81,'Magnemite','F',30,6,1,false,'Magnet Pokemon'),
(82,'Magneton','F',100,60,1,false,'Magnet Pokemon'),
(83,'Farfetchd','M',80,15,1,false,'Wild Duck Pokemon'),
(84,'Doduo','M',140,39.2,1,false,'Twin Bird Pokemon'),
(85,'Dodrio','M',180,85.2,1,false,'Triple Bird Pokemon'),
(86,'Seel','M',110,90,1,false,'Sea Lion Pokemon'),
(87,'Dewgong','M',170,120,1,false,'Sea Lion Pokemon'),
(88,'Grimer','M',0,NULL,1,false,'Sludge Pokemon'),
(89,'Muk','M',0,NULL,1,false,'Sludge Pokemon'),
(90,'Shellder','M',30,4,1,false,'Bivalve Pokemon'),
(91,'Cloyster','M',150,132.5,1,false,'Bivalve Pokemon'),
(92,'Gastly','M',130,0.1,1,false,'Gas Pokemon'),
(93,'Haunter','M',160,0.1,1,false,'Gas Pokemon'),
(94,'Gengar','M',150,40.5,1,false,'Shadow Pokemon'),
(95,'Onix','M',880,210,1,false,'Rock Snake Pokemon'),
(96,'Drowzee','M',100,32.4,1,false,'Hypnosis Pokemon'),
(97,'Hypno','M',160,75.6,1,false,'Hypnosis Pokemon'),
(98,'Krabby','M',40,6.5,1,false,'River Crab Pokemon'),
(99,'Kingler','M',130,60,1,false,'Pincer Pokemon'),
(100,'Voltorb','F',50,10.4,1,false,'Ball Pokemon'),
(101,'Electrode','F',120,66.6,1,false,'Ball Pokemon'),
(102,'Exeggcute','M',40,2.5,1,false,'Egg Pokemon'),
(103,'Exeggutor','M',0,NULL,1,false,'Coconut Pokemon'),
(104,'Cubone','M',40,6.5,1,false,'Lonely Pokemon'),
(105,'Marowak','M',0,NULL,1,false,'Bone Keeper Pokemon'),
(106,'Hitmonlee','M',150,49.8,1,false,'Kicking Pokemon'),
(107,'Hitmonchan','M',140,50.2,1,false,'Punching Pokemon'),
(108,'Lickitung','M',120,65.5,1,false,'Licking Pokemon'),
(109,'Koffing','M',60,1,1,false,'Poison Gas Pokemon'),
(110,'Weezing','M',120,9.5,1,false,'Poison Gas Pokemon'),
(111,'Rhyhorn','M',100,115,1,false,'Spikes Pokemon'),
(112,'Rhydon','M',190,120,1,false,'Drill Pokemon'),
(113,'Chansey','F',110,34.6,1,false,'Egg Pokemon'),
(114,'Tangela','M',100,35,1,false,'Vine Pokemon'),
(115,'Kangaskhan','F',220,80,1,false,'Parent Pokemon'),
(116,'Horsea','M',40,8,1,false,'Dragon Pokemon'),
(117,'Seadra','M',120,25,1,false,'Dragon Pokemon'),
(118,'Goldeen','M',60,15,1,false,'Goldfish Pokemon'),
(119,'Seaking','M',130,39,1,false,'Goldfish Pokemon'),
(120,'Staryu','F',80,34.5,1,false,'Starshape Pokemon'),
(121,'Starmie','F',110,80,1,false,'Mysterious Pokemon'),
(122,'Mr. Mime','M',130,54.5,1,false,'Barrier Pokemon'),
(123,'Scyther','M',150,56,1,false,'Mantis Pokemon'),
(124,'Jynx','F',140,40.6,1,false,'Humanshape Pokemon'),
(125,'Electabuzz','M',110,30,1,false,'Electric Pokemon'),
(126,'Magmar','M',130,44.5,1,false,'Spitfire Pokemon'),
(127,'Pinsir','M',150,55,1,false,'Stagbeetle Pokemon'),
(128,'Tauros','M',140,88.4,1,false,'Wild Bull Pokemon'),
(129,'Magikarp','M',90,10,1,false,'Fish Pokemon'),
(130,'Gyarados','M',650,235,1,false,'Atrocious Pokemon'),
(131,'Lapras','M',250,220,1,false,'Transport Pokemon'),
(132,'Ditto','F',30,4,1,false,'Transform Pokemon'),
(133,'Eevee','M',30,6.5,1,false,'Evolution Pokemon'),
(134,'Vaporeon','M',100,29,1,false,'Bubble Jet Pokemon'),
(135,'Jolteon','M',80,24.5,1,false,'Lightning Pokemon'),
(136,'Flareon','M',90,25,1,false,'Flame Pokemon'),
(137,'Porygon','F',80,36.5,1,false,'Virtual Pokemon'),
(138,'Omanyte','M',40,7.5,1,false,'Spiral Pokemon'),
(139,'Omastar','M',100,35,1,false,'Spiral Pokemon'),
(140,'Kabuto','M',50,11.5,1,false,'Shellfish Pokemon'),
(141,'Kabutops','M',130,40.5,1,false,'Shellfish Pokemon'),
(142,'Aerodactyl','M',180,59,1,false,'Fossil Pokemon'),
(143,'Snorlax','M',210,460,1,false,'Sleeping Pokemon'),
(144,'Articuno','F',170,55.4,1,true,'Freeze Pokemon'),
(145,'Zapdos','F',160,52.6,1,true,'Electric Pokemon'),
(146,'Moltres','F',200,60,1,true,'Flame Pokemon'),
(147,'Dratini','M',180,3.3,1,false,'Dragon Pokemon'),
(148,'Dragonair','M',400,16.5,1,false,'Dragon Pokemon'),
(149,'Dragonite','M',220,210,1,false,'Dragon Pokemon'),
(150,'Mewtwo','F',200,122,1,true,'Genetic Pokemon'),
(151,'Mew','F',40,4,1,true,'New Species Pokemon'),
(152,'Chikorita','M',90,6.4,2,false,'Leaf Pokemon'),
(153,'Bayleef','M',120,15.8,2,false,'Leaf Pokemon'),
(154,'Meganium','M',180,100.5,2,false,'Herb Pokemon'),
(155,'Cyndaquil','M',50,7.9,2,false,'Fire Mouse Pokemon'),
(156,'Quilava','M',90,19,2,false,'Volcano Pokemon'),
(157,'Typhlosion','M',170,79.5,2,false,'Volcano Pokemon'),
(158,'Totodile','M',60,9.5,2,false,'Big Jaw Pokemon'),
(159,'Croconaw','M',110,25,2,false,'Big Jaw Pokemon'),
(160,'Feraligatr','M',230,88.8,2,false,'Big Jaw Pokemon'),
(161,'Sentret','M',80,6,2,false,'Scout Pokemon'),
(162,'Furret','M',180,32.5,2,false,'Long Body Pokemon'),
(163,'Hoothoot','M',70,21.2,2,false,'Owl Pokemon'),
(164,'Noctowl','M',160,40.8,2,false,'Owl Pokemon'),
(165,'Ledyba','M',100,10.8,2,false,'Five Star Pokemon'),
(166,'Ledian','M',140,35.6,2,false,'Five Star Pokemon'),
(167,'Spinarak','M',50,8.5,2,false,'String Spit Pokemon'),
(168,'Ariados','M',110,33.5,2,false,'Long Leg Pokemon'),
(169,'Crobat','M',180,75,2,false,'Bat Pokemon'),
(170,'Chinchou','M',50,12,2,false,'Angler Pokemon'),
(171,'Lanturn','M',120,22.5,2,false,'Light Pokemon'),
(172,'Pichu','M',30,2,2,false,'Tiny Mouse Pokemon'),
(173,'Cleffa','M',30,3,2,false,'Star Shape Pokemon'),
(174,'Igglybuff','M',30,1,2,false,'Balloon Pokemon'),
(175,'Togepi','M',30,1.5,2,false,'Spike Ball Pokemon'),
(176,'Togetic','M',60,3.2,2,false,'Happiness Pokemon'),
(177,'Natu','M',20,2,2,false,'Little Bird Pokemon'),
(178,'Xatu','M',150,15,2,false,'Mystic Pokemon'),
(179,'Mareep','M',60,7.8,2,false,'Wool Pokemon'),
(180,'Flaaffy','M',80,13.3,2,false,'Wool Pokemon'),
(181,'Ampharos','M',140,61.5,2,false,'Light Pokemon'),
(182,'Bellossom','M',40,5.8,2,false,'Flower Pokemon'),
(183,'Marill','M',40,8.5,2,false,'Aquamouse Pokemon'),
(184,'Azumarill','M',80,28.5,2,false,'Aquarabbit Pokemon'),
(185,'Sudowoodo','M',120,38,2,false,'Imitation Pokemon'),
(186,'Politoed','M',110,33.9,2,false,'Frog Pokemon'),
(187,'Hoppip','M',40,0.5,2,false,'Cottonweed Pokemon'),
(188,'Skiploom','M',60,1,2,false,'Cottonweed Pokemon'),
(189,'Jumpluff','M',80,3,2,false,'Cottonweed Pokemon'),
(190,'Aipom','M',80,11.5,2,false,'Long Tail Pokemon'),
(191,'Sunkern','M',30,1.8,2,false,'Seed Pokemon'),
(192,'Sunflora','M',80,8.5,2,false,'Sun Pokemon'),
(193,'Yanma','M',120,38,2,false,'Clear Wing Pokemon'),
(194,'Wooper','M',40,8.5,2,false,'Water Fish Pokemon'),
(195,'Quagsire','M',140,75,2,false,'Water Fish Pokemon'),
(196,'Espeon','M',90,26.5,2,false,'Sun Pokemon'),
(197,'Umbreon','M',100,27,2,false,'Moonlight Pokemon'),
(198,'Murkrow','M',50,2.1,2,false,'Darkness Pokemon'),
(199,'Slowking','M',200,79.5,2,false,'Royal Pokemon'),
(200,'Misdreavus','M',70,1,2,false,'Screech Pokemon'),
(201,'Unown','F',50,5,2,false,'Symbol Pokemon'),
(202,'Wobbuffet','M',130,28.5,2,false,'Patient Pokemon'),
(203,'Girafarig','M',150,41.5,2,false,'Long Neck Pokemon'),
(204,'Pineco','M',60,7.2,2,false,'Bagworm Pokemon'),
(205,'Forretress','M',120,125.8,2,false,'Bagworm Pokemon'),
(206,'Dunsparce','M',150,14,2,false,'Land Snake Pokemon'),
(207,'Gligar','M',110,64.8,2,false,'Flyscorpion Pokemon'),
(208,'Steelix','M',920,400,2,false,'Iron Snake Pokemon'),
(209,'Snubbull','M',60,7.8,2,false,'Fairy Pokemon'),
(210,'Granbull','M',140,48.7,2,false,'Fairy Pokemon'),
(211,'Qwilfish','M',50,3.9,2,false,'Balloon Pokemon'),
(212,'Scizor','M',180,118,2,false,'Pincer Pokemon'),
(213,'Shuckle','M',60,20.5,2,false,'Mold Pokemon'),
(214,'Heracross','M',150,54,2,false,'Singlehorn Pokemon'),
(215,'Sneasel','M',90,28,2,false,'Sharp Claw Pokemon'),
(216,'Teddiursa','M',60,8.8,2,false,'Little Bear Pokemon'),
(217,'Ursaring','M',180,125.8,2,false,'Hibernator Pokemon'),
(218,'Slugma','M',70,35,2,false,'Lava Pokemon'),
(219,'Magcargo','M',80,55,2,false,'Lava Pokemon'),
(220,'Swinub','M',40,6.5,2,false,'Pig Pokemon'),
(221,'Piloswine','M',110,55.8,2,false,'Swine Pokemon'),
(222,'Corsola','M',60,5,2,false,'Coral Pokemon'),
(223,'Remoraid','M',60,12,2,false,'Jet Pokemon'),
(224,'Octillery','M',90,28.5,2,false,'Jet Pokemon'),
(225,'Delibird','M',90,16,2,false,'Delivery Pokemon'),
(226,'Mantine','M',210,220,2,false,'Kite Pokemon'),
(227,'Skarmory','M',170,50.5,2,false,'Armor Bird Pokemon'),
(228,'Houndour','M',60,10.8,2,false,'Dark Pokemon'),
(229,'Houndoom','M',140,35,2,false,'Dark Pokemon'),
(230,'Kingdra','M',180,152,2,false,'Dragon Pokemon'),
(231,'Phanpy','M',50,33.5,2,false,'Long Nose Pokemon'),
(232,'Donphan','M',110,120,2,false,'Armor Pokemon'),
(233,'Porygon2','F',60,32.5,2,false,'Virtual Pokemon'),
(234,'Stantler','M',140,71.2,2,false,'Big Horn Pokemon'),
(235,'Smeargle','M',120,58,2,false,'Painter Pokemon'),
(236,'Tyrogue','M',70,21,2,false,'Scuffle Pokemon'),
(237,'Hitmontop','M',140,48,2,false,'Handstand Pokemon'),
(238,'Smoochum','F',40,6,2,false,'Kiss Pokemon'),
(239,'Elekid','M',60,23.5,2,false,'Electric Pokemon'),
(240,'Magby','M',70,21.4,2,false,'Live Coal Pokemon'),
(241,'Miltank','F',120,75.5,2,false,'Milk Cow Pokemon'),
(242,'Blissey','F',150,46.8,2,false,'Happiness Pokemon'),
(243,'Raikou','F',190,178,2,true,'Thunder Pokemon'),
(244,'Entei','F',210,198,2,true,'Volcano Pokemon'),
(245,'Suicune','F',200,187,2,true,'Aurora Pokemon'),
(246,'Larvitar','M',60,72,2,false,'Rock Skin Pokemon'),
(247,'Pupitar','M',120,152,2,false,'Hard Shell Pokemon'),
(248,'Tyranitar','M',200,202,2,false,'Armor Pokemon'),
(249,'Lugia','F',520,216,2,true,'Diving Pokemon'),
(250,'Ho-Oh','F',380,199,2,true,'Rainbow Pokemon'),
(251,'Celebi','F',60,5,2,true,'Time Travel Pokemon'),
(252,'Treecko','M',50,5,3,false,'Wood Gecko Pokemon'),
(253,'Grovyle','M',90,21.6,3,false,'Wood Gecko Pokemon'),
(254,'Sceptile','M',170,52.2,3,false,'Forest Pokemon'),
(255,'Torchic','M',40,2.5,3,false,'Chick Pokemon'),
(256,'Combusken','M',90,19.5,3,false,'Young Fowl Pokemon'),
(257,'Blaziken','M',190,52,3,false,'Blaze Pokemon'),
(258,'Mudkip','M',40,7.6,3,false,'Mud Fish Pokemon'),
(259,'Marshtomp','M',70,28,3,false,'Mud Fish Pokemon'),
(260,'Swampert','M',150,81.9,3,false,'Mud Fish Pokemon'),
(261,'Poochyena','M',50,13.6,3,false,'Bite Pokemon'),
(262,'Mightyena','M',100,37,3,false,'Bite Pokemon'),
(263,'Zigzagoon','M',40,17.5,3,false,'Tiny Racoon Pokemon'),
(264,'Linoone','M',50,32.5,3,false,'Rush Pokemon'),
(265,'Wurmple','M',30,3.6,3,false,'Worm Pokemon'),
(266,'Silcoon','M',60,10,3,false,'Cocoon Pokemon'),
(267,'Beautifly','M',100,28.4,3,false,'Butterfly Pokemon'),
(268,'Cascoon','M',70,11.5,3,false,'Cocoon Pokemon'),
(269,'Dustox','M',120,31.6,3,false,'Poison Moth Pokemon'),
(270,'Lotad','M',50,2.6,3,false,'Water Weed Pokemon'),
(271,'Lombre','M',120,32.5,3,false,'Jolly Pokemon'),
(272,'Ludicolo','M',150,55,3,false,'Carefree Pokemon'),
(273,'Seedot','M',50,4,3,false,'Acorn Pokemon'),
(274,'Nuzleaf','M',100,28,3,false,'Wily Pokemon'),
(275,'Shiftry','M',130,59.6,3,false,'Wickid Pokemon'),
(276,'Taillow','M',30,2.3,3,false,'TinySwallow Pokemon'),
(277,'Swellow','M',70,19.8,3,false,'Swallow Pokemon'),
(278,'Wingull','M',60,9.5,3,false,'Seagull Pokemon'),
(279,'Pelipper','M',120,28,3,false,'Water Bird Pokemon'),
(280,'Ralts','M',40,6.6,3,false,'Feeling Pokemon'),
(281,'Kirlia','M',80,20.2,3,false,'Emotion Pokemon'),
(282,'Gardevoir','M',160,48.4,3,false,'Embrace Pokemon'),
(283,'Surskit','M',50,1.7,3,false,'Pond Skater Pokemon'),
(284,'Masquerain','M',80,3.6,3,false,'Eyeball Pokemon'),
(285,'Shroomish','M',40,4.5,3,false,'Mushroom Pokemon'),
(286,'Breloom','M',120,39.2,3,false,'Mushroom Pokemon'),
(287,'Slakoth','M',80,24,3,false,'Slacker Pokemon'),
(288,'Vigoroth','M',140,46.5,3,false,'Wild Monkey Pokemon'),
(289,'Slaking','M',200,130.5,3,false,'Lazy Pokemon'),
(290,'Nincada','M',50,5.5,3,false,'Trainee Pokemon'),
(291,'Ninjask','M',80,12,3,false,'Ninja Pokemon'),
(292,'Shedinja','F',80,1.2,3,false,'Shed Pokemon'),
(293,'Whismur','M',60,16.3,3,false,'Whisper Pokemon'),
(294,'Loudred','M',100,40.5,3,false,'Big Voice Pokemon'),
(295,'Exploud','M',150,84,3,false,'Loud Noise Pokemon'),
(296,'Makuhita','M',100,86.4,3,false,'Guts Pokemon'),
(297,'Hariyama','M',230,253.8,3,false,'Arm Thrust Pokemon'),
(298,'Azurill','M',20,2,3,false,'Polka Dot Pokemon'),
(299,'Nosepass','M',100,97,3,false,'Compass Pokemon'),
(300,'Skitty','M',60,11,3,false,'Kitten Pokemon'),
(301,'Delcatty','M',110,32.6,3,false,'Prim Pokemon'),
(302,'Sableye','M',50,11,3,false,'Darkness Pokemon'),
(303,'Mawile','M',60,11.5,3,false,'Deceiver Pokemon'),
(304,'Aron','M',40,60,3,false,'Iron Armor Pokemon'),
(305,'Lairon','M',90,120,3,false,'Iron Armor Pokemon'),
(306,'Aggron','M',210,360,3,false,'Iron Armor Pokemon'),
(307,'Meditite','M',60,11.2,3,false,'Meditate Pokemon'),
(308,'Medicham','M',130,31.5,3,false,'Meditate Pokemon'),
(309,'Electrike','M',60,15.2,3,false,'Lightning Pokemon'),
(310,'Manectric','M',150,40.2,3,false,'Discharge Pokemon'),
(311,'Plusle','M',40,4.2,3,false,'Cheering Pokemon'),
(312,'Minun','M',40,4.2,3,false,'Cheering Pokemon'),
(313,'Volbeat','M',70,17.7,3,false,'Firefly Pokemon'),
(314,'Illumise','F',60,17.7,3,false,'Firefly Pokemon'),
(315,'Roselia','M',30,2,3,false,'Thorn Pokemon'),
(316,'Gulpin','M',40,10.3,3,false,'Stomach Pokemon'),
(317,'Swalot','M',170,80,3,false,'Poison Bag Pokemon'),
(318,'Carvanha','M',80,20.8,3,false,'Savage Pokemon'),
(319,'Sharpedo','M',180,88.8,3,false,'Brutal Pokemon'),
(320,'Wailmer','M',200,130,3,false,'Ball Whale Pokemon'),
(321,'Wailord','M',1450,398,3,false,'Float Whale Pokemon'),
(322,'Numel','M',70,24,3,false,'Numb Pokemon'),
(323,'Camerupt','M',190,220,3,false,'Eruption Pokemon'),
(324,'Torkoal','M',50,80.4,3,false,'Coal Pokemon'),
(325,'Spoink','M',70,30.6,3,false,'Bounce Pokemon'),
(326,'Grumpig','M',90,71.5,3,false,'Manipulate Pokemon'),
(327,'Spinda','M',110,5,3,false,'Spot Panda Pokemon'),
(328,'Trapinch','M',70,15,3,false,'Ant Pit Pokemon'),
(329,'Vibrava','M',110,15.3,3,false,'Vibration Pokemon'),
(330,'Flygon','M',200,82,3,false,'Mystic Pokemon'),
(331,'Cacnea','M',40,51.3,3,false,'Cactus Pokemon'),
(332,'Cacturne','M',130,77.4,3,false,'Scarecrow Pokemon'),
(333,'Swablu','M',40,1.2,3,false,'Cotton Bird Pokemon'),
(334,'Altaria','M',110,20.6,3,false,'Humming Pokemon'),
(335,'Zangoose','M',130,40.3,3,false,'Cat Ferret Pokemon'),
(336,'Seviper','M',270,52.5,3,false,'Fang Snake Pokemon'),
(337,'Lunatone','F',100,168,3,false,'Meteorite Pokemon'),
(338,'Solrock','F',120,154,3,false,'Meteorite Pokemon'),
(339,'Barboach','M',40,1.9,3,false,'Whiskers Pokemon'),
(340,'Whiscash','M',90,23.6,3,false,'Whiskers Pokemon'),
(341,'Corphish','M',60,11.5,3,false,'Ruffian Pokemon'),
(342,'Crawdaunt','M',110,32.8,3,false,'Rogue Pokemon'),
(343,'Baltoy','F',50,21.5,3,false,'Clay Doll Pokemon'),
(344,'Claydol','F',150,108,3,false,'Clay Doll Pokemon'),
(345,'Lileep','M',100,23.8,3,false,'Sea Lily Pokemon'),
(346,'Cradily','M',150,60.4,3,false,'Barnacle Pokemon'),
(347,'Anorith','M',70,12.5,3,false,'Old Shrimp Pokemon'),
(348,'Armaldo','M',150,68.2,3,false,'Plate Pokemon'),
(349,'Feebas','M',60,7.4,3,false,'Fish Pokemon'),
(350,'Milotic','M',620,162,3,false,'Tender Pokemon'),
(351,'Castform','M',30,0.8,3,false,'Weather Pokemon'),
(352,'Kecleon','M',100,22,3,false,'Color Swap Pokemon'),
(353,'Shuppet','M',60,2.3,3,false,'Puppet Pokemon'),
(354,'Banette','M',110,12.5,3,false,'Marionette Pokemon'),
(355,'Duskull','M',80,15,3,false,'Requiem Pokemon'),
(356,'Dusclops','M',160,30.6,3,false,'Beckon Pokemon'),
(357,'Tropius','M',200,100,3,false,'Fruit Pokemon'),
(358,'Chimecho','M',60,1,3,false,'Wind Chime Pokemon'),
(359,'Absol','M',120,47,3,false,'Disaster Pokemon'),
(360,'Wynaut','M',60,14,3,false,'Bright Pokemon'),
(361,'Snorunt','M',70,16.8,3,false,'Snow Hat Pokemon'),
(362,'Glalie','M',150,256.5,3,false,'Face Pokemon'),
(363,'Spheal','M',80,39.5,3,false,'Clap Pokemon'),
(364,'Sealeo','M',110,87.6,3,false,'Ball Roll Pokemon'),
(365,'Walrein','M',140,150.6,3,false,'Ice Break Pokemon'),
(366,'Clamperl','M',40,52.5,3,false,'Bivalve Pokemon'),
(367,'Huntail','M',170,27,3,false,'Deep Sea Pokemon'),
(368,'Gorebyss','M',180,22.6,3,false,'South Sea Pokemon'),
(369,'Relicanth','M',100,23.4,3,false,'Longevity Pokemon'),
(370,'Luvdisc','M',60,8.7,3,false,'Rendezvous Pokemon'),
(371,'Bagon','M',60,42.1,3,false,'Rock Head Pokemon'),
(372,'Shelgon','M',110,110.5,3,false,'Endurance Pokemon'),
(373,'Salamence','M',150,102.6,3,false,'Dragon Pokemon'),
(374,'Beldum','F',60,95.2,3,false,'Iron Ball Pokemon'),
(375,'Metang','F',120,202.5,3,false,'Iron Claw Pokemon'),
(376,'Metagross','F',160,550,3,false,'Iron Leg Pokemon'),
(377,'Regirock','F',170,230,3,true,'Rock Peak Pokemon'),
(378,'Regice','F',180,175,3,true,'Iceberg Pokemon'),
(379,'Registeel','F',190,205,3,true,'Iron Pokemon'),
(380,'Latias','F',140,40,3,true,'Eon Pokemon'),
(381,'Latios','M',200,60,3,true,'Eon Pokemon'),
(382,'Kyogre','F',450,352,3,true,'Sea Basin Pokemon'),
(383,'Groudon','F',350,950,3,true,'Continent Pokemon'),
(384,'Rayquaza','F',700,206.5,3,true,'Sky High Pokemon'),
(385,'Jirachi','F',30,1.1,3,true,'Wish Pokemon'),
(386,'Deoxys','F',170,60.8,3,true,'DNA Pokemon'),
(387,'Turtwig','M',40,10.2,4,false,'Tiny Leaf Pokemon'),
(388,'Grotle','M',110,97,4,false,'Grove Pokemon'),
(389,'Torterra','M',220,310,4,false,'Continent Pokemon'),
(390,'Chimchar','M',50,6.2,4,false,'Chimp Pokemon'),
(391,'Monferno','M',90,22,4,false,'Playful Pokemon'),
(392,'Infernape','M',120,55,4,false,'Flame Pokemon'),
(393,'Piplup','M',40,5.2,4,false,'Penguin Pokemon'),
(394,'Prinplup','M',80,23,4,false,'Penguin Pokemon'),
(395,'Empoleon','M',170,84.5,4,false,'Emperor Pokemon'),
(396,'Starly','M',30,2,4,false,'Starling Pokemon'),
(397,'Staravia','M',60,15.5,4,false,'Starling Pokemon'),
(398,'Staraptor','M',120,24.9,4,false,'Predator Pokemon'),
(399,'Bidoof','M',50,20,4,false,'Plump Mouse Pokemon'),
(400,'Bibarel','M',100,31.5,4,false,'Beaver Pokemon'),
(401,'Kricketot','M',30,2.2,4,false,'Cricket Pokemon'),
(402,'Kricketune','M',100,25.5,4,false,'Cricket Pokemon'),
(403,'Shinx','M',50,9.5,4,false,'Flash Pokemon'),
(404,'Luxio','M',90,30.5,4,false,'Spark Pokemon'),
(405,'Luxray','M',140,42,4,false,'Gleam Eyes Pokemon'),
(406,'Budew','M',20,1.2,4,false,'Bud Pokemon'),
(407,'Roserade','M',90,14.5,4,false,'Bouquet Pokemon'),
(408,'Cranidos','M',90,31.5,4,false,'Head Butt Pokemon'),
(409,'Rampardos','M',160,102.5,4,false,'Head Butt Pokemon'),
(410,'Shieldon','M',50,57,4,false,'Shield Pokemon'),
(411,'Bastiodon','M',130,149.5,4,false,'Shield Pokemon'),
(412,'Burmy','M',20,3.4,4,false,'Bagworm Pokemon'),
(413,'Wormadam','F',50,6.5,4,false,'Bagworm Pokemon'),
(414,'Mothim','M',90,23.3,4,false,'Moth Pokemon'),
(415,'Combee','M',30,5.5,4,false,'Tiny Bee Pokemon'),
(416,'Vespiquen','F',120,38.5,4,false,'Beehive Pokemon'),
(417,'Pachirisu','M',40,3.9,4,false,'EleSquirrel Pokemon'),
(418,'Buizel','M',70,29.5,4,false,'Sea Weasel Pokemon'),
(419,'Floatzel','M',110,33.5,4,false,'Sea Weasel Pokemon'),
(420,'Cherubi','M',40,3.3,4,false,'Cherry Pokemon'),
(421,'Cherrim','M',50,9.3,4,false,'Blossom Pokemon'),
(422,'Shellos','M',30,6.3,4,false,'Sea Slug Pokemon'),
(423,'Gastrodon','M',90,29.9,4,false,'Sea Slug Pokemon'),
(424,'Ambipom','M',120,20.3,4,false,'Long Tail Pokemon'),
(425,'Drifloon','M',40,1.2,4,false,'Balloon Pokemon'),
(426,'Drifblim','M',120,15,4,false,'Blimp Pokemon'),
(427,'Buneary','M',40,5.5,4,false,'Rabbit Pokemon'),
(428,'Lopunny','M',120,33.3,4,false,'Rabbit Pokemon'),
(429,'Mismagius','M',90,4.4,4,false,'Magical Pokemon'),
(430,'Honchkrow','M',90,27.3,4,false,'Big Boss Pokemon'),
(431,'Glameow','M',50,3.9,4,false,'Catty Pokemon'),
(432,'Purugly','M',100,43.8,4,false,'Tiger Cat Pokemon'),
(433,'Chingling','M',20,0.6,4,false,'Bell Pokemon'),
(434,'Stunky','M',40,19.2,4,false,'Skunk Pokemon'),
(435,'Skuntank','M',100,38,4,false,'Skunk Pokemon'),
(436,'Bronzor','F',50,60.5,4,false,'Bronze Pokemon'),
(437,'Bronzong','F',130,187,4,false,'Bronze Bell Pokemon'),
(438,'Bonsly','M',50,15,4,false,'Bonsai Pokemon'),
(439,'Mime Jr.','M',60,13,4,false,'Mime Pokemon'),
(440,'Happiny','F',60,24.4,4,false,'Playhouse Pokemon'),
(441,'Chatot','M',50,1.9,4,false,'Music Note Pokemon'),
(442,'Spiritomb','M',100,108,4,false,'Forbidden Pokemon'),
(443,'Gible','M',70,20.5,4,false,'Land Shark Pokemon'),
(444,'Gabite','M',140,56,4,false,'Cave Pokemon'),
(445,'Garchomp','M',190,95,4,false,'Mach Pokemon'),
(446,'Munchlax','M',60,105,4,false,'Big Eater Pokemon'),
(447,'Riolu','M',70,20.2,4,false,'Emanation Pokemon'),
(448,'Lucario','M',120,54,4,false,'Aura Pokemon'),
(449,'Hippopotas','M',80,49.5,4,false,'Hippo Pokemon'),
(450,'Hippowdon','M',200,300,4,false,'Heavyweight Pokemon'),
(451,'Skorupi','M',80,12,4,false,'Scorpion Pokemon'),
(452,'Drapion','M',130,61.5,4,false,'Ogre Scorp Pokemon'),
(453,'Croagunk','M',70,23,4,false,'Toxic Mouth Pokemon'),
(454,'Toxicroak','M',130,44.4,4,false,'Toxic Mouth Pokemon'),
(455,'Carnivine','M',140,27,4,false,'Bug Catcher Pokemon'),
(456,'Finneon','M',40,7,4,false,'Wing Fish Pokemon'),
(457,'Lumineon','M',120,24,4,false,'Neon Pokemon'),
(458,'Mantyke','M',100,65,4,false,'Kite Pokemon'),
(459,'Snover','M',100,50.5,4,false,'Frosted Tree Pokemon'),
(460,'Abomasnow','M',220,135.5,4,false,'Frosted Tree Pokemon'),
(461,'Weavile','M',110,34,4,false,'Sharp Claw Pokemon'),
(462,'Magnezone','F',120,180,4,false,'Magnet Area Pokemon'),
(463,'Lickilicky','M',170,140,4,false,'Licking Pokemon'),
(464,'Rhyperior','M',240,282.8,4,false,'Drill Pokemon'),
(465,'Tangrowth','M',200,128.6,4,false,'Vine Pokemon'),
(466,'Electivire','M',180,138.6,4,false,'Thunderbolt Pokemon'),
(467,'Magmortar','M',160,68,4,false,'Blast Pokemon'),
(468,'Togekiss','M',150,38,4,false,'Jubilee Pokemon'),
(469,'Yanmega','M',190,51.5,4,false,'Ogre Darner Pokemon'),
(470,'Leafeon','M',100,25.5,4,false,'Verdant Pokemon'),
(471,'Glaceon','M',80,25.9,4,false,'Fresh Snow Pokemon'),
(472,'Gliscor','M',200,42.5,4,false,'Fang Scorp Pokemon'),
(473,'Mamoswine','M',250,291,4,false,'Twin Tusk Pokemon'),
(474,'Porygon-Z','F',90,34,4,false,'Virtual Pokemon'),
(475,'Gallade','M',160,52,4,false,'Blade Pokemon'),
(476,'Probopass','M',140,340,4,false,'Compass Pokemon'),
(477,'Dusknoir','M',220,106.6,4,false,'Gripper Pokemon'),
(478,'Froslass','F',130,26.6,4,false,'Snow Land Pokemon'),
(479,'Rotom','F',30,0.3,4,false,'Plasma Pokemon'),
(480,'Uxie','F',30,0.3,4,true,'Knowledge Pokemon'),
(481,'Mesprit','F',30,0.3,4,true,'Emotion Pokemon'),
(482,'Azelf','F',30,0.3,4,true,'Willpower Pokemon'),
(483,'Dialga','F',540,683,4,true,'Temporal Pokemon'),
(484,'Palkia','F',420,336,4,true,'Spatial Pokemon'),
(485,'Heatran','M',170,430,4,true,'Lava Dome Pokemon'),
(486,'Regigigas','F',370,420,4,true,'Colossal Pokemon'),
(487,'Giratina','F',450,750,4,true,'Renegade Pokemon'),
(488,'Cresselia','F',150,85.6,4,true,'Lunar Pokemon'),
(489,'Phione','F',40,3.1,4,false,'Sea Drifter Pokemon'),
(490,'Manaphy','F',30,1.4,4,true,'Seafaring Pokemon'),
(491,'Darkrai','F',150,50.5,4,true,'Pitch-Black Pokemon'),
(492,'Shaymin','F',20,2.1,4,true,'Gratitude Pokemon'),
(493,'Arceus','F',320,320,4,true,'Alpha Pokemon'),
(494,'Victini','F',40,4,5,true,'Victory Pokemon'),
(495,'Snivy','M',60,8.1,5,false,'Grass Snake Pokemon'),
(496,'Servine','M',80,16,5,false,'Grass Snake Pokemon'),
(497,'Serperior','M',330,63,5,false,'Regal Pokemon'),
(498,'Tepig','M',50,9.9,5,false,'Fire Pig Pokemon'),
(499,'Pignite','M',100,55.5,5,false,'Fire Pig Pokemon'),
(500,'Emboar','M',160,150,5,false,'Mega Fire Pig Pokemon'),
(501,'Oshawott','M',50,5.9,5,false,'Sea Otter Pokemon'),
(502,'Dewott','M',80,24.5,5,false,'Discipline Pokemon'),
(503,'Samurott','M',150,94.6,5,false,'Formidable Pokemon'),
(504,'Patrat','M',50,11.6,5,false,'Scout Pokemon'),
(505,'Watchog','M',110,27,5,false,'Lookout Pokemon'),
(506,'Lillipup','M',40,4.1,5,false,'Puppy Pokemon'),
(507,'Herdier','M',90,14.7,5,false,'Loyal Dog Pokemon'),
(508,'Stoutland','M',120,61,5,false,'Big-Hearted Pokemon'),
(509,'Purrloin','M',40,10.1,5,false,'Devious Pokemon'),
(510,'Liepard','M',110,37.5,5,false,'Cruel Pokemon'),
(511,'Pansage','M',60,10.5,5,false,'Grass Monkey Pokemon'),
(512,'Simisage','M',110,30.5,5,false,'Thorn Monkey Pokemon'),
(513,'Pansear','M',60,11,5,false,'High Temp Pokemon'),
(514,'Simisear','M',100,28,5,false,'Ember Pokemon'),
(515,'Panpour','M',60,13.5,5,false,'Spray Pokemon'),
(516,'Simipour','M',100,29,5,false,'Geyser Pokemon'),
(517,'Munna','M',60,23.3,5,false,'Dream Eater Pokemon'),
(518,'Musharna','M',110,60.5,5,false,'Drowsing Pokemon'),
(519,'Pidove','M',30,2.1,5,false,'Tiny Pigeon Pokemon'),
(520,'Tranquill','M',60,15,5,false,'Wild Pigeon Pokemon'),
(521,'Unfezant','M',120,29,5,false,'Proud Pokemon'),
(522,'Blitzle','M',80,29.8,5,false,'Electrified Pokemon'),
(523,'Zebstrika','M',160,79.5,5,false,'Thunderbolt Pokemon'),
(524,'Roggenrola','M',40,18,5,false,'Mantle Pokemon'),
(525,'Boldore','M',90,102,5,false,'Ore Pokemon'),
(526,'Gigalith','M',170,260,5,false,'Compressed Pokemon'),
(527,'Woobat','M',40,2.1,5,false,'Bat Pokemon'),
(528,'Swoobat','M',90,10.5,5,false,'Courting Pokemon'),
(529,'Drilbur','M',30,8.5,5,false,'Mole Pokemon'),
(530,'Excadrill','M',70,40.4,5,false,'Subterrene Pokemon'),
(531,'Audino','M',110,31,5,false,'Hearing Pokemon'),
(532,'Timburr','M',60,12.5,5,false,'Muscular Pokemon'),
(533,'Gurdurr','M',120,40,5,false,'Muscular Pokemon'),
(534,'Conkeldurr','M',140,87,5,false,'Muscular Pokemon'),
(535,'Tympole','M',50,4.5,5,false,'Tadpole Pokemon'),
(536,'Palpitoad','M',80,17,5,false,'Vibration Pokemon'),
(537,'Seismitoad','M',150,62,5,false,'Vibration Pokemon'),
(538,'Throh','M',130,55.5,5,false,'Judo Pokemon'),
(539,'Sawk','M',140,51,5,false,'Karate Pokemon'),
(540,'Sewaddle','M',30,2.5,5,false,'Sewing Pokemon'),
(541,'Swadloon','M',50,7.3,5,false,'Leaf-Wrapped Pokemon'),
(542,'Leavanny','M',120,20.5,5,false,'Nurturing Pokemon'),
(543,'Venipede','M',40,5.3,5,false,'Centipede Pokemon'),
(544,'Whirlipede','M',120,58.5,5,false,'Curlipede Pokemon'),
(545,'Scolipede','M',250,200.5,5,false,'Megapede Pokemon'),
(546,'Cottonee','M',30,0.6,5,false,'Cotton Puff Pokemon'),
(547,'Whimsicott','M',70,6.6,5,false,'Windveiled Pokemon'),
(548,'Petilil','F',50,6.6,5,false,'Bulb Pokemon'),
(549,'Lilligant','F',110,16.3,5,false,'Flowering Pokemon'),
(550,'Basculin','M',100,18,5,false,'Hostile Pokemon'),
(551,'Sandile','M',70,15.2,5,false,'Desert Croc Pokemon'),
(552,'Krokorok','M',100,33.4,5,false,'Desert Croc Pokemon'),
(553,'Krookodile','M',150,96.3,5,false,'Intimidation Pokemon'),
(554,'Darumaka','M',60,37.5,5,false,'Zen Charm Pokemon'),
(555,'Darmanitan','M',130,92.9,5,false,'Blazing Pokemon'),
(556,'Maractus','M',100,28,5,false,'Cactus Pokemon'),
(557,'Dwebble','M',30,14.5,5,false,'Rock Inn Pokemon'),
(558,'Crustle','M',140,200,5,false,'Stone Home Pokemon'),
(559,'Scraggy','M',60,11.8,5,false,'Shedding Pokemon'),
(560,'Scrafty','M',110,30,5,false,'Hoodlum Pokemon'),
(561,'Sigilyph','M',140,14,5,false,'Avianoid Pokemon'),
(562,'Yamask','M',50,1.5,5,false,'Spirit Pokemon'),
(563,'Cofagrigus','M',170,76.5,5,false,'Coffin Pokemon'),
(564,'Tirtouga','M',70,16.5,5,false,'Prototurtle Pokemon'),
(565,'Carracosta','M',120,81,5,false,'Prototurtle Pokemon'),
(566,'Archen','M',50,9.5,5,false,'First Bird Pokemon'),
(567,'Archeops','M',140,32,5,false,'First Bird Pokemon'),
(568,'Trubbish','M',60,31,5,false,'Trash Bag Pokemon'),
(569,'Garbodor','M',190,107.3,5,false,'Trash Heap Pokemon'),
(570,'Zorua','M',70,12.5,5,false,'Tricky Fox Pokemon'),
(571,'Zoroark','M',160,81.1,5,false,'Illusion Fox Pokemon'),
(572,'Minccino','M',40,5.8,5,false,'Chinchilla Pokemon'),
(573,'Cinccino','M',50,7.5,5,false,'Scarf Pokemon'),
(574,'Gothita','M',40,5.8,5,false,'Fixation Pokemon'),
(575,'Gothorita','M',70,18,5,false,'Manipulate Pokemon'),
(576,'Gothitelle','M',150,44,5,false,'Astral Body Pokemon'),
(577,'Solosis','M',30,1,5,false,'Cell Pokemon'),
(578,'Duosion','M',60,8,5,false,'Mitosis Pokemon'),
(579,'Reuniclus','M',100,20.1,5,false,'Multiplying Pokemon'),
(580,'Ducklett','M',50,5.5,5,false,'Water Bird Pokemon'),
(581,'Swanna','M',130,24.2,5,false,'White Bird Pokemon'),
(582,'Vanillite','M',40,5.7,5,false,'Fresh Snow Pokemon'),
(583,'Vanillish','M',110,41,5,false,'Icy Snow Pokemon'),
(584,'Vanilluxe','M',130,57.5,5,false,'Snowstorm Pokemon'),
(585,'Deerling','M',60,19.5,5,false,'Season Pokemon'),
(586,'Sawsbuck','M',190,92.5,5,false,'Season Pokemon'),
(587,'Emolga','M',40,5,5,false,'Sky Squirrel Pokemon'),
(588,'Karrablast','M',50,5.9,5,false,'Clamping Pokemon'),
(589,'Escavalier','M',100,33,5,false,'Cavalry Pokemon'),
(590,'Foongus','M',20,1,5,false,'Mushroom Pokemon'),
(591,'Amoonguss','M',60,10.5,5,false,'Mushroom Pokemon'),
(592,'Frillish','M',120,33,5,false,'Floating Pokemon'),
(593,'Jellicent','M',220,135,5,false,'Floating Pokemon'),
(594,'Alomomola','M',120,31.6,5,false,'Caring Pokemon'),
(595,'Joltik','M',10,0.6,5,false,'Attaching Pokemon'),
(596,'Galvantula','M',80,14.3,5,false,'EleSpider Pokemon'),
(597,'Ferroseed','M',60,18.8,5,false,'Thorn Seed Pokemon'),
(598,'Ferrothorn','M',100,110,5,false,'Thorn Pod Pokemon'),
(599,'Klink','F',30,21,5,false,'Gear Pokemon'),
(600,'Klang','F',60,51,5,false,'Gear Pokemon'),
(601,'Klinklang','F',60,81,5,false,'Gear Pokemon'),
(602,'Tynamo','M',20,0.3,5,false,'EleFish Pokemon'),
(603,'Eelektrik','M',120,22,5,false,'EleFish Pokemon'),
(604,'Eelektross','M',210,80.5,5,false,'EleFish Pokemon'),
(605,'Elgyem','M',50,9,5,false,'Cerebral Pokemon'),
(606,'Beheeyem','M',100,34.5,5,false,'Cerebral Pokemon'),
(607,'Litwick','M',30,3.1,5,false,'Candle Pokemon'),
(608,'Lampent','M',60,13,5,false,'Lamp Pokemon'),
(609,'Chandelure','M',100,34.3,5,false,'Luring Pokemon'),
(610,'Axew','M',60,18,5,false,'Tusk Pokemon'),
(611,'Fraxure','M',100,36,5,false,'Axe Jaw Pokemon'),
(612,'Haxorus','M',180,105.5,5,false,'Axe Jaw Pokemon'),
(613,'Cubchoo','M',50,8.5,5,false,'Chill Pokemon'),
(614,'Beartic','M',260,260,5,false,'Freezing Pokemon'),
(615,'Cryogonal','F',110,148,5,false,'Crystallizing Pokemon'),
(616,'Shelmet','M',40,7.7,5,false,'Snail Pokemon'),
(617,'Accelgor','M',80,25.3,5,false,'Shell Out Pokemon'),
(618,'Stunfisk','M',70,11,5,false,'Trap Pokemon'),
(619,'Mienfoo','M',90,20,5,false,'Martial Arts Pokemon'),
(620,'Mienshao','M',140,35.5,5,false,'Martial Arts Pokemon'),
(621,'Druddigon','M',160,139,5,false,'Cave Pokemon'),
(622,'Golett','F',100,92,5,false,'Automaton Pokemon'),
(623,'Golurk','F',280,330,5,false,'Automaton Pokemon'),
(624,'Pawniard','M',50,10.2,5,false,'Sharp Blade Pokemon'),
(625,'Bisharp','M',160,70,5,false,'Sword Blade Pokemon'),
(626,'Bouffalant','M',160,94.6,5,false,'Bash Buffalo Pokemon'),
(627,'Rufflet','M',50,10.5,5,false,'Eaglet Pokemon'),
(628,'Braviary','M',150,41,5,false,'Valiant Pokemon'),
(629,'Vullaby','F',50,9,5,false,'Diapered Pokemon'),
(630,'Mandibuzz','F',120,39.5,5,false,'Bone Vulture Pokemon'),
(631,'Heatmor','M',140,58,5,false,'Anteater Pokemon'),
(632,'Durant','M',30,33,5,false,'Iron Ant Pokemon'),
(633,'Deino','M',80,17.3,5,false,'Irate Pokemon'),
(634,'Zweilous','M',140,50,5,false,'Hostile Pokemon'),
(635,'Hydreigon','M',180,160,5,false,'Brutal Pokemon'),
(636,'Larvesta','M',110,28.8,5,false,'Torch Pokemon'),
(637,'Volcarona','M',160,46,5,false,'Sun Pokemon'),
(638,'Cobalion','F',210,250,5,true,'Iron Will Pokemon'),
(639,'Terrakion','F',190,260,5,true,'Cavern Pokemon'),
(640,'Virizion','F',200,200,5,true,'Grassland Pokemon'),
(641,'Tornadus','M',150,63,5,true,'Cyclone Pokemon'),
(642,'Thundurus','M',150,61,5,true,'Bolt Strike Pokemon'),
(643,'Reshiram','F',320,330,5,true,'Vast White Pokemon'),
(644,'Zekrom','F',290,345,5,true,'Deep Black Pokemon'),
(645,'Landorus','M',150,68,5,true,'Abundance Pokemon'),
(646,'Kyurem','F',300,325,5,true,'Boundary Pokemon'),
(647,'Keldeo','F',140,48.5,5,true,'Colt Pokemon'),
(648,'Meloetta','F',60,6.5,5,true,'Melody Pokemon'),
(649,'Genesect','F',150,82.5,5,true,'Paleozoic Pokemon'),
(650,'Chespin','M',40,9,6,false,'Spiky Nut Pokemon'),
(651,'Quilladin','M',70,29,6,false,'Spiny Armor Pokemon'),
(652,'Chesnaught','M',160,90,6,false,'Spiny Armor Pokemon'),
(653,'Fennekin','M',40,9.4,6,false,'Fox Pokemon'),
(654,'Braixen','M',100,14.5,6,false,'Fox Pokemon'),
(655,'Delphox','M',150,39,6,false,'Fox Pokemon'),
(656,'Froakie','M',30,7,6,false,'Bubble Frog Pokemon'),
(657,'Frogadier','M',60,10.9,6,false,'Bubble Frog Pokemon'),
(658,'Greninja','M',150,40,6,false,'Ninja Pokemon'),
(659,'Bunnelby','M',40,5,6,false,'Digging Pokemon'),
(660,'Diggersby','M',100,42.4,6,false,'Digging Pokemon'),
(661,'Fletchling','M',30,1.7,6,false,'Tiny Robin Pokemon'),
(662,'Fletchinder','M',70,16,6,false,'Ember Pokemon'),
(663,'Talonflame','M',120,24.5,6,false,'Scorching Pokemon'),
(664,'Scatterbug','M',30,2.5,6,false,'Scatterdust Pokemon'),
(665,'Spewpa','M',30,8.4,6,false,'Scatterdust Pokemon'),
(666,'Vivillon','M',120,17,6,false,'Scale Pokemon'),
(667,'Litleo','M',60,13.5,6,false,'Lion Cub Pokemon'),
(668,'Pyroar','M',150,81.5,6,false,'Royal Pokemon'),
(669,'FlabÃ©bÃ©','F',10,0.1,6,false,'Single Bloom Pokemon'),
(670,'Floette','F',20,0.9,6,false,'Fairy Pokemon'),
(671,'Florges','F',110,10,6,false,'Garden Pokemon'),
(672,'Skiddo','M',90,31,6,false,'Mount Pokemon'),
(673,'Gogoat','M',170,91,6,false,'Mount Pokemon'),
(674,'Pancham','M',60,8,6,false,'Playful Pokemon'),
(675,'Pangoro','M',210,136,6,false,'Daunting Pokemon'),
(676,'Furfrou','M',120,28,6,false,'Poodle Pokemon'),
(677,'Espurr','M',30,3.5,6,false,'Restraint Pokemon'),
(678,'Meowstic','M',60,8.5,6,false,'Constraint Pokemon'),
(679,'Honedge','M',80,2,6,false,'Sword Pokemon'),
(680,'Doublade','M',80,4.5,6,false,'Sword Pokemon'),
(681,'Aegislash','M',170,53,6,false,'Royal Sword Pokemon'),
(682,'Spritzee','M',20,0.5,6,false,'Perfume Pokemon'),
(683,'Aromatisse','M',80,15.5,6,false,'Fragrance Pokemon'),
(684,'Swirlix','M',40,3.5,6,false,'Cotton Candy Pokemon'),
(685,'Slurpuff','M',80,5,6,false,'Meringue Pokemon'),
(686,'Inkay','M',40,3.5,6,false,'Revolving Pokemon'),
(687,'Malamar','M',150,47,6,false,'Overturning Pokemon'),
(688,'Binacle','M',50,31,6,false,'Two-Handed Pokemon'),
(689,'Barbaracle','M',130,96,6,false,'Collective Pokemon'),
(690,'Skrelp','M',50,7.3,6,false,'Mock Kelp Pokemon'),
(691,'Dragalge','M',180,81.5,6,false,'Mock Kelp Pokemon'),
(692,'Clauncher','M',50,8.3,6,false,'Water Gun Pokemon'),
(693,'Clawitzer','M',130,35.3,6,false,'Howitzer Pokemon'),
(694,'Helioptile','M',50,6,6,false,'Generator Pokemon'),
(695,'Heliolisk','M',100,21,6,false,'Generator Pokemon'),
(696,'Tyrunt','M',80,26,6,false,'Royal Heir Pokemon'),
(697,'Tyrantrum','M',250,270,6,false,'Despot Pokemon'),
(698,'Amaura','M',130,25.2,6,false,'Tundra Pokemon'),
(699,'Aurorus','M',270,225,6,false,'Tundra Pokemon'),
(700,'Sylveon','M',100,23.5,6,false,'Intertwining Pokemon'),
(701,'Hawlucha','M',80,21.5,6,false,'Wrestling Pokemon'),
(702,'Dedenne','M',20,2.2,6,false,'Antenna Pokemon'),
(703,'Carbink','F',30,5.7,6,false,'Jewel Pokemon'),
(704,'Goomy','M',30,2.8,6,false,'Soft Tissue Pokemon'),
(705,'Sliggoo','M',80,17.5,6,false,'Soft Tissue Pokemon'),
(706,'Goodra','M',200,150.5,6,false,'Dragon Pokemon'),
(707,'Klefki','M',20,3,6,false,'Key Ring Pokemon'),
(708,'Phantump','M',40,7,6,false,'Stump Pokemon'),
(709,'Trevenant','M',150,71,6,false,'Elder Tree Pokemon'),
(710,'Pumpkaboo','M',80,15,6,false,'Pumpkin Pokemon'),
(711,'Gourgeist','M',170,39,6,false,'Pumpkin Pokemon'),
(712,'Bergmite','M',100,99.5,6,false,'Ice Chunk Pokemon'),
(713,'Avalugg','M',200,505,6,false,'Iceberg Pokemon'),
(714,'Noibat','M',50,8,6,false,'Sound Wave Pokemon'),
(715,'Noivern','M',150,85,6,false,'Sound Wave Pokemon'),
(716,'Xerneas','F',300,215,6,true,'Life Pokemon'),
(717,'Yveltal','F',580,203,6,true,'Destruction Pokemon'),
(718,'Zygarde','F',500,284.6,6,true,'Order Pokemon'),
(719,'Diancie','F',70,8.8,6,true,'Jewel Pokemon'),
(720,'Hoopa','F',0,NULL,6,true,'Mischief Pokemon (Confined)Djinn Pokemonn (Unbound)'),
(721,'Volcanion','F',170,195,6,true,'Steam Pokemon'),
(722,'Rowlet','M',30,1.5,7,false,'Grass Quill Pokemon'),
(723,'Dartrix','M',70,16,7,false,'Blade Quill Pokemon'),
(724,'Decidueye','M',160,36.6,7,false,'Arrow Quill Pokemon'),
(725,'Litten','M',40,4.3,7,false,'Fire Cat Pokemon'),
(726,'Torracat','M',70,25,7,false,'Fire Cat Pokemon'),
(727,'Incineroar','M',180,83,7,false,'Heel Pokemon'),
(728,'Popplio','M',40,7.5,7,false,'Sea Lion Pokemon'),
(729,'Brionne','M',60,17.5,7,false,'Pop Star Pokemon'),
(730,'Primarina','M',180,44,7,false,'Soloist Pokemon'),
(731,'Pikipek','M',30,1.2,7,false,'Woodpecker Pokemon'),
(732,'Trumbeak','M',60,14.8,7,false,'Bugle Beak Pokemon'),
(733,'Toucannon','M',110,26,7,false,'Cannon Pokemon'),
(734,'Yungoos','M',40,6,7,false,'Loitering Pokemon'),
(735,'Gumshoos','M',70,14.2,7,false,'Stakeout Pokemon'),
(736,'Grubbin','M',40,4.4,7,false,'Larva Pokemon'),
(737,'Charjabug','M',50,10.5,7,false,'Battery Pokemon'),
(738,'Vikavolt','M',150,45,7,false,'Stag Beetle Pokemon'),
(739,'Crabrawler','M',60,7,7,false,'Boxing Pokemon'),
(740,'Crabominable','M',170,180,7,false,'Woolly Crab Pokemon'),
(741,'Oricorio','M',60,3.4,7,false,'Dancing Pokemon'),
(742,'Cutiefly','M',10,0.2,7,false,'Bee Fly Pokemon'),
(743,'Ribombee','M',20,0.5,7,false,'Bee Fly Pokemon'),
(744,'Rockruff','M',50,9.2,7,false,'Puppy Pokemon'),
(745,'Lycanroc','M',0,NULL,7,false,'Wolf Pokemon'),
(746,'Wishiwashi','M',20,0.3,7,false,'Small Fry Pokemon'),
(747,'Mareanie','M',40,8,7,false,'Brutal Star Pokemon'),
(748,'Toxapex','M',70,14.5,7,false,'Brutal Star Pokemon'),
(749,'Mudbray','M',100,110,7,false,'Donkey Pokemon'),
(750,'Mudsdale','M',250,920,7,false,'Draft Horse Pokemon'),
(751,'Dewpider','M',30,4,7,false,'Water Bubble Pokemon'),
(752,'Araquanid','M',180,82,7,false,'Water Bubble Pokemon'),
(753,'Fomantis','M',30,1.5,7,false,'Sickle Grass Pokemon'),
(754,'Lurantis','M',90,18.5,7,false,'Bloom Sickle Pokemon'),
(755,'Morelull','M',20,1.5,7,false,'Illuminating Pokemon'),
(756,'Shiinotic','M',100,11.5,7,false,'Illuminating Pokemon'),
(757,'Salandit','M',60,4.8,7,false,'Toxic Lizard Pokemon'),
(758,'Salazzle','F',120,22.2,7,false,'Toxic Lizard Pokemon'),
(759,'Stufful','M',50,6.8,7,false,'Flailing Pokemon'),
(760,'Bewear','M',210,135,7,false,'Strong Arm Pokemon'),
(761,'Bounsweet','F',30,3.2,7,false,'Fruit Pokemon'),
(762,'Steenee','F',70,8.2,7,false,'Fruit Pokemon'),
(763,'Tsareena','F',120,21.4,7,false,'Fruit Pokemon'),
(764,'Comfey','M',10,0.3,7,false,'Posy Picker Pokemon'),
(765,'Oranguru','M',150,76,7,false,'Sage Pokemon'),
(766,'Passimian','M',200,82.8,7,false,'Teamwork Pokemon'),
(767,'Wimpod','M',50,12,7,false,'Turn Tail Pokemon'),
(768,'Golisopod','M',200,108,7,false,'Hard Scale Pokemon'),
(769,'Sandygast','M',50,70,7,false,'Sand Heap Pokemon'),
(770,'Palossand','M',130,250,7,false,'Sand Castle Pokemon'),
(771,'Pyukumuku','M',30,1.2,7,false,'Sea Cucumber Pokemon'),
(772,'Codigo Cero','F',190,120.5,7,false,'Synthetic Pokemon'),
(773,'Silvally','F',230,100.5,7,false,'Synthetic Pokemon'),
(774,'Minior','F',30,40,7,false,'Meteor Pokemon'),
(775,'Komala','M',40,19.9,7,false,'Drowsing Pokemon'),
(776,'Turtonator','M',200,212,7,false,'Blast Turtle Pokemon'),
(777,'Togedemaru','M',30,3.3,7,false,'Roly-Poly Pokemon'),
(778,'Mimikyu','M',20,0.7,7,false,'Disguise Pokemon'),
(779,'Bruxish','M',90,19,7,false,'Gnash Teeth Pokemon'),
(780,'Drampa','M',300,185,7,false,'Placid Pokemon'),
(781,'Dhelmise','F',390,210,7,false,'Sea Creeper Pokemon'),
(782,'Jangmo-o','M',60,29.7,7,false,'Scaly Pokemon'),
(783,'Hakamo-o','M',120,47,7,false,'Scaly Pokemon'),
(784,'Kommo-o','M',160,78.2,7,false,'Scaly Pokemon'),
(785,'Tapu Koko','F',180,20.5,7,true,'Land Spirit Pokemon'),
(786,'Tapu Lele','F',120,18.6,7,true,'Land Spirit Pokemon'),
(787,'Tapu Bulu','F',190,45.5,7,true,'Land Spirit Pokemon'),
(788,'Tapu Fini','F',130,21.2,7,true,'Land Spirit Pokemon'),
(789,'Cosmog','F',20,0.1,7,true,'Nebula Pokemon'),
(790,'Cosmoem','F',10,999.9,7,true,'Protostar Pokemon'),
(791,'Solgaleo','F',340,230,7,true,'Sunne Pokemon'),
(792,'Lunala','F',400,120,7,true,'Moone Pokemon'),
(793,'Nihilego','F',120,55.5,7,true,'Parasite Pokemon'),
(794,'Buzzwole','F',240,333.6,7,true,'Swollen Pokemon'),
(795,'Pheromosa','F',180,25,7,true,'Lissome Pokemon'),
(796,'Xurkitree','F',380,100,7,true,'Glowing Pokemon'),
(797,'Celesteela','F',920,999.9,7,true,'Launch Pokemon'),
(798,'Kartana','F',30,0.1,7,true,'Drawn Sword Pokemon'),
(799,'Guzzlord','F',550,888,7,true,'Junkivore Pokemon'),
(800,'Necrozma','F',240,230,7,true,'Prism Pokemon'),
(801,'Magearna','F',100,80.5,7,true,'Artificial Pokemon');

INSERT INTO pokemon_types ( name ) 
values 
('bug'),
('dark'),
('dragon'),
('electric'),
('fairy'),
('fighting'),
('fire'),
('flying'),
('ghost'),
('grass'),
('ground'),
('ice'),
('normal'),
('poison'),
('psychic'),
('rock'),
('steel'),
('water');

INSERT INTO pokemon_per_pokemon_types ( id_pokemon, id_pokemon_type )
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bulbasaur' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ivysaur' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Venusaur' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Charmander' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Charmeleon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Charizard' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Squirtle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wartortle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Blastoise' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Caterpie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Metapod' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Butterfree' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Weedle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kakuna' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Beedrill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pidgey' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pidgeotto' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pidgeot' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rattata' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Raticate' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spearow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Fearow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ekans' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Arbok' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pikachu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Raichu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sandshrew' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sandslash' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nidoran ♀' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nidorina' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nidoqueen' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nidoran ♂' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nidorino' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nidoking' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Clefairy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Clefable' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vulpix' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ninetales' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jigglypuff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wigglytuff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zubat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golbat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Oddish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gloom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vileplume' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Paras' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Parasect' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Venonat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Venomoth' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Diglett' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dugtrio' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Meowth' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Persian' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Psyduck' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golduck' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mankey' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Primeape' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Growlithe' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Arcanine' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Poliwag' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Poliwhirl' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Poliwrath' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Abra' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kadabra' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Alakazam' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Machop' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Machoke' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Machamp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bellsprout' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Weepinbell' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Victreebel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tentacool' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tentacruel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Geodude' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Graveler' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golem' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ponyta' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rapidash' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slowpoke' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slowbro' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magnemite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magneton' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Farfetchd' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Doduo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dodrio' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Seel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dewgong' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Grimer' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Muk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shellder' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cloyster' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gastly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Haunter' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gengar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Onix' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drowzee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hypno' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Krabby' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kingler' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Voltorb' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Electrode' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Exeggcute' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Exeggutor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cubone' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Marowak' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hitmonlee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hitmonchan' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lickitung' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Koffing' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Weezing' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rhyhorn' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rhydon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chansey' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tangela' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kangaskhan' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Horsea' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Seadra' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Goldeen' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Seaking' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Staryu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Starmie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mr. Mime' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scyther' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jynx' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Electabuzz' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magmar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pinsir' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tauros' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magikarp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gyarados' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lapras' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ditto' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Eevee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vaporeon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jolteon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Flareon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Porygon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Omanyte' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Omastar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kabuto' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kabutops' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aerodactyl' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Snorlax' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Articuno' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zapdos' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Moltres' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dratini' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dragonair' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dragonite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mewtwo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mew' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chikorita' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bayleef' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Meganium' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cyndaquil' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Quilava' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Typhlosion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Totodile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Croconaw' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Feraligatr' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sentret' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Furret' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hoothoot' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Noctowl' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ledyba' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ledian' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spinarak' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ariados' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Crobat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chinchou' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lanturn' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pichu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cleffa' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Igglybuff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Togepi' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Togetic' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Natu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Xatu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mareep' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Flaaffy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ampharos' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bellossom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Marill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Azumarill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sudowoodo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Politoed' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hoppip' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skiploom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jumpluff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aipom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sunkern' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sunflora' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Yanma' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wooper' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Quagsire' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Espeon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Umbreon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Murkrow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slowking' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Misdreavus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Unown' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wobbuffet' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Girafarig' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pineco' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Forretress' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dunsparce' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gligar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Steelix' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Snubbull' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Granbull' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Qwilfish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scizor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shuckle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Heracross' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sneasel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Teddiursa' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ursaring' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slugma' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magcargo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swinub' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Piloswine' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Corsola' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Remoraid' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Octillery' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Delibird' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mantine' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skarmory' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Houndour' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Houndoom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kingdra' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Phanpy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Donphan' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Porygon2' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Stantler' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Smeargle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tyrogue' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hitmontop' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Smoochum' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Elekid' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magby' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Miltank' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Blissey' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Raikou' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Entei' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Suicune' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Larvitar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pupitar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tyranitar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lugia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ho-Oh' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Celebi' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Treecko' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Grovyle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sceptile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Torchic' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Combusken' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Blaziken' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mudkip' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Marshtomp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swampert' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Poochyena' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mightyena' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zigzagoon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Linoone' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wurmple' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Silcoon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Beautifly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cascoon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dustox' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lotad' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lombre' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ludicolo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Seedot' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nuzleaf' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shiftry' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Taillow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swellow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wingull' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pelipper' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ralts' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kirlia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gardevoir' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Surskit' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Masquerain' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shroomish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Breloom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slakoth' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vigoroth' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slaking' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nincada' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ninjask' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shedinja' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Whismur' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Loudred' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Exploud' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Makuhita' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hariyama' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Azurill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nosepass' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skitty' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Delcatty' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sableye' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mawile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aron' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lairon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aggron' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Meditite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Medicham' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Electrike' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Manectric' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Plusle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Minun' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Volbeat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Illumise' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Roselia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gulpin' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swalot' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Carvanha' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sharpedo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wailmer' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wailord' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Numel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Camerupt' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Torkoal' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spoink' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Grumpig' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spinda' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Trapinch' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vibrava' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Flygon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cacnea' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cacturne' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swablu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Altaria' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zangoose' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Seviper' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lunatone' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Solrock' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Barboach' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Whiscash' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Corphish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Crawdaunt' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Baltoy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Claydol' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lileep' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cradily' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Anorith' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Armaldo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Feebas' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Milotic' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Castform' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kecleon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shuppet' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Banette' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Duskull' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dusclops' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tropius' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chimecho' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Absol' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wynaut' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Snorunt' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Glalie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spheal' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sealeo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Walrein' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Clamperl' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Huntail' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gorebyss' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Relicanth' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Luvdisc' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bagon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shelgon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Salamence' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Beldum' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Metang' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Metagross' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Regirock' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Regice' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Registeel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Latias' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Latios' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kyogre' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Groudon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rayquaza' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jirachi' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Deoxys' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Turtwig' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Grotle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Torterra' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chimchar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Monferno' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Infernape' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Piplup' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Prinplup' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Empoleon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Starly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Staravia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Staraptor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bidoof' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bibarel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kricketot' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kricketune' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shinx' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Luxio' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Luxray' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Budew' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Roserade' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cranidos' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rampardos' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shieldon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bastiodon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Burmy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wormadam' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mothim' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Combee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vespiquen' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pachirisu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Buizel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Floatzel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cherubi' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cherrim' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shellos' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gastrodon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ambipom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drifloon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drifblim' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Buneary' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lopunny' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mismagius' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Honchkrow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Glameow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Purugly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chingling' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Stunky' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skuntank' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bronzor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bronzong' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bonsly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mime Jr.' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Happiny' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chatot' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spiritomb' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gible' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gabite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Garchomp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Munchlax' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Riolu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lucario' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hippopotas' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hippowdon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skorupi' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drapion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Croagunk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Toxicroak' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Carnivine' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Finneon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lumineon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mantyke' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Snover' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Abomasnow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Weavile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magnezone' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lickilicky' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rhyperior' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tangrowth' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Electivire' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magmortar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Togekiss' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Yanmega' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Leafeon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Glaceon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gliscor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mamoswine' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Porygon-Z' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gallade' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Probopass' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dusknoir' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Froslass' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rotom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Uxie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mesprit' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Azelf' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dialga' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Palkia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Heatran' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Regigigas' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Giratina' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cresselia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Phione' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Manaphy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Darkrai' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shaymin' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Arceus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Victini' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Snivy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Servine' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Serperior' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tepig' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pignite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Emboar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Oshawott' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dewott' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Samurott' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Patrat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Watchog' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lillipup' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Herdier' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Stoutland' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Purrloin' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Liepard' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pansage' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Simisage' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pansear' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Simisear' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Panpour' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Simipour' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Munna' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Musharna' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pidove' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tranquill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Unfezant' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Blitzle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zebstrika' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Roggenrola' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Boldore' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gigalith' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Woobat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swoobat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drilbur' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Excadrill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Audino' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Timburr' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gurdurr' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Conkeldurr' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tympole' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Palpitoad' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Seismitoad' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Throh' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sawk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sewaddle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swadloon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Leavanny' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Venipede' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Whirlipede' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scolipede' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cottonee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Whimsicott' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Petilil' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lilligant' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Basculin' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sandile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Krokorok' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Krookodile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Darumaka' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Darmanitan' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Maractus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dwebble' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Crustle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scraggy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scrafty' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sigilyph' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Yamask' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cofagrigus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tirtouga' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Carracosta' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Archen' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Archeops' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Trubbish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Garbodor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zorua' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zoroark' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Minccino' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cinccino' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gothita' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gothorita' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gothitelle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Solosis' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Duosion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Reuniclus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ducklett' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swanna' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vanillite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vanillish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vanilluxe' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Deerling' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sawsbuck' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Emolga' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Karrablast' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Escavalier' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Foongus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Amoonguss' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Frillish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jellicent' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Alomomola' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Joltik' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Galvantula' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ferroseed' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ferrothorn' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Klink' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Klang' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Klinklang' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tynamo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Eelektrik' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Eelektross' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Elgyem' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Beheeyem' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Litwick' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lampent' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chandelure' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Axew' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Fraxure' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Haxorus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cubchoo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Beartic' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cryogonal' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shelmet' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Accelgor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Stunfisk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mienfoo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mienshao' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Druddigon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golett' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golurk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pawniard' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bisharp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bouffalant' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rufflet' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Braviary' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vullaby' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mandibuzz' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Heatmor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Durant' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Deino' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zweilous' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hydreigon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Larvesta' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Volcarona' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cobalion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Terrakion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Virizion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tornadus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Thundurus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Reshiram' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zekrom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Landorus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kyurem' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Keldeo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Meloetta' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Genesect' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chespin' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Quilladin' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chesnaught' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Fennekin' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Braixen' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Delphox' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Froakie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Frogadier' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Greninja' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bunnelby' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Diggersby' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Fletchling' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Fletchinder' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Talonflame' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scatterbug' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spewpa' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vivillon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Litleo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pyroar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'FlabÃ©bÃ©' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Floette' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Florges' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skiddo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gogoat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pancham' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pangoro' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Furfrou' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Espurr' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Meowstic' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Honedge' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Doublade' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aegislash' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spritzee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aromatisse' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swirlix' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slurpuff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Inkay' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Malamar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Binacle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Barbaracle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skrelp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dragalge' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Clauncher' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Clawitzer' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Helioptile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Heliolisk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tyrunt' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tyrantrum' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Amaura' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aurorus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sylveon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hawlucha' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dedenne' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Carbink' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Goomy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sliggoo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Goodra' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Klefki' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Phantump' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Trevenant' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pumpkaboo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gourgeist' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bergmite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Avalugg' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Noibat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Noivern' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Xerneas' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Yveltal' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zygarde' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Diancie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hoopa' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Volcanion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rowlet' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dartrix' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Decidueye' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Litten' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Torracat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Incineroar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Popplio' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Brionne' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Primarina' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pikipek' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Trumbeak' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Toucannon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Yungoos' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gumshoos' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Grubbin' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Charjabug' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vikavolt' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Crabrawler' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Crabominable' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Oricorio' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cutiefly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ribombee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rockruff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lycanroc' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wishiwashi' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mareanie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Toxapex' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mudbray' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mudsdale' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dewpider' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Araquanid' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Fomantis' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lurantis' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Morelull' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shiinotic' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Salandit' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Salazzle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Stufful' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bewear' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bounsweet' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Steenee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tsareena' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Comfey' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Oranguru' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Passimian' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wimpod' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golisopod' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sandygast' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Palossand' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pyukumuku' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Type: Null' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Silvally' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Minior' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Komala' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Turtonator' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Togedemaru' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mimikyu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bruxish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drampa' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dhelmise' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jangmo-o' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hakamo-o' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kommo-o' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tapu Koko' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tapu Lele' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tapu Bulu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tapu Fini' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cosmog' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cosmoem' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Solgaleo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lunala' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nihilego' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Buzzwole' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pheromosa' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Xurkitree' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Celesteela' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kartana' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Guzzlord' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Necrozma' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magearna' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bulbasaur' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ivysaur' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Venusaur' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Charizard' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Butterfree' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Weedle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kakuna' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Beedrill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pidgey' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pidgeotto' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pidgeot' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rattata' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Raticate' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spearow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Fearow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Raichu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sandshrew' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sandslash' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nidoqueen' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nidoking' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vulpix' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ninetales' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jigglypuff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wigglytuff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zubat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golbat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Oddish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gloom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vileplume' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Paras' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Parasect' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Venonat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Venomoth' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Diglett' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dugtrio' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Meowth' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Persian' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Poliwrath' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bellsprout' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Weepinbell' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Victreebel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tentacool' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tentacruel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Geodude' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Graveler' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golem' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slowpoke' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slowbro' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magnemite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magneton' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Farfetchd' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Doduo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dodrio' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dewgong' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Grimer' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Muk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cloyster' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gastly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Haunter' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gengar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Onix' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Exeggcute' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Exeggutor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Marowak' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rhyhorn' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rhydon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Starmie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mr. Mime' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scyther' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jynx' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gyarados' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lapras' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Omanyte' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Omastar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kabuto' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kabutops' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aerodactyl' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Articuno' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zapdos' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Moltres' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dragonite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hoothoot' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Noctowl' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ledyba' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ledian' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spinarak' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ariados' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Crobat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chinchou' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lanturn' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Igglybuff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Togetic' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Natu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Xatu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Marill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Azumarill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hoppip' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skiploom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jumpluff' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Yanma' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wooper' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Quagsire' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Murkrow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Slowking' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Girafarig' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Forretress' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gligar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Steelix' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Qwilfish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scizor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shuckle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Heracross' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sneasel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magcargo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swinub' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Piloswine' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Corsola' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Delibird' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mantine' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skarmory' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Houndour' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Houndoom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kingdra' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Smoochum' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Larvitar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pupitar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tyranitar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lugia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ho-Oh' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Celebi' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Combusken' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Blaziken' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Marshtomp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swampert' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Beautifly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dustox' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lotad' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lombre' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ludicolo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nuzleaf' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shiftry' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Taillow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swellow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wingull' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pelipper' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ralts' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kirlia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gardevoir' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Surskit' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Masquerain' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Breloom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nincada' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ninjask' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shedinja' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Azurill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sableye' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mawile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aron' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lairon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aggron' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Meditite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Medicham' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Roselia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Carvanha' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sharpedo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Numel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Camerupt' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vibrava' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Flygon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cacturne' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swablu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Altaria' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lunatone' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Solrock' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Barboach' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Whiscash' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Crawdaunt' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Baltoy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Claydol' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lileep' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cradily' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Anorith' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Armaldo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tropius' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spheal' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sealeo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Walrein' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Relicanth' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Salamence' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Beldum' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Metang' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Metagross' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Latias' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Latios' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rayquaza' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jirachi' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Torterra' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Monferno' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Infernape' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Empoleon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Starly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Staravia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Staraptor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bibarel' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Budew' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Roserade' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shieldon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bastiodon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wormadam' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mothim' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Combee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vespiquen' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gastrodon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drifloon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drifblim' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Honchkrow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Stunky' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skuntank' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bronzor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bronzong' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mime Jr.' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chatot' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Spiritomb' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gible' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gabite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Garchomp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lucario' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skorupi' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drapion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Croagunk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Toxicroak' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mantyke' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Snover' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Abomasnow' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Weavile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magnezone' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rhyperior' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Togekiss' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Yanmega' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gliscor' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mamoswine' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gallade' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Probopass' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Froslass' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rotom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dialga' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Palkia' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Heatran' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Giratina' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shaymin' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Victini' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pignite' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Emboar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pidove' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tranquill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Unfezant' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Woobat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swoobat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Excadrill' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Palpitoad' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Seismitoad' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sewaddle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swadloon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Leavanny' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Venipede' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Whirlipede' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scolipede' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cottonee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Whimsicott' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sandile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Krokorok' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Krookodile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Darmanitan' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dwebble' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Crustle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scraggy' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Scrafty' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sigilyph' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tirtouga' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'rock' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Carracosta' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Archen' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Archeops' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ducklett' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Swanna' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Deerling' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sawsbuck' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Emolga' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Escavalier' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Foongus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Amoonguss' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Frillish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Jellicent' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Joltik' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Galvantula' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ferroseed' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ferrothorn' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Litwick' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lampent' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chandelure' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Stunfisk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golett' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golurk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pawniard' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bisharp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rufflet' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Braviary' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vullaby' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mandibuzz' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Durant' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Deino' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zweilous' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hydreigon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Larvesta' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Volcarona' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cobalion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Terrakion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Virizion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Thundurus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Reshiram' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zekrom' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Landorus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kyurem' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Keldeo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Meloetta' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Genesect' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Chesnaught' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Delphox' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Greninja' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Diggersby' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Fletchling' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Fletchinder' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Talonflame' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vivillon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Litleo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pyroar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pangoro' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Honedge' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Doublade' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aegislash' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Inkay' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Malamar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Binacle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Barbaracle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Skrelp' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dragalge' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Helioptile' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'normal' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Heliolisk' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tyrunt' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tyrantrum' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Amaura' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Aurorus' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hawlucha' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dedenne' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Carbink' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Klefki' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Phantump' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Trevenant' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pumpkaboo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Gourgeist' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Noibat' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Noivern' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Yveltal' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Zygarde' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Diancie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hoopa' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Volcanion' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Rowlet' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dartrix' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Decidueye' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dark' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Incineroar' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Primarina' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pikipek' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Trumbeak' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Toucannon' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Charjabug' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'electric' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Vikavolt' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ice' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Crabominable' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Oricorio' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Cutiefly' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Ribombee' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mareanie' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Toxapex' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dewpider' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'bug' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Araquanid' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Morelull' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Shiinotic' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Salandit' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fire' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Salazzle' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Stufful' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bewear' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Oranguru' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Wimpod' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'water' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Golisopod' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Sandygast' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ground' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Palossand' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Minior' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Turtonator' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Togedemaru' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Mimikyu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'psychic' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Bruxish' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Drampa' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'grass' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Dhelmise' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Hakamo-o' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kommo-o' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tapu Koko' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tapu Lele' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tapu Bulu' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Tapu Fini' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Solgaleo' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'ghost' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Lunala' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'poison' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Nihilego' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Buzzwole' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fighting' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Pheromosa' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'flying' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Celesteela' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'steel' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Kartana' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'dragon' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Guzzlord' UNION ALL
SELECT id_pokemon, ( SELECT id_pokemon_type FROM pokemon_types WHERE name = 'fairy' LIMIT 1 )AS id_pokemon_type FROM pokemons p WHERE p.name = 'Magearna' ;

INSERT INTO statistics
( id_pokemon, hp, attack, defense, sp_defense, sp_attack, speed )
SELECT id_pokemon, 45,49,49,65,65,45 FROM pokemons WHERE name = 'Bulbasaur' UNION ALL
SELECT id_pokemon, 60,62,63,80,80,60 FROM pokemons WHERE name = 'Ivysaur' UNION ALL
SELECT id_pokemon, 80,100,123,120,122,80 FROM pokemons WHERE name = 'Venusaur' UNION ALL
SELECT id_pokemon, 39,52,43,50,60,65 FROM pokemons WHERE name = 'Charmander' UNION ALL
SELECT id_pokemon, 58,64,58,65,80,80 FROM pokemons WHERE name = 'Charmeleon' UNION ALL
SELECT id_pokemon, 78,104,78,115,159,100 FROM pokemons WHERE name = 'Charizard' UNION ALL
SELECT id_pokemon, 44,48,65,64,50,43 FROM pokemons WHERE name = 'Squirtle' UNION ALL
SELECT id_pokemon, 59,63,80,80,65,58 FROM pokemons WHERE name = 'Wartortle' UNION ALL
SELECT id_pokemon, 79,103,120,115,135,78 FROM pokemons WHERE name = 'Blastoise' UNION ALL
SELECT id_pokemon, 45,30,35,20,20,45 FROM pokemons WHERE name = 'Caterpie' UNION ALL
SELECT id_pokemon, 50,20,55,25,25,30 FROM pokemons WHERE name = 'Metapod' UNION ALL
SELECT id_pokemon, 60,45,50,80,90,70 FROM pokemons WHERE name = 'Butterfree' UNION ALL
SELECT id_pokemon, 40,35,30,20,20,50 FROM pokemons WHERE name = 'Weedle' UNION ALL
SELECT id_pokemon, 45,25,50,25,25,35 FROM pokemons WHERE name = 'Kakuna' UNION ALL
SELECT id_pokemon, 65,150,40,80,15,145 FROM pokemons WHERE name = 'Beedrill' UNION ALL
SELECT id_pokemon, 40,45,40,35,35,56 FROM pokemons WHERE name = 'Pidgey' UNION ALL
SELECT id_pokemon, 63,60,55,50,50,71 FROM pokemons WHERE name = 'Pidgeotto' UNION ALL
SELECT id_pokemon, 83,80,80,80,135,121 FROM pokemons WHERE name = 'Pidgeot' UNION ALL
SELECT id_pokemon, 30,56,35,35,25,72 FROM pokemons WHERE name = 'Rattata' UNION ALL
SELECT id_pokemon, 75,71,70,80,40,77 FROM pokemons WHERE name = 'Raticate' UNION ALL
SELECT id_pokemon, 40,60,30,31,31,70 FROM pokemons WHERE name = 'Spearow' UNION ALL
SELECT id_pokemon, 65,90,65,61,61,100 FROM pokemons WHERE name = 'Fearow' UNION ALL
SELECT id_pokemon, 35,60,44,54,40,55 FROM pokemons WHERE name = 'Ekans' UNION ALL
SELECT id_pokemon, 60,95,69,79,65,80 FROM pokemons WHERE name = 'Arbok' UNION ALL
SELECT id_pokemon, 35,55,40,50,50,90 FROM pokemons WHERE name = 'Pikachu' UNION ALL
SELECT id_pokemon, 60,85,50,85,95,110 FROM pokemons WHERE name = 'Raichu' UNION ALL
SELECT id_pokemon, 50,75,90,35,10,40 FROM pokemons WHERE name = 'Sandshrew' UNION ALL
SELECT id_pokemon, 75,100,120,65,25,65 FROM pokemons WHERE name = 'Sandslash' UNION ALL
SELECT id_pokemon, 55,47,52,40,40,41 FROM pokemons WHERE name = 'Nidoran ♀' UNION ALL
SELECT id_pokemon, 70,62,67,55,55,56 FROM pokemons WHERE name = 'Nidorina' UNION ALL
SELECT id_pokemon, 90,92,87,85,75,76 FROM pokemons WHERE name = 'Nidoqueen' UNION ALL
SELECT id_pokemon, 46,57,40,40,40,50 FROM pokemons WHERE name = 'Nidoran ♂' UNION ALL
SELECT id_pokemon, 61,72,57,55,55,65 FROM pokemons WHERE name = 'Nidorino' UNION ALL
SELECT id_pokemon, 81,102,77,75,85,85 FROM pokemons WHERE name = 'Nidoking' UNION ALL
SELECT id_pokemon, 70,45,48,65,60,35 FROM pokemons WHERE name = 'Clefairy' UNION ALL
SELECT id_pokemon, 95,70,73,90,95,60 FROM pokemons WHERE name = 'Clefable' UNION ALL
SELECT id_pokemon, 38,41,40,65,50,65 FROM pokemons WHERE name = 'Vulpix' UNION ALL
SELECT id_pokemon, 73,67,75,100,81,109 FROM pokemons WHERE name = 'Ninetales' UNION ALL
SELECT id_pokemon, 115,45,20,25,45,20 FROM pokemons WHERE name = 'Jigglypuff' UNION ALL
SELECT id_pokemon, 140,70,45,50,85,45 FROM pokemons WHERE name = 'Wigglytuff' UNION ALL
SELECT id_pokemon, 40,45,35,40,30,55 FROM pokemons WHERE name = 'Zubat' UNION ALL
SELECT id_pokemon, 75,80,70,75,65,90 FROM pokemons WHERE name = 'Golbat' UNION ALL
SELECT id_pokemon, 45,50,55,65,75,30 FROM pokemons WHERE name = 'Oddish' UNION ALL
SELECT id_pokemon, 60,65,70,75,85,40 FROM pokemons WHERE name = 'Gloom' UNION ALL
SELECT id_pokemon, 75,80,85,90,110,50 FROM pokemons WHERE name = 'Vileplume' UNION ALL
SELECT id_pokemon, 35,70,55,55,45,25 FROM pokemons WHERE name = 'Paras' UNION ALL
SELECT id_pokemon, 60,95,80,80,60,30 FROM pokemons WHERE name = 'Parasect' UNION ALL
SELECT id_pokemon, 60,55,50,55,40,45 FROM pokemons WHERE name = 'Venonat' UNION ALL
SELECT id_pokemon, 70,65,60,75,90,90 FROM pokemons WHERE name = 'Venomoth' UNION ALL
SELECT id_pokemon, 10,55,30,45,35,90 FROM pokemons WHERE name = 'Diglett' UNION ALL
SELECT id_pokemon, 35,100,60,70,50,110 FROM pokemons WHERE name = 'Dugtrio' UNION ALL
SELECT id_pokemon, 40,35,35,40,50,90 FROM pokemons WHERE name = 'Meowth' UNION ALL
SELECT id_pokemon, 65,60,60,65,75,115 FROM pokemons WHERE name = 'Persian' UNION ALL
SELECT id_pokemon, 50,52,48,50,65,55 FROM pokemons WHERE name = 'Psyduck' UNION ALL
SELECT id_pokemon, 80,82,78,80,95,85 FROM pokemons WHERE name = 'Golduck' UNION ALL
SELECT id_pokemon, 40,80,35,45,35,70 FROM pokemons WHERE name = 'Mankey' UNION ALL
SELECT id_pokemon, 65,105,60,70,60,95 FROM pokemons WHERE name = 'Primeape' UNION ALL
SELECT id_pokemon, 55,70,45,50,70,60 FROM pokemons WHERE name = 'Growlithe' UNION ALL
SELECT id_pokemon, 90,110,80,80,100,95 FROM pokemons WHERE name = 'Arcanine' UNION ALL
SELECT id_pokemon, 40,50,40,40,40,90 FROM pokemons WHERE name = 'Poliwag' UNION ALL
SELECT id_pokemon, 65,65,65,50,50,90 FROM pokemons WHERE name = 'Poliwhirl' UNION ALL
SELECT id_pokemon, 90,95,95,90,70,70 FROM pokemons WHERE name = 'Poliwrath' UNION ALL
SELECT id_pokemon, 25,20,15,55,105,90 FROM pokemons WHERE name = 'Abra' UNION ALL
SELECT id_pokemon, 40,35,30,70,120,105 FROM pokemons WHERE name = 'Kadabra' UNION ALL
SELECT id_pokemon, 55,50,65,105,175,150 FROM pokemons WHERE name = 'Alakazam' UNION ALL
SELECT id_pokemon, 70,80,50,35,35,35 FROM pokemons WHERE name = 'Machop' UNION ALL
SELECT id_pokemon, 80,100,70,60,50,45 FROM pokemons WHERE name = 'Machoke' UNION ALL
SELECT id_pokemon, 90,130,80,85,65,55 FROM pokemons WHERE name = 'Machamp' UNION ALL
SELECT id_pokemon, 50,75,35,30,70,40 FROM pokemons WHERE name = 'Bellsprout' UNION ALL
SELECT id_pokemon, 65,90,50,45,85,55 FROM pokemons WHERE name = 'Weepinbell' UNION ALL
SELECT id_pokemon, 80,105,65,70,100,70 FROM pokemons WHERE name = 'Victreebel' UNION ALL
SELECT id_pokemon, 40,40,35,100,50,70 FROM pokemons WHERE name = 'Tentacool' UNION ALL
SELECT id_pokemon, 80,70,65,120,80,100 FROM pokemons WHERE name = 'Tentacruel' UNION ALL
SELECT id_pokemon, 40,80,100,30,30,20 FROM pokemons WHERE name = 'Geodude' UNION ALL
SELECT id_pokemon, 55,95,115,45,45,35 FROM pokemons WHERE name = 'Graveler' UNION ALL
SELECT id_pokemon, 80,120,130,65,55,45 FROM pokemons WHERE name = 'Golem' UNION ALL
SELECT id_pokemon, 50,85,55,65,65,90 FROM pokemons WHERE name = 'Ponyta' UNION ALL
SELECT id_pokemon, 65,100,70,80,80,105 FROM pokemons WHERE name = 'Rapidash' UNION ALL
SELECT id_pokemon, 90,65,65,40,40,15 FROM pokemons WHERE name = 'Slowpoke' UNION ALL
SELECT id_pokemon, 95,75,180,80,130,30 FROM pokemons WHERE name = 'Slowbro' UNION ALL
SELECT id_pokemon, 25,35,70,55,95,45 FROM pokemons WHERE name = 'Magnemite' UNION ALL
SELECT id_pokemon, 50,60,95,70,120,70 FROM pokemons WHERE name = 'Magneton' UNION ALL
SELECT id_pokemon, 52,90,55,62,58,60 FROM pokemons WHERE name = 'Farfetchd' UNION ALL
SELECT id_pokemon, 35,85,45,35,35,75 FROM pokemons WHERE name = 'Doduo' UNION ALL
SELECT id_pokemon, 60,110,70,60,60,110 FROM pokemons WHERE name = 'Dodrio' UNION ALL
SELECT id_pokemon, 65,45,55,70,45,45 FROM pokemons WHERE name = 'Seel' UNION ALL
SELECT id_pokemon, 90,70,80,95,70,70 FROM pokemons WHERE name = 'Dewgong' UNION ALL
SELECT id_pokemon, 80,80,50,50,40,25 FROM pokemons WHERE name = 'Grimer' UNION ALL
SELECT id_pokemon, 105,105,75,100,65,50 FROM pokemons WHERE name = 'Muk' UNION ALL
SELECT id_pokemon, 30,65,100,25,45,40 FROM pokemons WHERE name = 'Shellder' UNION ALL
SELECT id_pokemon, 50,95,180,45,85,70 FROM pokemons WHERE name = 'Cloyster' UNION ALL
SELECT id_pokemon, 30,35,30,35,100,80 FROM pokemons WHERE name = 'Gastly' UNION ALL
SELECT id_pokemon, 45,50,45,55,115,95 FROM pokemons WHERE name = 'Haunter' UNION ALL
SELECT id_pokemon, 60,65,80,95,170,130 FROM pokemons WHERE name = 'Gengar' UNION ALL
SELECT id_pokemon, 35,45,160,45,30,70 FROM pokemons WHERE name = 'Onix' UNION ALL
SELECT id_pokemon, 60,48,45,90,43,42 FROM pokemons WHERE name = 'Drowzee' UNION ALL
SELECT id_pokemon, 85,73,70,115,73,67 FROM pokemons WHERE name = 'Hypno' UNION ALL
SELECT id_pokemon, 30,105,90,25,25,50 FROM pokemons WHERE name = 'Krabby' UNION ALL
SELECT id_pokemon, 55,130,115,50,50,75 FROM pokemons WHERE name = 'Kingler' UNION ALL
SELECT id_pokemon, 40,30,50,55,55,100 FROM pokemons WHERE name = 'Voltorb' UNION ALL
SELECT id_pokemon, 60,50,70,80,80,150 FROM pokemons WHERE name = 'Electrode' UNION ALL
SELECT id_pokemon, 60,40,80,45,60,40 FROM pokemons WHERE name = 'Exeggcute' UNION ALL
SELECT id_pokemon, 95,105,85,75,125,45 FROM pokemons WHERE name = 'Exeggutor' UNION ALL
SELECT id_pokemon, 50,50,95,50,40,35 FROM pokemons WHERE name = 'Cubone' UNION ALL
SELECT id_pokemon, 60,80,110,80,50,45 FROM pokemons WHERE name = 'Marowak' UNION ALL
SELECT id_pokemon, 50,120,53,110,35,87 FROM pokemons WHERE name = 'Hitmonlee' UNION ALL
SELECT id_pokemon, 50,105,79,110,35,76 FROM pokemons WHERE name = 'Hitmonchan' UNION ALL
SELECT id_pokemon, 90,55,75,75,60,30 FROM pokemons WHERE name = 'Lickitung' UNION ALL
SELECT id_pokemon, 40,65,95,45,60,35 FROM pokemons WHERE name = 'Koffing' UNION ALL
SELECT id_pokemon, 65,90,120,70,85,60 FROM pokemons WHERE name = 'Weezing' UNION ALL
SELECT id_pokemon, 80,85,95,30,30,25 FROM pokemons WHERE name = 'Rhyhorn' UNION ALL
SELECT id_pokemon, 105,130,120,45,45,40 FROM pokemons WHERE name = 'Rhydon' UNION ALL
SELECT id_pokemon, 250,5,5,105,35,50 FROM pokemons WHERE name = 'Chansey' UNION ALL
SELECT id_pokemon, 65,55,115,40,100,60 FROM pokemons WHERE name = 'Tangela' UNION ALL
SELECT id_pokemon, 105,125,100,100,60,100 FROM pokemons WHERE name = 'Kangaskhan' UNION ALL
SELECT id_pokemon, 30,40,70,25,70,60 FROM pokemons WHERE name = 'Horsea' UNION ALL
SELECT id_pokemon, 55,65,95,45,95,85 FROM pokemons WHERE name = 'Seadra' UNION ALL
SELECT id_pokemon, 45,67,60,50,35,63 FROM pokemons WHERE name = 'Goldeen' UNION ALL
SELECT id_pokemon, 80,92,65,80,65,68 FROM pokemons WHERE name = 'Seaking' UNION ALL
SELECT id_pokemon, 30,45,55,55,70,85 FROM pokemons WHERE name = 'Staryu' UNION ALL
SELECT id_pokemon, 60,75,85,85,100,115 FROM pokemons WHERE name = 'Starmie' UNION ALL
SELECT id_pokemon, 40,45,65,120,100,90 FROM pokemons WHERE name = 'Mr. Mime' UNION ALL
SELECT id_pokemon, 70,110,80,80,55,105 FROM pokemons WHERE name = 'Scyther' UNION ALL
SELECT id_pokemon, 65,50,35,95,115,95 FROM pokemons WHERE name = 'Jynx' UNION ALL
SELECT id_pokemon, 65,83,57,85,95,105 FROM pokemons WHERE name = 'Electabuzz' UNION ALL
SELECT id_pokemon, 65,95,57,85,100,93 FROM pokemons WHERE name = 'Magmar' UNION ALL
SELECT id_pokemon, 65,155,120,90,65,105 FROM pokemons WHERE name = 'Pinsir' UNION ALL
SELECT id_pokemon, 75,100,95,70,40,110 FROM pokemons WHERE name = 'Tauros' UNION ALL
SELECT id_pokemon, 20,10,55,20,15,80 FROM pokemons WHERE name = 'Magikarp' UNION ALL
SELECT id_pokemon, 95,155,109,130,70,81 FROM pokemons WHERE name = 'Gyarados' UNION ALL
SELECT id_pokemon, 130,85,80,95,85,60 FROM pokemons WHERE name = 'Lapras' UNION ALL
SELECT id_pokemon, 48,48,48,48,48,48 FROM pokemons WHERE name = 'Ditto' UNION ALL
SELECT id_pokemon, 55,55,50,65,45,55 FROM pokemons WHERE name = 'Eevee' UNION ALL
SELECT id_pokemon, 130,65,60,95,110,65 FROM pokemons WHERE name = 'Vaporeon' UNION ALL
SELECT id_pokemon, 65,65,60,95,110,130 FROM pokemons WHERE name = 'Jolteon' UNION ALL
SELECT id_pokemon, 65,130,60,110,95,65 FROM pokemons WHERE name = 'Flareon' UNION ALL
SELECT id_pokemon, 65,60,70,75,85,40 FROM pokemons WHERE name = 'Porygon' UNION ALL
SELECT id_pokemon, 35,40,100,55,90,35 FROM pokemons WHERE name = 'Omanyte' UNION ALL
SELECT id_pokemon, 70,60,125,70,115,55 FROM pokemons WHERE name = 'Omastar' UNION ALL
SELECT id_pokemon, 30,80,90,45,55,55 FROM pokemons WHERE name = 'Kabuto' UNION ALL
SELECT id_pokemon, 60,115,105,70,65,80 FROM pokemons WHERE name = 'Kabutops' UNION ALL
SELECT id_pokemon, 80,135,85,95,70,150 FROM pokemons WHERE name = 'Aerodactyl' UNION ALL
SELECT id_pokemon, 160,110,65,110,65,30 FROM pokemons WHERE name = 'Snorlax' UNION ALL
SELECT id_pokemon, 90,85,100,125,95,85 FROM pokemons WHERE name = 'Articuno' UNION ALL
SELECT id_pokemon, 90,90,85,90,125,100 FROM pokemons WHERE name = 'Zapdos' UNION ALL
SELECT id_pokemon, 90,100,90,85,125,90 FROM pokemons WHERE name = 'Moltres' UNION ALL
SELECT id_pokemon, 41,64,45,50,50,50 FROM pokemons WHERE name = 'Dratini' UNION ALL
SELECT id_pokemon, 61,84,65,70,70,70 FROM pokemons WHERE name = 'Dragonair' UNION ALL
SELECT id_pokemon, 91,134,95,100,100,80 FROM pokemons WHERE name = 'Dragonite' UNION ALL
SELECT id_pokemon, 106,150,70,120,194,140 FROM pokemons WHERE name = 'Mewtwo' UNION ALL
SELECT id_pokemon, 100,100,100,100,100,100 FROM pokemons WHERE name = 'Mew' UNION ALL
SELECT id_pokemon, 45,49,65,65,49,45 FROM pokemons WHERE name = 'Chikorita' UNION ALL
SELECT id_pokemon, 60,62,80,80,63,60 FROM pokemons WHERE name = 'Bayleef' UNION ALL
SELECT id_pokemon, 80,82,100,100,83,80 FROM pokemons WHERE name = 'Meganium' UNION ALL
SELECT id_pokemon, 39,52,43,50,60,65 FROM pokemons WHERE name = 'Cyndaquil' UNION ALL
SELECT id_pokemon, 58,64,58,65,80,80 FROM pokemons WHERE name = 'Quilava' UNION ALL
SELECT id_pokemon, 78,84,78,85,109,100 FROM pokemons WHERE name = 'Typhlosion' UNION ALL
SELECT id_pokemon, 50,65,64,48,44,43 FROM pokemons WHERE name = 'Totodile' UNION ALL
SELECT id_pokemon, 65,80,80,63,59,58 FROM pokemons WHERE name = 'Croconaw' UNION ALL
SELECT id_pokemon, 85,105,100,83,79,78 FROM pokemons WHERE name = 'Feraligatr' UNION ALL
SELECT id_pokemon, 35,46,34,45,35,20 FROM pokemons WHERE name = 'Sentret' UNION ALL
SELECT id_pokemon, 85,76,64,55,45,90 FROM pokemons WHERE name = 'Furret' UNION ALL
SELECT id_pokemon, 60,30,30,56,36,50 FROM pokemons WHERE name = 'Hoothoot' UNION ALL
SELECT id_pokemon, 100,50,50,96,86,70 FROM pokemons WHERE name = 'Noctowl' UNION ALL
SELECT id_pokemon, 40,20,30,80,40,55 FROM pokemons WHERE name = 'Ledyba' UNION ALL
SELECT id_pokemon, 55,35,50,110,55,85 FROM pokemons WHERE name = 'Ledian' UNION ALL
SELECT id_pokemon, 40,60,40,40,40,30 FROM pokemons WHERE name = 'Spinarak' UNION ALL
SELECT id_pokemon, 70,90,70,70,60,40 FROM pokemons WHERE name = 'Ariados' UNION ALL
SELECT id_pokemon, 85,90,80,80,70,130 FROM pokemons WHERE name = 'Crobat' UNION ALL
SELECT id_pokemon, 75,38,38,56,56,67 FROM pokemons WHERE name = 'Chinchou' UNION ALL
SELECT id_pokemon, 125,58,58,76,76,67 FROM pokemons WHERE name = 'Lanturn' UNION ALL
SELECT id_pokemon, 20,40,15,35,35,60 FROM pokemons WHERE name = 'Pichu' UNION ALL
SELECT id_pokemon, 50,25,28,55,45,15 FROM pokemons WHERE name = 'Cleffa' UNION ALL
SELECT id_pokemon, 90,30,15,20,40,15 FROM pokemons WHERE name = 'Igglybuff' UNION ALL
SELECT id_pokemon, 35,20,65,65,40,20 FROM pokemons WHERE name = 'Togepi' UNION ALL
SELECT id_pokemon, 55,40,85,105,80,40 FROM pokemons WHERE name = 'Togetic' UNION ALL
SELECT id_pokemon, 40,50,45,45,70,70 FROM pokemons WHERE name = 'Natu' UNION ALL
SELECT id_pokemon, 65,75,70,70,95,95 FROM pokemons WHERE name = 'Xatu' UNION ALL
SELECT id_pokemon, 55,40,40,45,65,35 FROM pokemons WHERE name = 'Mareep' UNION ALL
SELECT id_pokemon, 70,55,55,60,80,45 FROM pokemons WHERE name = 'Flaaffy' UNION ALL
SELECT id_pokemon, 90,95,105,110,165,45 FROM pokemons WHERE name = 'Ampharos' UNION ALL
SELECT id_pokemon, 75,80,95,100,90,50 FROM pokemons WHERE name = 'Bellossom' UNION ALL
SELECT id_pokemon, 70,20,50,50,20,40 FROM pokemons WHERE name = 'Marill' UNION ALL
SELECT id_pokemon, 100,50,80,80,60,50 FROM pokemons WHERE name = 'Azumarill' UNION ALL
SELECT id_pokemon, 70,100,115,65,30,30 FROM pokemons WHERE name = 'Sudowoodo' UNION ALL
SELECT id_pokemon, 90,75,75,100,90,70 FROM pokemons WHERE name = 'Politoed' UNION ALL
SELECT id_pokemon, 35,35,40,55,35,50 FROM pokemons WHERE name = 'Hoppip' UNION ALL
SELECT id_pokemon, 55,45,50,65,45,80 FROM pokemons WHERE name = 'Skiploom' UNION ALL
SELECT id_pokemon, 75,55,70,95,55,110 FROM pokemons WHERE name = 'Jumpluff' UNION ALL
SELECT id_pokemon, 55,70,55,55,40,85 FROM pokemons WHERE name = 'Aipom' UNION ALL
SELECT id_pokemon, 30,30,30,30,30,30 FROM pokemons WHERE name = 'Sunkern' UNION ALL
SELECT id_pokemon, 75,75,55,85,105,30 FROM pokemons WHERE name = 'Sunflora' UNION ALL
SELECT id_pokemon, 65,65,45,45,75,95 FROM pokemons WHERE name = 'Yanma' UNION ALL
SELECT id_pokemon, 55,45,45,25,25,15 FROM pokemons WHERE name = 'Wooper' UNION ALL
SELECT id_pokemon, 95,85,85,65,65,35 FROM pokemons WHERE name = 'Quagsire' UNION ALL
SELECT id_pokemon, 65,65,60,95,130,110 FROM pokemons WHERE name = 'Espeon' UNION ALL
SELECT id_pokemon, 95,65,110,130,60,65 FROM pokemons WHERE name = 'Umbreon' UNION ALL
SELECT id_pokemon, 60,85,42,42,85,91 FROM pokemons WHERE name = 'Murkrow' UNION ALL
SELECT id_pokemon, 95,75,80,110,100,30 FROM pokemons WHERE name = 'Slowking' UNION ALL
SELECT id_pokemon, 60,60,60,85,85,85 FROM pokemons WHERE name = 'Misdreavus' UNION ALL
SELECT id_pokemon, 48,72,48,48,72,48 FROM pokemons WHERE name = 'Unown' UNION ALL
SELECT id_pokemon, 190,33,58,58,33,33 FROM pokemons WHERE name = 'Wobbuffet' UNION ALL
SELECT id_pokemon, 70,80,65,65,90,85 FROM pokemons WHERE name = 'Girafarig' UNION ALL
SELECT id_pokemon, 50,65,90,35,35,15 FROM pokemons WHERE name = 'Pineco' UNION ALL
SELECT id_pokemon, 75,90,140,60,60,40 FROM pokemons WHERE name = 'Forretress' UNION ALL
SELECT id_pokemon, 100,70,70,65,65,45 FROM pokemons WHERE name = 'Dunsparce' UNION ALL
SELECT id_pokemon, 65,75,105,65,35,85 FROM pokemons WHERE name = 'Gligar' UNION ALL
SELECT id_pokemon, 75,125,230,95,55,30 FROM pokemons WHERE name = 'Steelix' UNION ALL
SELECT id_pokemon, 60,80,50,40,40,30 FROM pokemons WHERE name = 'Snubbull' UNION ALL
SELECT id_pokemon, 90,120,75,60,60,45 FROM pokemons WHERE name = 'Granbull' UNION ALL
SELECT id_pokemon, 65,95,85,55,55,85 FROM pokemons WHERE name = 'Qwilfish' UNION ALL
SELECT id_pokemon, 70,150,140,100,65,75 FROM pokemons WHERE name = 'Scizor' UNION ALL
SELECT id_pokemon, 20,10,230,230,10,5 FROM pokemons WHERE name = 'Shuckle' UNION ALL
SELECT id_pokemon, 80,185,115,105,40,75 FROM pokemons WHERE name = 'Heracross' UNION ALL
SELECT id_pokemon, 55,95,55,75,35,115 FROM pokemons WHERE name = 'Sneasel' UNION ALL
SELECT id_pokemon, 60,80,50,50,50,40 FROM pokemons WHERE name = 'Teddiursa' UNION ALL
SELECT id_pokemon, 90,130,75,75,75,55 FROM pokemons WHERE name = 'Ursaring' UNION ALL
SELECT id_pokemon, 40,40,40,40,70,20 FROM pokemons WHERE name = 'Slugma' UNION ALL
SELECT id_pokemon, 60,50,120,80,90,30 FROM pokemons WHERE name = 'Magcargo' UNION ALL
SELECT id_pokemon, 50,50,40,30,30,50 FROM pokemons WHERE name = 'Swinub' UNION ALL
SELECT id_pokemon, 100,100,80,60,60,50 FROM pokemons WHERE name = 'Piloswine' UNION ALL
SELECT id_pokemon, 65,55,95,95,65,35 FROM pokemons WHERE name = 'Corsola' UNION ALL
SELECT id_pokemon, 35,65,35,35,65,65 FROM pokemons WHERE name = 'Remoraid' UNION ALL
SELECT id_pokemon, 75,105,75,75,105,45 FROM pokemons WHERE name = 'Octillery' UNION ALL
SELECT id_pokemon, 45,55,45,45,65,75 FROM pokemons WHERE name = 'Delibird' UNION ALL
SELECT id_pokemon, 85,40,70,140,80,70 FROM pokemons WHERE name = 'Mantine' UNION ALL
SELECT id_pokemon, 65,80,140,70,40,70 FROM pokemons WHERE name = 'Skarmory' UNION ALL
SELECT id_pokemon, 45,60,30,50,80,65 FROM pokemons WHERE name = 'Houndour' UNION ALL
SELECT id_pokemon, 75,90,90,90,140,115 FROM pokemons WHERE name = 'Houndoom' UNION ALL
SELECT id_pokemon, 75,95,95,95,95,85 FROM pokemons WHERE name = 'Kingdra' UNION ALL
SELECT id_pokemon, 90,60,60,40,40,40 FROM pokemons WHERE name = 'Phanpy' UNION ALL
SELECT id_pokemon, 90,120,120,60,60,50 FROM pokemons WHERE name = 'Donphan' UNION ALL
SELECT id_pokemon, 85,80,90,95,105,60 FROM pokemons WHERE name = 'Porygon2' UNION ALL
SELECT id_pokemon, 73,95,62,65,85,85 FROM pokemons WHERE name = 'Stantler' UNION ALL
SELECT id_pokemon, 55,20,35,45,20,75 FROM pokemons WHERE name = 'Smeargle' UNION ALL
SELECT id_pokemon, 35,35,35,35,35,35 FROM pokemons WHERE name = 'Tyrogue' UNION ALL
SELECT id_pokemon, 50,95,95,110,35,70 FROM pokemons WHERE name = 'Hitmontop' UNION ALL
SELECT id_pokemon, 45,30,15,65,85,65 FROM pokemons WHERE name = 'Smoochum' UNION ALL
SELECT id_pokemon, 45,63,37,55,65,95 FROM pokemons WHERE name = 'Elekid' UNION ALL
SELECT id_pokemon, 45,75,37,55,70,83 FROM pokemons WHERE name = 'Magby' UNION ALL
SELECT id_pokemon, 95,80,105,70,40,100 FROM pokemons WHERE name = 'Miltank' UNION ALL
SELECT id_pokemon, 255,10,10,135,75,55 FROM pokemons WHERE name = 'Blissey' UNION ALL
SELECT id_pokemon, 90,85,75,100,115,115 FROM pokemons WHERE name = 'Raikou' UNION ALL
SELECT id_pokemon, 115,115,85,75,90,100 FROM pokemons WHERE name = 'Entei' UNION ALL
SELECT id_pokemon, 100,75,115,115,90,85 FROM pokemons WHERE name = 'Suicune' UNION ALL
SELECT id_pokemon, 50,64,50,50,45,41 FROM pokemons WHERE name = 'Larvitar' UNION ALL
SELECT id_pokemon, 70,84,70,70,65,51 FROM pokemons WHERE name = 'Pupitar' UNION ALL
SELECT id_pokemon, 100,164,150,120,95,71 FROM pokemons WHERE name = 'Tyranitar' UNION ALL
SELECT id_pokemon, 106,90,130,154,90,110 FROM pokemons WHERE name = 'Lugia' UNION ALL
SELECT id_pokemon, 106,130,90,154,110,90 FROM pokemons WHERE name = 'Ho-Oh' UNION ALL
SELECT id_pokemon, 100,100,100,100,100,100 FROM pokemons WHERE name = 'Celebi' UNION ALL
SELECT id_pokemon, 40,45,35,55,65,70 FROM pokemons WHERE name = 'Treecko' UNION ALL
SELECT id_pokemon, 50,65,45,65,85,95 FROM pokemons WHERE name = 'Grovyle' UNION ALL
SELECT id_pokemon, 70,110,75,85,145,145 FROM pokemons WHERE name = 'Sceptile' UNION ALL
SELECT id_pokemon, 45,60,40,50,70,45 FROM pokemons WHERE name = 'Torchic' UNION ALL
SELECT id_pokemon, 60,85,60,60,85,55 FROM pokemons WHERE name = 'Combusken' UNION ALL
SELECT id_pokemon, 80,160,80,80,130,100 FROM pokemons WHERE name = 'Blaziken' UNION ALL
SELECT id_pokemon, 50,70,50,50,50,40 FROM pokemons WHERE name = 'Mudkip' UNION ALL
SELECT id_pokemon, 70,85,70,70,60,50 FROM pokemons WHERE name = 'Marshtomp' UNION ALL
SELECT id_pokemon, 100,150,110,110,95,70 FROM pokemons WHERE name = 'Swampert' UNION ALL
SELECT id_pokemon, 35,55,35,30,30,35 FROM pokemons WHERE name = 'Poochyena' UNION ALL
SELECT id_pokemon, 70,90,70,60,60,70 FROM pokemons WHERE name = 'Mightyena' UNION ALL
SELECT id_pokemon, 38,30,41,41,30,60 FROM pokemons WHERE name = 'Zigzagoon' UNION ALL
SELECT id_pokemon, 78,70,61,61,50,100 FROM pokemons WHERE name = 'Linoone' UNION ALL
SELECT id_pokemon, 45,45,35,30,20,20 FROM pokemons WHERE name = 'Wurmple' UNION ALL
SELECT id_pokemon, 50,35,55,25,25,15 FROM pokemons WHERE name = 'Silcoon' UNION ALL
SELECT id_pokemon, 60,70,50,50,100,65 FROM pokemons WHERE name = 'Beautifly' UNION ALL
SELECT id_pokemon, 50,35,55,25,25,15 FROM pokemons WHERE name = 'Cascoon' UNION ALL
SELECT id_pokemon, 60,50,70,90,50,65 FROM pokemons WHERE name = 'Dustox' UNION ALL
SELECT id_pokemon, 40,30,30,50,40,30 FROM pokemons WHERE name = 'Lotad' UNION ALL
SELECT id_pokemon, 60,50,50,70,60,50 FROM pokemons WHERE name = 'Lombre' UNION ALL
SELECT id_pokemon, 80,70,70,100,90,70 FROM pokemons WHERE name = 'Ludicolo' UNION ALL
SELECT id_pokemon, 40,40,50,30,30,30 FROM pokemons WHERE name = 'Seedot' UNION ALL
SELECT id_pokemon, 70,70,40,40,60,60 FROM pokemons WHERE name = 'Nuzleaf' UNION ALL
SELECT id_pokemon, 90,100,60,60,90,80 FROM pokemons WHERE name = 'Shiftry' UNION ALL
SELECT id_pokemon, 40,55,30,30,30,85 FROM pokemons WHERE name = 'Taillow' UNION ALL
SELECT id_pokemon, 60,85,60,50,75,125 FROM pokemons WHERE name = 'Swellow' UNION ALL
SELECT id_pokemon, 40,30,30,30,55,85 FROM pokemons WHERE name = 'Wingull' UNION ALL
SELECT id_pokemon, 60,50,100,70,95,65 FROM pokemons WHERE name = 'Pelipper' UNION ALL
SELECT id_pokemon, 28,25,25,35,45,40 FROM pokemons WHERE name = 'Ralts' UNION ALL
SELECT id_pokemon, 38,35,35,55,65,50 FROM pokemons WHERE name = 'Kirlia' UNION ALL
SELECT id_pokemon, 68,85,65,135,165,100 FROM pokemons WHERE name = 'Gardevoir' UNION ALL
SELECT id_pokemon, 40,30,32,52,50,65 FROM pokemons WHERE name = 'Surskit' UNION ALL
SELECT id_pokemon, 70,60,62,82,100,80 FROM pokemons WHERE name = 'Masquerain' UNION ALL
SELECT id_pokemon, 60,40,60,60,40,35 FROM pokemons WHERE name = 'Shroomish' UNION ALL
SELECT id_pokemon, 60,130,80,60,60,70 FROM pokemons WHERE name = 'Breloom' UNION ALL
SELECT id_pokemon, 60,60,60,35,35,30 FROM pokemons WHERE name = 'Slakoth' UNION ALL
SELECT id_pokemon, 80,80,80,55,55,90 FROM pokemons WHERE name = 'Vigoroth' UNION ALL
SELECT id_pokemon, 150,160,100,65,95,100 FROM pokemons WHERE name = 'Slaking' UNION ALL
SELECT id_pokemon, 31,45,90,30,30,40 FROM pokemons WHERE name = 'Nincada' UNION ALL
SELECT id_pokemon, 61,90,45,50,50,160 FROM pokemons WHERE name = 'Ninjask' UNION ALL
SELECT id_pokemon, 1,90,45,30,30,40 FROM pokemons WHERE name = 'Shedinja' UNION ALL
SELECT id_pokemon, 64,51,23,23,51,28 FROM pokemons WHERE name = 'Whismur' UNION ALL
SELECT id_pokemon, 84,71,43,43,71,48 FROM pokemons WHERE name = 'Loudred' UNION ALL
SELECT id_pokemon, 104,91,63,73,91,68 FROM pokemons WHERE name = 'Exploud' UNION ALL
SELECT id_pokemon, 72,60,30,30,20,25 FROM pokemons WHERE name = 'Makuhita' UNION ALL
SELECT id_pokemon, 144,120,60,60,40,50 FROM pokemons WHERE name = 'Hariyama' UNION ALL
SELECT id_pokemon, 50,20,40,40,20,20 FROM pokemons WHERE name = 'Azurill' UNION ALL
SELECT id_pokemon, 30,45,135,90,45,30 FROM pokemons WHERE name = 'Nosepass' UNION ALL
SELECT id_pokemon, 50,45,45,35,35,50 FROM pokemons WHERE name = 'Skitty' UNION ALL
SELECT id_pokemon, 70,65,65,55,55,90 FROM pokemons WHERE name = 'Delcatty' UNION ALL
SELECT id_pokemon, 50,85,125,115,85,20 FROM pokemons WHERE name = 'Sableye' UNION ALL
SELECT id_pokemon, 50,105,125,95,55,50 FROM pokemons WHERE name = 'Mawile' UNION ALL
SELECT id_pokemon, 50,70,100,40,40,30 FROM pokemons WHERE name = 'Aron' UNION ALL
SELECT id_pokemon, 60,90,140,50,50,40 FROM pokemons WHERE name = 'Lairon' UNION ALL
SELECT id_pokemon, 70,140,230,80,60,50 FROM pokemons WHERE name = 'Aggron' UNION ALL
SELECT id_pokemon, 30,40,55,55,40,60 FROM pokemons WHERE name = 'Meditite' UNION ALL
SELECT id_pokemon, 60,100,85,85,80,100 FROM pokemons WHERE name = 'Medicham' UNION ALL
SELECT id_pokemon, 40,45,40,40,65,65 FROM pokemons WHERE name = 'Electrike' UNION ALL
SELECT id_pokemon, 70,75,80,80,135,135 FROM pokemons WHERE name = 'Manectric' UNION ALL
SELECT id_pokemon, 60,50,40,75,85,95 FROM pokemons WHERE name = 'Plusle' UNION ALL
SELECT id_pokemon, 60,40,50,85,75,95 FROM pokemons WHERE name = 'Minun' UNION ALL
SELECT id_pokemon, 65,73,75,85,47,85 FROM pokemons WHERE name = 'Volbeat' UNION ALL
SELECT id_pokemon, 65,47,75,85,73,85 FROM pokemons WHERE name = 'Illumise' UNION ALL
SELECT id_pokemon, 50,60,45,80,100,65 FROM pokemons WHERE name = 'Roselia' UNION ALL
SELECT id_pokemon, 70,43,53,53,43,40 FROM pokemons WHERE name = 'Gulpin' UNION ALL
SELECT id_pokemon, 100,73,83,83,73,55 FROM pokemons WHERE name = 'Swalot' UNION ALL
SELECT id_pokemon, 45,90,20,20,65,65 FROM pokemons WHERE name = 'Carvanha' UNION ALL
SELECT id_pokemon, 70,140,70,65,110,105 FROM pokemons WHERE name = 'Sharpedo' UNION ALL
SELECT id_pokemon, 130,70,35,35,70,60 FROM pokemons WHERE name = 'Wailmer' UNION ALL
SELECT id_pokemon, 170,90,45,45,90,60 FROM pokemons WHERE name = 'Wailord' UNION ALL
SELECT id_pokemon, 60,60,40,45,65,35 FROM pokemons WHERE name = 'Numel' UNION ALL
SELECT id_pokemon, 70,120,100,105,145,20 FROM pokemons WHERE name = 'Camerupt' UNION ALL
SELECT id_pokemon, 70,85,140,70,85,20 FROM pokemons WHERE name = 'Torkoal' UNION ALL
SELECT id_pokemon, 60,25,35,80,70,60 FROM pokemons WHERE name = 'Spoink' UNION ALL
SELECT id_pokemon, 80,45,65,110,90,80 FROM pokemons WHERE name = 'Grumpig' UNION ALL
SELECT id_pokemon, 60,60,60,60,60,60 FROM pokemons WHERE name = 'Spinda' UNION ALL
SELECT id_pokemon, 45,100,45,45,45,10 FROM pokemons WHERE name = 'Trapinch' UNION ALL
SELECT id_pokemon, 50,70,50,50,50,70 FROM pokemons WHERE name = 'Vibrava' UNION ALL
SELECT id_pokemon, 80,100,80,80,80,100 FROM pokemons WHERE name = 'Flygon' UNION ALL
SELECT id_pokemon, 50,85,40,40,85,35 FROM pokemons WHERE name = 'Cacnea' UNION ALL
SELECT id_pokemon, 70,115,60,60,115,55 FROM pokemons WHERE name = 'Cacturne' UNION ALL
SELECT id_pokemon, 45,40,60,75,40,50 FROM pokemons WHERE name = 'Swablu' UNION ALL
SELECT id_pokemon, 75,110,110,105,110,80 FROM pokemons WHERE name = 'Altaria' UNION ALL
SELECT id_pokemon, 73,115,60,60,60,90 FROM pokemons WHERE name = 'Zangoose' UNION ALL
SELECT id_pokemon, 73,100,60,60,100,65 FROM pokemons WHERE name = 'Seviper' UNION ALL
SELECT id_pokemon, 90,55,65,85,95,70 FROM pokemons WHERE name = 'Lunatone' UNION ALL
SELECT id_pokemon, 90,95,85,65,55,70 FROM pokemons WHERE name = 'Solrock' UNION ALL
SELECT id_pokemon, 50,48,43,41,46,60 FROM pokemons WHERE name = 'Barboach' UNION ALL
SELECT id_pokemon, 110,78,73,71,76,60 FROM pokemons WHERE name = 'Whiscash' UNION ALL
SELECT id_pokemon, 43,80,65,35,50,35 FROM pokemons WHERE name = 'Corphish' UNION ALL
SELECT id_pokemon, 63,120,85,55,90,55 FROM pokemons WHERE name = 'Crawdaunt' UNION ALL
SELECT id_pokemon, 40,40,55,70,40,55 FROM pokemons WHERE name = 'Baltoy' UNION ALL
SELECT id_pokemon, 60,70,105,120,70,75 FROM pokemons WHERE name = 'Claydol' UNION ALL
SELECT id_pokemon, 66,41,77,87,61,23 FROM pokemons WHERE name = 'Lileep' UNION ALL
SELECT id_pokemon, 86,81,97,107,81,43 FROM pokemons WHERE name = 'Cradily' UNION ALL
SELECT id_pokemon, 45,95,50,50,40,75 FROM pokemons WHERE name = 'Anorith' UNION ALL
SELECT id_pokemon, 75,125,100,80,70,45 FROM pokemons WHERE name = 'Armaldo' UNION ALL
SELECT id_pokemon, 20,15,20,55,10,80 FROM pokemons WHERE name = 'Feebas' UNION ALL
SELECT id_pokemon, 95,60,79,125,100,81 FROM pokemons WHERE name = 'Milotic' UNION ALL
SELECT id_pokemon, 70,70,70,70,70,70 FROM pokemons WHERE name = 'Castform' UNION ALL
SELECT id_pokemon, 60,90,70,120,60,40 FROM pokemons WHERE name = 'Kecleon' UNION ALL
SELECT id_pokemon, 44,75,35,33,63,45 FROM pokemons WHERE name = 'Shuppet' UNION ALL
SELECT id_pokemon, 64,165,75,83,93,75 FROM pokemons WHERE name = 'Banette' UNION ALL
SELECT id_pokemon, 20,40,90,90,30,25 FROM pokemons WHERE name = 'Duskull' UNION ALL
SELECT id_pokemon, 40,70,130,130,60,25 FROM pokemons WHERE name = 'Dusclops' UNION ALL
SELECT id_pokemon, 99,68,83,87,72,51 FROM pokemons WHERE name = 'Tropius' UNION ALL
SELECT id_pokemon, 75,50,80,90,95,65 FROM pokemons WHERE name = 'Chimecho' UNION ALL
SELECT id_pokemon, 65,150,60,60,115,115 FROM pokemons WHERE name = 'Absol' UNION ALL
SELECT id_pokemon, 95,23,48,48,23,23 FROM pokemons WHERE name = 'Wynaut' UNION ALL
SELECT id_pokemon, 50,50,50,50,50,50 FROM pokemons WHERE name = 'Snorunt' UNION ALL
SELECT id_pokemon, 80,120,80,80,120,100 FROM pokemons WHERE name = 'Glalie' UNION ALL
SELECT id_pokemon, 70,40,50,50,55,25 FROM pokemons WHERE name = 'Spheal' UNION ALL
SELECT id_pokemon, 90,60,70,70,75,45 FROM pokemons WHERE name = 'Sealeo' UNION ALL
SELECT id_pokemon, 110,80,90,90,95,65 FROM pokemons WHERE name = 'Walrein' UNION ALL
SELECT id_pokemon, 35,64,85,55,74,32 FROM pokemons WHERE name = 'Clamperl' UNION ALL
SELECT id_pokemon, 55,104,105,75,94,52 FROM pokemons WHERE name = 'Huntail' UNION ALL
SELECT id_pokemon, 55,84,105,75,114,52 FROM pokemons WHERE name = 'Gorebyss' UNION ALL
SELECT id_pokemon, 100,90,130,65,45,55 FROM pokemons WHERE name = 'Relicanth' UNION ALL
SELECT id_pokemon, 43,30,55,65,40,97 FROM pokemons WHERE name = 'Luvdisc' UNION ALL
SELECT id_pokemon, 45,75,60,30,40,50 FROM pokemons WHERE name = 'Bagon' UNION ALL
SELECT id_pokemon, 65,95,100,50,60,50 FROM pokemons WHERE name = 'Shelgon' UNION ALL
SELECT id_pokemon, 95,145,130,90,120,120 FROM pokemons WHERE name = 'Salamence' UNION ALL
SELECT id_pokemon, 40,55,80,60,35,30 FROM pokemons WHERE name = 'Beldum' UNION ALL
SELECT id_pokemon, 60,75,100,80,55,50 FROM pokemons WHERE name = 'Metang' UNION ALL
SELECT id_pokemon, 80,145,150,110,105,110 FROM pokemons WHERE name = 'Metagross' UNION ALL
SELECT id_pokemon, 80,100,200,100,50,50 FROM pokemons WHERE name = 'Regirock' UNION ALL
SELECT id_pokemon, 80,50,100,200,100,50 FROM pokemons WHERE name = 'Regice' UNION ALL
SELECT id_pokemon, 80,75,150,150,75,50 FROM pokemons WHERE name = 'Registeel' UNION ALL
SELECT id_pokemon, 80,100,120,150,140,110 FROM pokemons WHERE name = 'Latias' UNION ALL
SELECT id_pokemon, 80,130,100,120,160,110 FROM pokemons WHERE name = 'Latios' UNION ALL
SELECT id_pokemon, 100,150,90,160,180,90 FROM pokemons WHERE name = 'Kyogre' UNION ALL
SELECT id_pokemon, 100,180,160,90,150,90 FROM pokemons WHERE name = 'Groudon' UNION ALL
SELECT id_pokemon, 105,180,100,100,180,115 FROM pokemons WHERE name = 'Rayquaza' UNION ALL
SELECT id_pokemon, 100,100,100,100,100,100 FROM pokemons WHERE name = 'Jirachi' UNION ALL
SELECT id_pokemon, 50,95,90,90,95,180 FROM pokemons WHERE name = 'Deoxys' UNION ALL
SELECT id_pokemon, 55,68,64,55,45,31 FROM pokemons WHERE name = 'Turtwig' UNION ALL
SELECT id_pokemon, 75,89,85,65,55,36 FROM pokemons WHERE name = 'Grotle' UNION ALL
SELECT id_pokemon, 95,109,105,85,75,56 FROM pokemons WHERE name = 'Torterra' UNION ALL
SELECT id_pokemon, 44,58,44,44,58,61 FROM pokemons WHERE name = 'Chimchar' UNION ALL
SELECT id_pokemon, 64,78,52,52,78,81 FROM pokemons WHERE name = 'Monferno' UNION ALL
SELECT id_pokemon, 76,104,71,71,104,108 FROM pokemons WHERE name = 'Infernape' UNION ALL
SELECT id_pokemon, 53,51,53,56,61,40 FROM pokemons WHERE name = 'Piplup' UNION ALL
SELECT id_pokemon, 64,66,68,76,81,50 FROM pokemons WHERE name = 'Prinplup' UNION ALL
SELECT id_pokemon, 84,86,88,101,111,60 FROM pokemons WHERE name = 'Empoleon' UNION ALL
SELECT id_pokemon, 40,55,30,30,30,60 FROM pokemons WHERE name = 'Starly' UNION ALL
SELECT id_pokemon, 55,75,50,40,40,80 FROM pokemons WHERE name = 'Staravia' UNION ALL
SELECT id_pokemon, 85,120,70,60,50,100 FROM pokemons WHERE name = 'Staraptor' UNION ALL
SELECT id_pokemon, 59,45,40,40,35,31 FROM pokemons WHERE name = 'Bidoof' UNION ALL
SELECT id_pokemon, 79,85,60,60,55,71 FROM pokemons WHERE name = 'Bibarel' UNION ALL
SELECT id_pokemon, 37,25,41,41,25,25 FROM pokemons WHERE name = 'Kricketot' UNION ALL
SELECT id_pokemon, 77,85,51,51,55,65 FROM pokemons WHERE name = 'Kricketune' UNION ALL
SELECT id_pokemon, 45,65,34,34,40,45 FROM pokemons WHERE name = 'Shinx' UNION ALL
SELECT id_pokemon, 60,85,49,49,60,60 FROM pokemons WHERE name = 'Luxio' UNION ALL
SELECT id_pokemon, 80,120,79,79,95,70 FROM pokemons WHERE name = 'Luxray' UNION ALL
SELECT id_pokemon, 40,30,35,70,50,55 FROM pokemons WHERE name = 'Budew' UNION ALL
SELECT id_pokemon, 60,70,65,105,125,90 FROM pokemons WHERE name = 'Roserade' UNION ALL
SELECT id_pokemon, 67,125,40,30,30,58 FROM pokemons WHERE name = 'Cranidos' UNION ALL
SELECT id_pokemon, 97,165,60,50,65,58 FROM pokemons WHERE name = 'Rampardos' UNION ALL
SELECT id_pokemon, 30,42,118,88,42,30 FROM pokemons WHERE name = 'Shieldon' UNION ALL
SELECT id_pokemon, 60,52,168,138,47,30 FROM pokemons WHERE name = 'Bastiodon' UNION ALL
SELECT id_pokemon, 40,29,45,45,29,36 FROM pokemons WHERE name = 'Burmy' UNION ALL
SELECT id_pokemon, 60,69,95,95,69,36 FROM pokemons WHERE name = 'Wormadam' UNION ALL
SELECT id_pokemon, 70,94,50,50,94,66 FROM pokemons WHERE name = 'Mothim' UNION ALL
SELECT id_pokemon, 30,30,42,42,30,70 FROM pokemons WHERE name = 'Combee' UNION ALL
SELECT id_pokemon, 70,80,102,102,80,40 FROM pokemons WHERE name = 'Vespiquen' UNION ALL
SELECT id_pokemon, 60,45,70,90,45,95 FROM pokemons WHERE name = 'Pachirisu' UNION ALL
SELECT id_pokemon, 55,65,35,30,60,85 FROM pokemons WHERE name = 'Buizel' UNION ALL
SELECT id_pokemon, 85,105,55,50,85,115 FROM pokemons WHERE name = 'Floatzel' UNION ALL
SELECT id_pokemon, 45,35,45,53,62,35 FROM pokemons WHERE name = 'Cherubi' UNION ALL
SELECT id_pokemon, 70,60,70,78,87,85 FROM pokemons WHERE name = 'Cherrim' UNION ALL
SELECT id_pokemon, 76,48,48,62,57,34 FROM pokemons WHERE name = 'Shellos' UNION ALL
SELECT id_pokemon, 111,83,68,82,92,39 FROM pokemons WHERE name = 'Gastrodon' UNION ALL
SELECT id_pokemon, 75,100,66,66,60,115 FROM pokemons WHERE name = 'Ambipom' UNION ALL
SELECT id_pokemon, 90,50,34,44,60,70 FROM pokemons WHERE name = 'Drifloon' UNION ALL
SELECT id_pokemon, 150,80,44,54,90,80 FROM pokemons WHERE name = 'Drifblim' UNION ALL
SELECT id_pokemon, 55,66,44,56,44,85 FROM pokemons WHERE name = 'Buneary' UNION ALL
SELECT id_pokemon, 65,136,94,96,54,135 FROM pokemons WHERE name = 'Lopunny' UNION ALL
SELECT id_pokemon, 60,60,60,105,105,105 FROM pokemons WHERE name = 'Mismagius' UNION ALL
SELECT id_pokemon, 100,125,52,52,105,71 FROM pokemons WHERE name = 'Honchkrow' UNION ALL
SELECT id_pokemon, 49,55,42,37,42,85 FROM pokemons WHERE name = 'Glameow' UNION ALL
SELECT id_pokemon, 71,82,64,59,64,112 FROM pokemons WHERE name = 'Purugly' UNION ALL
SELECT id_pokemon, 45,30,50,50,65,45 FROM pokemons WHERE name = 'Chingling' UNION ALL
SELECT id_pokemon, 63,63,47,41,41,74 FROM pokemons WHERE name = 'Stunky' UNION ALL
SELECT id_pokemon, 103,93,67,61,71,84 FROM pokemons WHERE name = 'Skuntank' UNION ALL
SELECT id_pokemon, 57,24,86,86,24,23 FROM pokemons WHERE name = 'Bronzor' UNION ALL
SELECT id_pokemon, 67,89,116,116,79,33 FROM pokemons WHERE name = 'Bronzong' UNION ALL
SELECT id_pokemon, 50,80,95,45,10,10 FROM pokemons WHERE name = 'Bonsly' UNION ALL
SELECT id_pokemon, 20,25,45,90,70,60 FROM pokemons WHERE name = 'Mime Jr.' UNION ALL
SELECT id_pokemon, 100,5,5,65,15,30 FROM pokemons WHERE name = 'Happiny' UNION ALL
SELECT id_pokemon, 76,65,45,42,92,91 FROM pokemons WHERE name = 'Chatot' UNION ALL
SELECT id_pokemon, 50,92,108,108,92,35 FROM pokemons WHERE name = 'Spiritomb' UNION ALL
SELECT id_pokemon, 58,70,45,45,40,42 FROM pokemons WHERE name = 'Gible' UNION ALL
SELECT id_pokemon, 68,90,65,55,50,82 FROM pokemons WHERE name = 'Gabite' UNION ALL
SELECT id_pokemon, 108,170,115,95,120,92 FROM pokemons WHERE name = 'Garchomp' UNION ALL
SELECT id_pokemon, 135,85,40,85,40,5 FROM pokemons WHERE name = 'Munchlax' UNION ALL
SELECT id_pokemon, 40,70,40,40,35,60 FROM pokemons WHERE name = 'Riolu' UNION ALL
SELECT id_pokemon, 70,145,88,70,140,112 FROM pokemons WHERE name = 'Lucario' UNION ALL
SELECT id_pokemon, 68,72,78,42,38,32 FROM pokemons WHERE name = 'Hippopotas' UNION ALL
SELECT id_pokemon, 108,112,118,72,68,47 FROM pokemons WHERE name = 'Hippowdon' UNION ALL
SELECT id_pokemon, 40,50,90,55,30,65 FROM pokemons WHERE name = 'Skorupi' UNION ALL
SELECT id_pokemon, 70,90,110,75,60,95 FROM pokemons WHERE name = 'Drapion' UNION ALL
SELECT id_pokemon, 48,61,40,40,61,50 FROM pokemons WHERE name = 'Croagunk' UNION ALL
SELECT id_pokemon, 83,106,65,65,86,85 FROM pokemons WHERE name = 'Toxicroak' UNION ALL
SELECT id_pokemon, 74,100,72,72,90,46 FROM pokemons WHERE name = 'Carnivine' UNION ALL
SELECT id_pokemon, 49,49,56,61,49,66 FROM pokemons WHERE name = 'Finneon' UNION ALL
SELECT id_pokemon, 69,69,76,86,69,91 FROM pokemons WHERE name = 'Lumineon' UNION ALL
SELECT id_pokemon, 45,20,50,120,60,50 FROM pokemons WHERE name = 'Mantyke' UNION ALL
SELECT id_pokemon, 60,62,50,60,62,40 FROM pokemons WHERE name = 'Snover' UNION ALL
SELECT id_pokemon, 90,132,105,105,132,30 FROM pokemons WHERE name = 'Abomasnow' UNION ALL
SELECT id_pokemon, 70,120,65,85,45,125 FROM pokemons WHERE name = 'Weavile' UNION ALL
SELECT id_pokemon, 70,70,115,90,130,60 FROM pokemons WHERE name = 'Magnezone' UNION ALL
SELECT id_pokemon, 110,85,95,95,80,50 FROM pokemons WHERE name = 'Lickilicky' UNION ALL
SELECT id_pokemon, 115,140,130,55,55,40 FROM pokemons WHERE name = 'Rhyperior' UNION ALL
SELECT id_pokemon, 100,100,125,50,110,50 FROM pokemons WHERE name = 'Tangrowth' UNION ALL
SELECT id_pokemon, 75,123,67,85,95,95 FROM pokemons WHERE name = 'Electivire' UNION ALL
SELECT id_pokemon, 75,95,67,95,125,83 FROM pokemons WHERE name = 'Magmortar' UNION ALL
SELECT id_pokemon, 85,50,95,115,120,80 FROM pokemons WHERE name = 'Togekiss' UNION ALL
SELECT id_pokemon, 86,76,86,56,116,95 FROM pokemons WHERE name = 'Yanmega' UNION ALL
SELECT id_pokemon, 65,110,130,65,60,95 FROM pokemons WHERE name = 'Leafeon' UNION ALL
SELECT id_pokemon, 65,60,110,95,130,65 FROM pokemons WHERE name = 'Glaceon' UNION ALL
SELECT id_pokemon, 75,95,125,75,45,95 FROM pokemons WHERE name = 'Gliscor' UNION ALL
SELECT id_pokemon, 110,130,80,60,70,80 FROM pokemons WHERE name = 'Mamoswine' UNION ALL
SELECT id_pokemon, 85,80,70,75,135,90 FROM pokemons WHERE name = 'Porygon-Z' UNION ALL
SELECT id_pokemon, 68,165,95,115,65,110 FROM pokemons WHERE name = 'Gallade' UNION ALL
SELECT id_pokemon, 60,55,145,150,75,40 FROM pokemons WHERE name = 'Probopass' UNION ALL
SELECT id_pokemon, 45,100,135,135,65,45 FROM pokemons WHERE name = 'Dusknoir' UNION ALL
SELECT id_pokemon, 70,80,70,70,80,110 FROM pokemons WHERE name = 'Froslass' UNION ALL
SELECT id_pokemon, 50,65,107,107,105,86 FROM pokemons WHERE name = 'Rotom' UNION ALL
SELECT id_pokemon, 75,75,130,130,75,95 FROM pokemons WHERE name = 'Uxie' UNION ALL
SELECT id_pokemon, 80,105,105,105,105,80 FROM pokemons WHERE name = 'Mesprit' UNION ALL
SELECT id_pokemon, 75,125,70,70,125,115 FROM pokemons WHERE name = 'Azelf' UNION ALL
SELECT id_pokemon, 100,120,120,100,150,90 FROM pokemons WHERE name = 'Dialga' UNION ALL
SELECT id_pokemon, 90,120,100,120,150,100 FROM pokemons WHERE name = 'Palkia' UNION ALL
SELECT id_pokemon, 91,90,106,106,130,77 FROM pokemons WHERE name = 'Heatran' UNION ALL
SELECT id_pokemon, 110,160,110,110,80,100 FROM pokemons WHERE name = 'Regigigas' UNION ALL
SELECT id_pokemon, 150,120,100,100,120,90 FROM pokemons WHERE name = 'Giratina' UNION ALL
SELECT id_pokemon, 120,70,120,130,75,85 FROM pokemons WHERE name = 'Cresselia' UNION ALL
SELECT id_pokemon, 80,80,80,80,80,80 FROM pokemons WHERE name = 'Phione' UNION ALL
SELECT id_pokemon, 100,100,100,100,100,100 FROM pokemons WHERE name = 'Manaphy' UNION ALL
SELECT id_pokemon, 70,90,90,90,135,125 FROM pokemons WHERE name = 'Darkrai' UNION ALL
SELECT id_pokemon, 100,103,75,75,120,127 FROM pokemons WHERE name = 'Shaymin' UNION ALL
SELECT id_pokemon, 120,120,120,120,120,120 FROM pokemons WHERE name = 'Arceus' UNION ALL
SELECT id_pokemon, 100,100,100,100,100,100 FROM pokemons WHERE name = 'Victini' UNION ALL
SELECT id_pokemon, 45,45,55,55,45,63 FROM pokemons WHERE name = 'Snivy' UNION ALL
SELECT id_pokemon, 60,60,75,75,60,83 FROM pokemons WHERE name = 'Servine' UNION ALL
SELECT id_pokemon, 75,75,95,95,75,113 FROM pokemons WHERE name = 'Serperior' UNION ALL
SELECT id_pokemon, 65,63,45,45,45,45 FROM pokemons WHERE name = 'Tepig' UNION ALL
SELECT id_pokemon, 90,93,55,55,70,55 FROM pokemons WHERE name = 'Pignite' UNION ALL
SELECT id_pokemon, 110,123,65,65,100,65 FROM pokemons WHERE name = 'Emboar' UNION ALL
SELECT id_pokemon, 55,55,45,45,63,45 FROM pokemons WHERE name = 'Oshawott' UNION ALL
SELECT id_pokemon, 75,75,60,60,83,60 FROM pokemons WHERE name = 'Dewott' UNION ALL
SELECT id_pokemon, 95,100,85,70,108,70 FROM pokemons WHERE name = 'Samurott' UNION ALL
SELECT id_pokemon, 45,55,39,39,35,42 FROM pokemons WHERE name = 'Patrat' UNION ALL
SELECT id_pokemon, 60,85,69,69,60,77 FROM pokemons WHERE name = 'Watchog' UNION ALL
SELECT id_pokemon, 45,60,45,45,25,55 FROM pokemons WHERE name = 'Lillipup' UNION ALL
SELECT id_pokemon, 65,80,65,65,35,60 FROM pokemons WHERE name = 'Herdier' UNION ALL
SELECT id_pokemon, 85,110,90,90,45,80 FROM pokemons WHERE name = 'Stoutland' UNION ALL
SELECT id_pokemon, 41,50,37,37,50,66 FROM pokemons WHERE name = 'Purrloin' UNION ALL
SELECT id_pokemon, 64,88,50,50,88,106 FROM pokemons WHERE name = 'Liepard' UNION ALL
SELECT id_pokemon, 50,53,48,48,53,64 FROM pokemons WHERE name = 'Pansage' UNION ALL
SELECT id_pokemon, 75,98,63,63,98,101 FROM pokemons WHERE name = 'Simisage' UNION ALL
SELECT id_pokemon, 50,53,48,48,53,64 FROM pokemons WHERE name = 'Pansear' UNION ALL
SELECT id_pokemon, 75,98,63,63,98,101 FROM pokemons WHERE name = 'Simisear' UNION ALL
SELECT id_pokemon, 50,53,48,48,53,64 FROM pokemons WHERE name = 'Panpour' UNION ALL
SELECT id_pokemon, 75,98,63,63,98,101 FROM pokemons WHERE name = 'Simipour' UNION ALL
SELECT id_pokemon, 76,25,45,55,67,24 FROM pokemons WHERE name = 'Munna' UNION ALL
SELECT id_pokemon, 116,55,85,95,107,29 FROM pokemons WHERE name = 'Musharna' UNION ALL
SELECT id_pokemon, 50,55,50,30,36,43 FROM pokemons WHERE name = 'Pidove' UNION ALL
SELECT id_pokemon, 62,77,62,42,50,65 FROM pokemons WHERE name = 'Tranquill' UNION ALL
SELECT id_pokemon, 80,115,80,55,65,93 FROM pokemons WHERE name = 'Unfezant' UNION ALL
SELECT id_pokemon, 45,60,32,32,50,76 FROM pokemons WHERE name = 'Blitzle' UNION ALL
SELECT id_pokemon, 75,100,63,63,80,116 FROM pokemons WHERE name = 'Zebstrika' UNION ALL
SELECT id_pokemon, 55,75,85,25,25,15 FROM pokemons WHERE name = 'Roggenrola' UNION ALL
SELECT id_pokemon, 70,105,105,40,50,20 FROM pokemons WHERE name = 'Boldore' UNION ALL
SELECT id_pokemon, 85,135,130,80,60,25 FROM pokemons WHERE name = 'Gigalith' UNION ALL
SELECT id_pokemon, 65,45,43,43,55,72 FROM pokemons WHERE name = 'Woobat' UNION ALL
SELECT id_pokemon, 67,57,55,55,77,114 FROM pokemons WHERE name = 'Swoobat' UNION ALL
SELECT id_pokemon, 60,85,40,45,30,68 FROM pokemons WHERE name = 'Drilbur' UNION ALL
SELECT id_pokemon, 110,135,60,65,50,88 FROM pokemons WHERE name = 'Excadrill' UNION ALL
SELECT id_pokemon, 103,60,126,126,80,50 FROM pokemons WHERE name = 'Audino' UNION ALL
SELECT id_pokemon, 75,80,55,35,25,35 FROM pokemons WHERE name = 'Timburr' UNION ALL
SELECT id_pokemon, 85,105,85,50,40,40 FROM pokemons WHERE name = 'Gurdurr' UNION ALL
SELECT id_pokemon, 105,140,95,65,55,45 FROM pokemons WHERE name = 'Conkeldurr' UNION ALL
SELECT id_pokemon, 50,50,40,40,50,64 FROM pokemons WHERE name = 'Tympole' UNION ALL
SELECT id_pokemon, 75,65,55,55,65,69 FROM pokemons WHERE name = 'Palpitoad' UNION ALL
SELECT id_pokemon, 105,95,75,75,85,74 FROM pokemons WHERE name = 'Seismitoad' UNION ALL
SELECT id_pokemon, 120,100,85,85,30,45 FROM pokemons WHERE name = 'Throh' UNION ALL
SELECT id_pokemon, 75,125,75,75,30,85 FROM pokemons WHERE name = 'Sawk' UNION ALL
SELECT id_pokemon, 45,53,70,60,40,42 FROM pokemons WHERE name = 'Sewaddle' UNION ALL
SELECT id_pokemon, 55,63,90,80,50,42 FROM pokemons WHERE name = 'Swadloon' UNION ALL
SELECT id_pokemon, 75,103,80,80,70,92 FROM pokemons WHERE name = 'Leavanny' UNION ALL
SELECT id_pokemon, 30,45,59,39,30,57 FROM pokemons WHERE name = 'Venipede' UNION ALL
SELECT id_pokemon, 40,55,99,79,40,47 FROM pokemons WHERE name = 'Whirlipede' UNION ALL
SELECT id_pokemon, 60,100,89,69,55,112 FROM pokemons WHERE name = 'Scolipede' UNION ALL
SELECT id_pokemon, 40,27,60,50,37,66 FROM pokemons WHERE name = 'Cottonee' UNION ALL
SELECT id_pokemon, 60,67,85,75,77,116 FROM pokemons WHERE name = 'Whimsicott' UNION ALL
SELECT id_pokemon, 45,35,50,50,70,30 FROM pokemons WHERE name = 'Petilil' UNION ALL
SELECT id_pokemon, 70,60,75,75,110,90 FROM pokemons WHERE name = 'Lilligant' UNION ALL
SELECT id_pokemon, 70,92,65,55,80,98 FROM pokemons WHERE name = 'Basculin' UNION ALL
SELECT id_pokemon, 50,72,35,35,35,65 FROM pokemons WHERE name = 'Sandile' UNION ALL
SELECT id_pokemon, 60,82,45,45,45,74 FROM pokemons WHERE name = 'Krokorok' UNION ALL
SELECT id_pokemon, 95,117,80,70,65,92 FROM pokemons WHERE name = 'Krookodile' UNION ALL
SELECT id_pokemon, 70,90,45,45,15,50 FROM pokemons WHERE name = 'Darumaka' UNION ALL
SELECT id_pokemon, 105,30,105,105,140,55 FROM pokemons WHERE name = 'Darmanitan' UNION ALL
SELECT id_pokemon, 75,86,67,67,106,60 FROM pokemons WHERE name = 'Maractus' UNION ALL
SELECT id_pokemon, 50,65,85,35,35,55 FROM pokemons WHERE name = 'Dwebble' UNION ALL
SELECT id_pokemon, 70,105,125,75,65,45 FROM pokemons WHERE name = 'Crustle' UNION ALL
SELECT id_pokemon, 50,75,70,70,35,48 FROM pokemons WHERE name = 'Scraggy' UNION ALL
SELECT id_pokemon, 65,90,115,115,45,58 FROM pokemons WHERE name = 'Scrafty' UNION ALL
SELECT id_pokemon, 72,58,80,80,103,97 FROM pokemons WHERE name = 'Sigilyph' UNION ALL
SELECT id_pokemon, 38,30,85,65,55,30 FROM pokemons WHERE name = 'Yamask' UNION ALL
SELECT id_pokemon, 58,50,145,105,95,30 FROM pokemons WHERE name = 'Cofagrigus' UNION ALL
SELECT id_pokemon, 54,78,103,45,53,22 FROM pokemons WHERE name = 'Tirtouga' UNION ALL
SELECT id_pokemon, 74,108,133,65,83,32 FROM pokemons WHERE name = 'Carracosta' UNION ALL
SELECT id_pokemon, 55,112,45,45,74,70 FROM pokemons WHERE name = 'Archen' UNION ALL
SELECT id_pokemon, 75,140,65,65,112,110 FROM pokemons WHERE name = 'Archeops' UNION ALL
SELECT id_pokemon, 50,50,62,62,40,65 FROM pokemons WHERE name = 'Trubbish' UNION ALL
SELECT id_pokemon, 80,95,82,82,60,75 FROM pokemons WHERE name = 'Garbodor' UNION ALL
SELECT id_pokemon, 40,65,40,40,80,65 FROM pokemons WHERE name = 'Zorua' UNION ALL
SELECT id_pokemon, 60,105,60,60,120,105 FROM pokemons WHERE name = 'Zoroark' UNION ALL
SELECT id_pokemon, 55,50,40,40,40,75 FROM pokemons WHERE name = 'Minccino' UNION ALL
SELECT id_pokemon, 75,95,60,60,65,115 FROM pokemons WHERE name = 'Cinccino' UNION ALL
SELECT id_pokemon, 45,30,50,65,55,45 FROM pokemons WHERE name = 'Gothita' UNION ALL
SELECT id_pokemon, 60,45,70,85,75,55 FROM pokemons WHERE name = 'Gothorita' UNION ALL
SELECT id_pokemon, 70,55,95,110,95,65 FROM pokemons WHERE name = 'Gothitelle' UNION ALL
SELECT id_pokemon, 45,30,40,50,105,20 FROM pokemons WHERE name = 'Solosis' UNION ALL
SELECT id_pokemon, 65,40,50,60,125,30 FROM pokemons WHERE name = 'Duosion' UNION ALL
SELECT id_pokemon, 110,65,75,85,125,30 FROM pokemons WHERE name = 'Reuniclus' UNION ALL
SELECT id_pokemon, 62,44,50,50,44,55 FROM pokemons WHERE name = 'Ducklett' UNION ALL
SELECT id_pokemon, 75,87,63,63,87,98 FROM pokemons WHERE name = 'Swanna' UNION ALL
SELECT id_pokemon, 36,50,50,60,65,44 FROM pokemons WHERE name = 'Vanillite' UNION ALL
SELECT id_pokemon, 51,65,65,75,80,59 FROM pokemons WHERE name = 'Vanillish' UNION ALL
SELECT id_pokemon, 71,95,85,95,110,79 FROM pokemons WHERE name = 'Vanilluxe' UNION ALL
SELECT id_pokemon, 60,60,50,50,40,75 FROM pokemons WHERE name = 'Deerling' UNION ALL
SELECT id_pokemon, 80,100,70,70,60,95 FROM pokemons WHERE name = 'Sawsbuck' UNION ALL
SELECT id_pokemon, 55,75,60,60,75,103 FROM pokemons WHERE name = 'Emolga' UNION ALL
SELECT id_pokemon, 50,75,45,45,40,60 FROM pokemons WHERE name = 'Karrablast' UNION ALL
SELECT id_pokemon, 70,135,105,105,60,20 FROM pokemons WHERE name = 'Escavalier' UNION ALL
SELECT id_pokemon, 69,55,45,55,55,15 FROM pokemons WHERE name = 'Foongus' UNION ALL
SELECT id_pokemon, 114,85,70,80,85,30 FROM pokemons WHERE name = 'Amoonguss' UNION ALL
SELECT id_pokemon, 55,40,50,85,65,40 FROM pokemons WHERE name = 'Frillish' UNION ALL
SELECT id_pokemon, 100,60,70,105,85,60 FROM pokemons WHERE name = 'Jellicent' UNION ALL
SELECT id_pokemon, 165,75,80,45,40,65 FROM pokemons WHERE name = 'Alomomola' UNION ALL
SELECT id_pokemon, 50,47,50,50,57,65 FROM pokemons WHERE name = 'Joltik' UNION ALL
SELECT id_pokemon, 70,77,60,60,97,108 FROM pokemons WHERE name = 'Galvantula' UNION ALL
SELECT id_pokemon, 44,50,91,86,24,10 FROM pokemons WHERE name = 'Ferroseed' UNION ALL
SELECT id_pokemon, 74,94,131,116,54,20 FROM pokemons WHERE name = 'Ferrothorn' UNION ALL
SELECT id_pokemon, 40,55,70,60,45,30 FROM pokemons WHERE name = 'Klink' UNION ALL
SELECT id_pokemon, 60,80,95,85,70,50 FROM pokemons WHERE name = 'Klang' UNION ALL
SELECT id_pokemon, 60,100,115,85,70,90 FROM pokemons WHERE name = 'Klinklang' UNION ALL
SELECT id_pokemon, 35,55,40,40,45,60 FROM pokemons WHERE name = 'Tynamo' UNION ALL
SELECT id_pokemon, 65,85,70,70,75,40 FROM pokemons WHERE name = 'Eelektrik' UNION ALL
SELECT id_pokemon, 85,115,80,80,105,50 FROM pokemons WHERE name = 'Eelektross' UNION ALL
SELECT id_pokemon, 55,55,55,55,85,30 FROM pokemons WHERE name = 'Elgyem' UNION ALL
SELECT id_pokemon, 75,75,75,95,125,40 FROM pokemons WHERE name = 'Beheeyem' UNION ALL
SELECT id_pokemon, 50,30,55,55,65,20 FROM pokemons WHERE name = 'Litwick' UNION ALL
SELECT id_pokemon, 60,40,60,60,95,55 FROM pokemons WHERE name = 'Lampent' UNION ALL
SELECT id_pokemon, 60,55,90,90,145,80 FROM pokemons WHERE name = 'Chandelure' UNION ALL
SELECT id_pokemon, 46,87,60,40,30,57 FROM pokemons WHERE name = 'Axew' UNION ALL
SELECT id_pokemon, 66,117,70,50,40,67 FROM pokemons WHERE name = 'Fraxure' UNION ALL
SELECT id_pokemon, 76,147,90,70,60,97 FROM pokemons WHERE name = 'Haxorus' UNION ALL
SELECT id_pokemon, 55,70,40,40,60,40 FROM pokemons WHERE name = 'Cubchoo' UNION ALL
SELECT id_pokemon, 95,130,80,80,70,50 FROM pokemons WHERE name = 'Beartic' UNION ALL
SELECT id_pokemon, 80,50,50,135,95,105 FROM pokemons WHERE name = 'Cryogonal' UNION ALL
SELECT id_pokemon, 50,40,85,65,40,25 FROM pokemons WHERE name = 'Shelmet' UNION ALL
SELECT id_pokemon, 80,70,40,60,100,145 FROM pokemons WHERE name = 'Accelgor' UNION ALL
SELECT id_pokemon, 109,66,84,99,81,32 FROM pokemons WHERE name = 'Stunfisk' UNION ALL
SELECT id_pokemon, 45,85,50,50,55,65 FROM pokemons WHERE name = 'Mienfoo' UNION ALL
SELECT id_pokemon, 65,125,60,60,95,105 FROM pokemons WHERE name = 'Mienshao' UNION ALL
SELECT id_pokemon, 77,120,90,90,60,48 FROM pokemons WHERE name = 'Druddigon' UNION ALL
SELECT id_pokemon, 59,74,50,50,35,35 FROM pokemons WHERE name = 'Golett' UNION ALL
SELECT id_pokemon, 89,124,80,80,55,55 FROM pokemons WHERE name = 'Golurk' UNION ALL
SELECT id_pokemon, 45,85,70,40,40,60 FROM pokemons WHERE name = 'Pawniard' UNION ALL
SELECT id_pokemon, 65,125,100,70,60,70 FROM pokemons WHERE name = 'Bisharp' UNION ALL
SELECT id_pokemon, 95,110,95,95,40,55 FROM pokemons WHERE name = 'Bouffalant' UNION ALL
SELECT id_pokemon, 70,83,50,50,37,60 FROM pokemons WHERE name = 'Rufflet' UNION ALL
SELECT id_pokemon, 100,123,75,75,57,80 FROM pokemons WHERE name = 'Braviary' UNION ALL
SELECT id_pokemon, 70,55,75,65,45,60 FROM pokemons WHERE name = 'Vullaby' UNION ALL
SELECT id_pokemon, 110,65,105,95,55,80 FROM pokemons WHERE name = 'Mandibuzz' UNION ALL
SELECT id_pokemon, 85,97,66,66,105,65 FROM pokemons WHERE name = 'Heatmor' UNION ALL
SELECT id_pokemon, 58,109,112,48,48,109 FROM pokemons WHERE name = 'Durant' UNION ALL
SELECT id_pokemon, 52,65,50,50,45,38 FROM pokemons WHERE name = 'Deino' UNION ALL
SELECT id_pokemon, 72,85,70,70,65,58 FROM pokemons WHERE name = 'Zweilous' UNION ALL
SELECT id_pokemon, 92,105,90,90,125,98 FROM pokemons WHERE name = 'Hydreigon' UNION ALL
SELECT id_pokemon, 55,85,55,55,50,60 FROM pokemons WHERE name = 'Larvesta' UNION ALL
SELECT id_pokemon, 85,60,65,105,135,100 FROM pokemons WHERE name = 'Volcarona' UNION ALL
SELECT id_pokemon, 91,90,129,72,90,108 FROM pokemons WHERE name = 'Cobalion' UNION ALL
SELECT id_pokemon, 91,129,90,90,72,108 FROM pokemons WHERE name = 'Terrakion' UNION ALL
SELECT id_pokemon, 91,90,72,129,90,108 FROM pokemons WHERE name = 'Virizion' UNION ALL
SELECT id_pokemon, 79,100,80,90,110,121 FROM pokemons WHERE name = 'Tornadus' UNION ALL
SELECT id_pokemon, 79,105,70,80,145,101 FROM pokemons WHERE name = 'Thundurus' UNION ALL
SELECT id_pokemon, 100,120,100,120,150,90 FROM pokemons WHERE name = 'Reshiram' UNION ALL
SELECT id_pokemon, 100,150,120,100,120,90 FROM pokemons WHERE name = 'Zekrom' UNION ALL
SELECT id_pokemon, 89,145,90,80,105,91 FROM pokemons WHERE name = 'Landorus' UNION ALL
SELECT id_pokemon, 125,120,90,100,170,95 FROM pokemons WHERE name = 'Kyurem' UNION ALL
SELECT id_pokemon, 91,72,90,90,129,108 FROM pokemons WHERE name = 'Keldeo' UNION ALL
SELECT id_pokemon, 100,128,90,77,77,128 FROM pokemons WHERE name = 'Meloetta' UNION ALL
SELECT id_pokemon, 71,120,95,95,120,99 FROM pokemons WHERE name = 'Genesect' UNION ALL
SELECT id_pokemon, 56,61,65,45,48,38 FROM pokemons WHERE name = 'Chespin' UNION ALL
SELECT id_pokemon, 61,78,95,58,56,57 FROM pokemons WHERE name = 'Quilladin' UNION ALL
SELECT id_pokemon, 88,107,122,75,74,64 FROM pokemons WHERE name = 'Chesnaught' UNION ALL
SELECT id_pokemon, 40,45,40,60,62,60 FROM pokemons WHERE name = 'Fennekin' UNION ALL
SELECT id_pokemon, 59,59,58,70,90,73 FROM pokemons WHERE name = 'Braixen' UNION ALL
SELECT id_pokemon, 75,69,72,100,114,104 FROM pokemons WHERE name = 'Delphox' UNION ALL
SELECT id_pokemon, 41,56,40,44,62,71 FROM pokemons WHERE name = 'Froakie' UNION ALL
SELECT id_pokemon, 54,63,52,56,83,97 FROM pokemons WHERE name = 'Frogadier' UNION ALL
SELECT id_pokemon, 72,145,67,71,153,132 FROM pokemons WHERE name = 'Greninja' UNION ALL
SELECT id_pokemon, 38,36,38,36,32,57 FROM pokemons WHERE name = 'Bunnelby' UNION ALL
SELECT id_pokemon, 85,56,77,77,50,78 FROM pokemons WHERE name = 'Diggersby' UNION ALL
SELECT id_pokemon, 45,50,43,38,40,62 FROM pokemons WHERE name = 'Fletchling' UNION ALL
SELECT id_pokemon, 62,73,55,52,56,84 FROM pokemons WHERE name = 'Fletchinder' UNION ALL
SELECT id_pokemon, 78,81,71,69,74,126 FROM pokemons WHERE name = 'Talonflame' UNION ALL
SELECT id_pokemon, 38,35,40,25,27,35 FROM pokemons WHERE name = 'Scatterbug' UNION ALL
SELECT id_pokemon, 45,22,60,30,27,29 FROM pokemons WHERE name = 'Spewpa' UNION ALL
SELECT id_pokemon, 80,52,50,50,90,89 FROM pokemons WHERE name = 'Vivillon' UNION ALL
SELECT id_pokemon, 62,50,58,54,73,72 FROM pokemons WHERE name = 'Litleo' UNION ALL
SELECT id_pokemon, 86,68,72,66,109,106 FROM pokemons WHERE name = 'Pyroar' UNION ALL
SELECT id_pokemon, 44,38,39,79,61,42 FROM pokemons WHERE name = 'FlabÃ©bÃ©' UNION ALL
SELECT id_pokemon, 74,65,67,128,125,92 FROM pokemons WHERE name = 'Floette' UNION ALL
SELECT id_pokemon, 78,65,68,154,112,75 FROM pokemons WHERE name = 'Florges' UNION ALL
SELECT id_pokemon, 66,65,48,57,62,52 FROM pokemons WHERE name = 'Skiddo' UNION ALL
SELECT id_pokemon, 123,100,62,81,97,68 FROM pokemons WHERE name = 'Gogoat' UNION ALL
SELECT id_pokemon, 67,82,62,48,46,43 FROM pokemons WHERE name = 'Pancham' UNION ALL
SELECT id_pokemon, 95,124,78,71,69,58 FROM pokemons WHERE name = 'Pangoro' UNION ALL
SELECT id_pokemon, 75,80,60,90,65,102 FROM pokemons WHERE name = 'Furfrou' UNION ALL
SELECT id_pokemon, 62,48,54,60,63,68 FROM pokemons WHERE name = 'Espurr' UNION ALL
SELECT id_pokemon, 74,48,76,81,83,104 FROM pokemons WHERE name = 'Meowstic' UNION ALL
SELECT id_pokemon, 45,80,100,37,35,28 FROM pokemons WHERE name = 'Honedge' UNION ALL
SELECT id_pokemon, 59,110,150,49,45,35 FROM pokemons WHERE name = 'Doublade' UNION ALL
SELECT id_pokemon, 60,150,50,50,150,60 FROM pokemons WHERE name = 'Aegislash' UNION ALL
SELECT id_pokemon, 78,52,60,65,63,23 FROM pokemons WHERE name = 'Spritzee' UNION ALL
SELECT id_pokemon, 101,72,72,89,99,29 FROM pokemons WHERE name = 'Aromatisse' UNION ALL
SELECT id_pokemon, 62,48,66,57,59,49 FROM pokemons WHERE name = 'Swirlix' UNION ALL
SELECT id_pokemon, 82,80,86,75,85,72 FROM pokemons WHERE name = 'Slurpuff' UNION ALL
SELECT id_pokemon, 53,54,53,46,37,45 FROM pokemons WHERE name = 'Inkay' UNION ALL
SELECT id_pokemon, 86,92,88,75,68,73 FROM pokemons WHERE name = 'Malamar' UNION ALL
SELECT id_pokemon, 42,52,67,56,39,50 FROM pokemons WHERE name = 'Binacle' UNION ALL
SELECT id_pokemon, 72,105,115,86,54,68 FROM pokemons WHERE name = 'Barbaracle' UNION ALL
SELECT id_pokemon, 50,60,60,60,60,30 FROM pokemons WHERE name = 'Skrelp' UNION ALL
SELECT id_pokemon, 65,75,90,123,97,44 FROM pokemons WHERE name = 'Dragalge' UNION ALL
SELECT id_pokemon, 50,53,62,63,58,44 FROM pokemons WHERE name = 'Clauncher' UNION ALL
SELECT id_pokemon, 71,73,88,89,120,59 FROM pokemons WHERE name = 'Clawitzer' UNION ALL
SELECT id_pokemon, 44,38,33,43,61,70 FROM pokemons WHERE name = 'Helioptile' UNION ALL
SELECT id_pokemon, 62,55,52,94,109,109 FROM pokemons WHERE name = 'Heliolisk' UNION ALL
SELECT id_pokemon, 58,89,77,45,45,48 FROM pokemons WHERE name = 'Tyrunt' UNION ALL
SELECT id_pokemon, 82,121,119,59,69,71 FROM pokemons WHERE name = 'Tyrantrum' UNION ALL
SELECT id_pokemon, 77,59,50,63,67,46 FROM pokemons WHERE name = 'Amaura' UNION ALL
SELECT id_pokemon, 123,77,72,92,99,58 FROM pokemons WHERE name = 'Aurorus' UNION ALL
SELECT id_pokemon, 95,65,65,130,110,60 FROM pokemons WHERE name = 'Sylveon' UNION ALL
SELECT id_pokemon, 78,92,75,63,74,118 FROM pokemons WHERE name = 'Hawlucha' UNION ALL
SELECT id_pokemon, 67,58,57,67,81,101 FROM pokemons WHERE name = 'Dedenne' UNION ALL
SELECT id_pokemon, 50,50,150,150,50,50 FROM pokemons WHERE name = 'Carbink' UNION ALL
SELECT id_pokemon, 45,50,35,75,55,40 FROM pokemons WHERE name = 'Goomy' UNION ALL
SELECT id_pokemon, 68,75,53,113,83,60 FROM pokemons WHERE name = 'Sliggoo' UNION ALL
SELECT id_pokemon, 90,100,70,150,110,80 FROM pokemons WHERE name = 'Goodra' UNION ALL
SELECT id_pokemon, 57,80,91,87,80,75 FROM pokemons WHERE name = 'Klefki' UNION ALL
SELECT id_pokemon, 43,70,48,60,50,38 FROM pokemons WHERE name = 'Phantump' UNION ALL
SELECT id_pokemon, 85,110,76,82,65,56 FROM pokemons WHERE name = 'Trevenant' UNION ALL
SELECT id_pokemon, 59,66,70,55,44,41 FROM pokemons WHERE name = 'Pumpkaboo' UNION ALL
SELECT id_pokemon, 85,100,122,75,58,54 FROM pokemons WHERE name = 'Gourgeist' UNION ALL
SELECT id_pokemon, 55,69,85,35,32,28 FROM pokemons WHERE name = 'Bergmite' UNION ALL
SELECT id_pokemon, 95,117,184,46,44,28 FROM pokemons WHERE name = 'Avalugg' UNION ALL
SELECT id_pokemon, 40,30,35,40,45,55 FROM pokemons WHERE name = 'Noibat' UNION ALL
SELECT id_pokemon, 85,70,80,80,97,123 FROM pokemons WHERE name = 'Noivern' UNION ALL
SELECT id_pokemon, 126,131,95,98,131,99 FROM pokemons WHERE name = 'Xerneas' UNION ALL
SELECT id_pokemon, 126,131,95,98,131,99 FROM pokemons WHERE name = 'Yveltal' UNION ALL
SELECT id_pokemon, 216,100,121,95,91,85 FROM pokemons WHERE name = 'Zygarde' UNION ALL
SELECT id_pokemon, 50,160,110,110,160,110 FROM pokemons WHERE name = 'Diancie' UNION ALL
SELECT id_pokemon, 80,160,60,130,170,80 FROM pokemons WHERE name = 'Hoopa' UNION ALL
SELECT id_pokemon, 80,110,120,90,130,70 FROM pokemons WHERE name = 'Volcanion' UNION ALL
SELECT id_pokemon, 68,55,55,50,50,42 FROM pokemons WHERE name = 'Rowlet' UNION ALL
SELECT id_pokemon, 78,75,75,70,70,52 FROM pokemons WHERE name = 'Dartrix' UNION ALL
SELECT id_pokemon, 78,107,75,100,100,70 FROM pokemons WHERE name = 'Decidueye' UNION ALL
SELECT id_pokemon, 45,65,40,40,60,70 FROM pokemons WHERE name = 'Litten' UNION ALL
SELECT id_pokemon, 65,85,50,50,80,90 FROM pokemons WHERE name = 'Torracat' UNION ALL
SELECT id_pokemon, 95,115,90,90,80,60 FROM pokemons WHERE name = 'Incineroar' UNION ALL
SELECT id_pokemon, 50,54,54,56,66,40 FROM pokemons WHERE name = 'Popplio' UNION ALL
SELECT id_pokemon, 60,69,69,81,91,50 FROM pokemons WHERE name = 'Brionne' UNION ALL
SELECT id_pokemon, 80,74,74,116,126,60 FROM pokemons WHERE name = 'Primarina' UNION ALL
SELECT id_pokemon, 35,75,30,30,30,65 FROM pokemons WHERE name = 'Pikipek' UNION ALL
SELECT id_pokemon, 55,85,50,50,40,75 FROM pokemons WHERE name = 'Trumbeak' UNION ALL
SELECT id_pokemon, 80,120,75,75,75,60 FROM pokemons WHERE name = 'Toucannon' UNION ALL
SELECT id_pokemon, 48,70,30,30,30,45 FROM pokemons WHERE name = 'Yungoos' UNION ALL
SELECT id_pokemon, 88,110,60,60,55,45 FROM pokemons WHERE name = 'Gumshoos' UNION ALL
SELECT id_pokemon, 47,62,45,45,55,46 FROM pokemons WHERE name = 'Grubbin' UNION ALL
SELECT id_pokemon, 57,82,95,75,55,36 FROM pokemons WHERE name = 'Charjabug' UNION ALL
SELECT id_pokemon, 77,70,90,75,145,43 FROM pokemons WHERE name = 'Vikavolt' UNION ALL
SELECT id_pokemon, 47,82,57,47,42,63 FROM pokemons WHERE name = 'Crabrawler' UNION ALL
SELECT id_pokemon, 97,132,77,67,62,43 FROM pokemons WHERE name = 'Crabominable' UNION ALL
SELECT id_pokemon, 75,70,70,70,98,93 FROM pokemons WHERE name = 'Oricorio' UNION ALL
SELECT id_pokemon, 40,45,40,40,55,84 FROM pokemons WHERE name = 'Cutiefly' UNION ALL
SELECT id_pokemon, 60,55,60,70,95,124 FROM pokemons WHERE name = 'Ribombee' UNION ALL
SELECT id_pokemon, 45,65,40,40,30,60 FROM pokemons WHERE name = 'Rockruff' UNION ALL
SELECT id_pokemon, 85,115,75,75,55,82 FROM pokemons WHERE name = 'Lycanroc' UNION ALL
SELECT id_pokemon, 45,140,130,135,140,30 FROM pokemons WHERE name = 'Wishiwashi' UNION ALL
SELECT id_pokemon, 50,53,62,52,43,45 FROM pokemons WHERE name = 'Mareanie' UNION ALL
SELECT id_pokemon, 50,63,152,142,53,35 FROM pokemons WHERE name = 'Toxapex' UNION ALL
SELECT id_pokemon, 70,100,70,55,45,45 FROM pokemons WHERE name = 'Mudbray' UNION ALL
SELECT id_pokemon, 100,125,100,85,55,35 FROM pokemons WHERE name = 'Mudsdale' UNION ALL
SELECT id_pokemon, 38,40,52,72,40,27 FROM pokemons WHERE name = 'Dewpider' UNION ALL
SELECT id_pokemon, 68,70,92,132,50,42 FROM pokemons WHERE name = 'Araquanid' UNION ALL
SELECT id_pokemon, 40,55,35,35,50,35 FROM pokemons WHERE name = 'Fomantis' UNION ALL
SELECT id_pokemon, 70,105,90,90,80,45 FROM pokemons WHERE name = 'Lurantis' UNION ALL
SELECT id_pokemon, 40,35,55,75,65,15 FROM pokemons WHERE name = 'Morelull' UNION ALL
SELECT id_pokemon, 60,45,80,100,90,30 FROM pokemons WHERE name = 'Shiinotic' UNION ALL
SELECT id_pokemon, 48,44,40,40,71,77 FROM pokemons WHERE name = 'Salandit' UNION ALL
SELECT id_pokemon, 68,64,60,60,111,117 FROM pokemons WHERE name = 'Salazzle' UNION ALL
SELECT id_pokemon, 70,75,50,50,45,50 FROM pokemons WHERE name = 'Stufful' UNION ALL
SELECT id_pokemon, 120,125,80,60,55,60 FROM pokemons WHERE name = 'Bewear' UNION ALL
SELECT id_pokemon, 42,30,38,38,30,32 FROM pokemons WHERE name = 'Bounsweet' UNION ALL
SELECT id_pokemon, 52,40,48,48,40,62 FROM pokemons WHERE name = 'Steenee' UNION ALL
SELECT id_pokemon, 72,120,98,98,50,72 FROM pokemons WHERE name = 'Tsareena' UNION ALL
SELECT id_pokemon, 51,52,90,110,82,100 FROM pokemons WHERE name = 'Comfey' UNION ALL
SELECT id_pokemon, 90,60,80,110,90,60 FROM pokemons WHERE name = 'Oranguru' UNION ALL
SELECT id_pokemon, 100,120,90,60,40,80 FROM pokemons WHERE name = 'Passimian' UNION ALL
SELECT id_pokemon, 25,35,40,30,20,80 FROM pokemons WHERE name = 'Wimpod' UNION ALL
SELECT id_pokemon, 75,125,140,90,60,40 FROM pokemons WHERE name = 'Golisopod' UNION ALL
SELECT id_pokemon, 55,55,80,45,70,15 FROM pokemons WHERE name = 'Sandygast' UNION ALL
SELECT id_pokemon, 85,75,110,75,100,35 FROM pokemons WHERE name = 'Palossand' UNION ALL
SELECT id_pokemon, 55,60,130,130,30,5 FROM pokemons WHERE name = 'Pyukumuku' UNION ALL
SELECT id_pokemon, 95,95,95,95,95,59 FROM pokemons WHERE name = 'Type: Null' UNION ALL
SELECT id_pokemon, 95,95,95,95,95,95 FROM pokemons WHERE name = 'Silvally' UNION ALL
SELECT id_pokemon, 60,100,60,60,100,120 FROM pokemons WHERE name = 'Minior' UNION ALL
SELECT id_pokemon, 65,115,65,95,75,65 FROM pokemons WHERE name = 'Komala' UNION ALL
SELECT id_pokemon, 60,78,135,85,91,36 FROM pokemons WHERE name = 'Turtonator' UNION ALL
SELECT id_pokemon, 65,98,63,73,40,96 FROM pokemons WHERE name = 'Togedemaru' UNION ALL
SELECT id_pokemon, 55,90,80,105,50,96 FROM pokemons WHERE name = 'Mimikyu' UNION ALL
SELECT id_pokemon, 68,105,70,70,70,92 FROM pokemons WHERE name = 'Bruxish' UNION ALL
SELECT id_pokemon, 78,60,85,91,135,36 FROM pokemons WHERE name = 'Drampa' UNION ALL
SELECT id_pokemon, 70,131,100,90,86,40 FROM pokemons WHERE name = 'Dhelmise' UNION ALL
SELECT id_pokemon, 45,55,65,45,45,45 FROM pokemons WHERE name = 'Jangmo-o' UNION ALL
SELECT id_pokemon, 55,75,90,70,65,65 FROM pokemons WHERE name = 'Hakamo-o' UNION ALL
SELECT id_pokemon, 75,110,125,105,100,85 FROM pokemons WHERE name = 'Kommo-o' UNION ALL
SELECT id_pokemon, 70,115,85,75,95,130 FROM pokemons WHERE name = 'Tapu Koko' UNION ALL
SELECT id_pokemon, 70,85,75,115,130,95 FROM pokemons WHERE name = 'Tapu Lele' UNION ALL
SELECT id_pokemon, 70,130,115,95,85,75 FROM pokemons WHERE name = 'Tapu Bulu' UNION ALL
SELECT id_pokemon, 70,75,115,130,95,85 FROM pokemons WHERE name = 'Tapu Fini' UNION ALL
SELECT id_pokemon, 43,29,31,31,29,37 FROM pokemons WHERE name = 'Cosmog' UNION ALL
SELECT id_pokemon, 43,29,131,131,29,37 FROM pokemons WHERE name = 'Cosmoem' UNION ALL
SELECT id_pokemon, 137,137,107,89,113,97 FROM pokemons WHERE name = 'Solgaleo' UNION ALL
SELECT id_pokemon, 137,113,89,107,137,97 FROM pokemons WHERE name = 'Lunala' UNION ALL
SELECT id_pokemon, 109,53,47,131,127,103 FROM pokemons WHERE name = 'Nihilego' UNION ALL
SELECT id_pokemon, 107,139,139,53,53,79 FROM pokemons WHERE name = 'Buzzwole' UNION ALL
SELECT id_pokemon, 71,137,37,37,137,151 FROM pokemons WHERE name = 'Pheromosa' UNION ALL
SELECT id_pokemon, 83,89,71,71,173,83 FROM pokemons WHERE name = 'Xurkitree' UNION ALL
SELECT id_pokemon, 97,101,103,101,107,61 FROM pokemons WHERE name = 'Celesteela' UNION ALL
SELECT id_pokemon, 59,181,131,31,59,109 FROM pokemons WHERE name = 'Kartana' UNION ALL
SELECT id_pokemon, 223,101,53,53,97,43 FROM pokemons WHERE name = 'Guzzlord' UNION ALL
SELECT id_pokemon, 97,107,101,89,127,79 FROM pokemons WHERE name = 'Necrozma' UNION ALL
SELECT id_pokemon, 80,95,115,115,130,65 FROM pokemons WHERE name = 'Magearna';

INSERT INTO pokemon_movements
( id_pokemon, name )
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shield Dust' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Compoundeyes' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shield Dust' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Effect Spore' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Effect Spore' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Compoundeyes' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shield Dust' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magnet Pull' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magnet Pull' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stench' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stench' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cursed Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illuminate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illuminate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Volt Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Trace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Immunity' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Volt Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Volt Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shadow Tag' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magma Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magma Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Suction Cups' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Trace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Stream' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shield Dust' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shield Dust' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Effect Spore' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Effect Spore' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Truant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Truant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Compoundeyes' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Wonder Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pure Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pure Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Plus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Minus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illuminate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Liquid Ooze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Liquid Ooze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rough Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rough Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magma Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'White Smoke' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Immunity' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Suction Cups' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Suction Cups' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Marvel Scale' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Forecast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Color Change' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shadow Tag' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Drizzle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Drought' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Air Lock' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Simple' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Simple' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anticipation' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Honey Gather' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flower Gift' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sticky Hold' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sticky Hold' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aftermath' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aftermath' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stench' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stench' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Stream' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Stream' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anticipation' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anticipation' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Warning' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Warning' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magnet Pull' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Motor Drive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Slow Start' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Bad Dreams' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Multitype' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Victory Star' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illuminate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Forewarn' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Forewarn' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unaware' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unaware' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Healer' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Wonder Skin ' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mummy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mummy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solid Rock' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solid Rock' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defeatist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defeatist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stench' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stench' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illusion' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illusion' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Effect Spore' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Effect Spore' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Healer' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Compoundeyes' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Compoundeyes' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Barbs' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Barbs' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Plus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Plus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Plus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rough Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Justified' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Justified' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Justified' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Turboblaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Teravolt' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Justified' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Download' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shield Dust' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shield Dust' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flower Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flower Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flower Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Fur Coat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'No Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'No Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stance Change' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Healer' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Healer' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sweet Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sweet Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Contrary' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Contrary' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tough Claws' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tough Claws' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mega Launcher' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mega Launcher' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dry Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dry Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Strong Jaw' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Strong Jaw' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Refrigerate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Refrigerate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cheek Pouch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Fairy Aura' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dark Aura' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aura Break' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stakeout' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stakeout' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battery' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hyper Cutter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dancer' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Honey Gather' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Honey Gather' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Schooling' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Merciless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Merciless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Bubble' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Bubble' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illuminate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illuminate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Corrosion' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Corrosion' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Fluffy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Fluffy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flower Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Receiver' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Wimp Out' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Emergency Exit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Compaction' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Compaction' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Innards Out' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'RKS System' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shields Down' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Comatose' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Barbs' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Disguise' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dazzling' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Berserk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steelworker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Bulletproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Bulletproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Bulletproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Electric Surge' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Psychic Surge' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Grassy Surge' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Misty Surge' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unaware' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Full Metal Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shadow Shield' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Beast Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Beast Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Beast Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Beast Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Beast Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Beast Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Beast Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prism Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soul-Heart' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solar Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solar Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solar Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tinted Lens' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tangled Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tangled Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tangled Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Drought' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Drought' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Competitive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Competitive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stench' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Effect Spore' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dry Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dry Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tinted Lens' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tinted Lens' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Arena Trap' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Arena Trap' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cloud Nine' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cloud Nine' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anger Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anger Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'No Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'No Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'No Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Liquid Ooze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Liquid Ooze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sticky Hold' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sticky Hold' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Skill Link' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Skill Link' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Forewarn' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Forewarn' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Harvest' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Harvest' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Filter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Forewarn' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anger Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Imposter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Quick Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Download' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Static' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Marvel Scale' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Marvel Scale' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Multiscale' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illuminate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Illuminate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Competitive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Plus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Plus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Plus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Healer' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Huge Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Huge Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solar Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solar Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Compoundeyes' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Bounce' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Super Luck' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Quick Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Quick Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Quick Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Download' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Forewarn' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Multiscale' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Quick Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Quick Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Compoundeyes' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Drizzle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Trace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Trace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Trace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Heal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Heal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Huge Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magnet Pull' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Normalize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Normalize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stall' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Volt Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tinted Lens' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sticky Hold' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sticky Hold' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Simple' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solid Rock' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Drought' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tangled Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Arena Trap' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cloud Nine' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cloud Nine' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Toxic Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anticipation' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anticipation' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Storm Drain' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Storm Drain' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Competitive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Protean' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solar Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Super Luck' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Light Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Light Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Light Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Light Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unaware' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unaware' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tinted Lens' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Storm Drain' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Storm Drain' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Klutz' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Klutz' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Super Luck' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aftermath' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aftermath' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Heatproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Heatproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Filter' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tangled Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rough Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rough Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rough Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dry Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dry Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Storm Drain' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Storm Drain' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickpocket' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solid Rock' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tinted Lens' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Download' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Justified' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magnet Pull' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cursed Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Contrary' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Contrary' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Contrary' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overgrow' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Blaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Torrent' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Super Luck' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Super Luck' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Super Luck' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Motor Drive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Motor Drive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Stream' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Klutz' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Klutz' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Touch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Zen Mode' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sticky Hold' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Competitive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Competitive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Competitive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Warning' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Motor Drive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shed Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cursed Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cursed Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anticipation' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Minus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Minus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Minus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Synchronize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Slush Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Slush Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sticky Hold' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Klutz' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Klutz' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flash Fire' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Teravolt' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Bulletproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Bulletproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Bulletproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Protean' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Protean' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Protean' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cheek Pouch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cheek Pouch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gale Wings' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gale Wings' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gale Wings' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Compoundeyes' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Friend Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Compoundeyes' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Symbiosis' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Symbiosis' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Symbiosis' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Grass Pelt' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Grass Pelt' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aroma Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aroma Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Suction Cups' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Suction Cups' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Touch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Touch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Warning' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Warning' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pixilate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Power Construct' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Long Reach' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Long Reach' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Long Reach' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Liquid Voice' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Liquid Voice' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Liquid Voice' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Skill Link' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Skill Link' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Skill Link' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Strong Jaw' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Strong Jaw' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shield Dust' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shield Dust' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stamina' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Stamina' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Contrary' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Contrary' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Effect Spore' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Effect Spore' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Klutz' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Klutz' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Queenly Majesty' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Triage' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unaware' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Strong Jaw' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Surge Surfer' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Friend Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unaware' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Cloak' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Friend Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Wonder Skin ' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Justified' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Justified' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flame Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tangled Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tangled Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Ice Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Touch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Touch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aftermath' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aftermath' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cloud Nine' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Healer' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Dry Skin' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anticipation' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tinted Lens' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tinted Lens' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sniper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Friend Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Friend Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Super Luck' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Super Luck' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Bounce' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magic Bounce' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Drizzle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Skill Link' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Early Bird' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unaware' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unaware' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Immunity' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Light Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Contrary' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickpocket' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Honey Gather' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moody' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moody' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moody' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Healer' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Quick Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Quick Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickpocket' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickpocket' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickpocket' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Quick Feet' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Wonder Skin ' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Wonder Skin ' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Heavy Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Heavy Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Heavy Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Minus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Minus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anger Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shell Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Contrary' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cursed Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cursed Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Harvest' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Justified' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moody' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moody' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Oblivious' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moody' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moody' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Guts' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Volt Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Skill Link' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flare Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Flare Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Limber' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Heavy Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Heavy Metal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Friend Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Big Pecks' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Justified' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Touch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Touch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cloud Nine' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Super Luck' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Frisk' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Heal' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Levitate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Run Away' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rivalry' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sap Sipper' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Simple' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Simple' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Klutz' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Iron Fist' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Water Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Speed Boost' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Chlorophyll' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Leaf Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anger Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anger Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anger Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Storm Drain' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tinted Lens' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aftermath' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Aftermath' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Skill Link' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Skill Link' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shadow Tag' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shadow Tag' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Shadow Tag' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hydration' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Serene Grace' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'No Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Damp' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swarm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Clear Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Analytic' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Swift Swim' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unburden' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Reckless' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'No Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'No Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pressure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Soundproof' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Defiant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Weak Armor' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'White Smoke' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Truant' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Volt Absorb' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Intimidate' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Turboblaze' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Battle Bond' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Huge Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Huge Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Friend Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Friend Guard' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Moxie' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Scrappy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Own Tempo' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Prankster' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Infiltrator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickpocket' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickpocket' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solar Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Solar Power' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Plus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gooey' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gooey' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gooey' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Harvest' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Harvest' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Insomnia' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Telepathy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sheer Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Adaptability' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anger Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Anger Point' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sweet Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sweet Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Steadfast' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Regenerator' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Inner Focus' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rain Dish' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cute Charm' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Unnerve' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sweet Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sweet Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sweet Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Natural Cure' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Symbiosis' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Wonder Skin ' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cloud Nine' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Overcoat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Slush Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Slush Rush' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Warning' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Snow Warning' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Veil' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Pickup' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Fur Coat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magnet Pull' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magnet Pull' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Magnet Pull' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Touch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Poison Touch' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Harvest' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Cursed Body' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Mold Breaker' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Competitive' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Keen Eye' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Hustle' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tangling Hair' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Tangling Hair' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Technician' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sturdy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Gluttony' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Lightningrod' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Vital Spirit' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Thick Fat' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Sand Force' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rattled' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Galvanize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Galvanize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Galvanize' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Power of Alchemy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Power of Alchemy' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'Rock Head' FROM pokemons WHERE name = 'Bulbasaur' UNION ALL 
SELECT id_pokemon, 'No Guard' FROM pokemons WHERE name = 'Bulbasaur' ;

INSERT INTO pokemon_movement_per_pokemons
( id_pokemon, against_bug, against_dark, against_dragon,	against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water)
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Bulbasaur' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Ivysaur' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Venusaur' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Charmander' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Charmeleon' UNION ALL
SELECT id_pokemon,0.25,1,1,2,0.5,0.5,0.5,1,1,0.25,0,1,1,1,1,4,0.5,2 FROM pokemons WHERE name='Charizard' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Squirtle' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Wartortle' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Blastoise' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Caterpie' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Metapod' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Butterfree' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Weedle' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Kakuna' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Beedrill' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Pidgey' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Pidgeotto' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Pidgeot' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Rattata' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Raticate' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Spearow' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Fearow' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Ekans' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Arbok' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Pikachu' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Raichu' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Sandshrew' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Sandslash' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Nidoranâ™€' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Nidorina' UNION ALL
SELECT id_pokemon,0.5,1,1,0,0.5,0.5,1,1,1,1,2,2,1,0.25,2,0.5,1,2 FROM pokemons WHERE name='Nidoqueen' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Nidoranâ™‚' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Nidorino' UNION ALL
SELECT id_pokemon,0.5,1,1,0,0.5,0.5,1,1,1,1,2,2,1,0.25,2,0.5,1,2 FROM pokemons WHERE name='Nidoking' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Clefairy' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Clefable' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Vulpix' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Ninetales' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,1,1,1,0,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Jigglypuff' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,1,1,1,0,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Wigglytuff' UNION ALL
SELECT id_pokemon,0.25,1,1,2,0.5,0.25,1,1,1,0.25,0,2,1,0.5,2,2,1,1 FROM pokemons WHERE name='Zubat' UNION ALL
SELECT id_pokemon,0.25,1,1,2,0.5,0.25,1,1,1,0.25,0,2,1,0.5,2,2,1,1 FROM pokemons WHERE name='Golbat' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Oddish' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Gloom' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Vileplume' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,0.5,4,4,1,0.25,0.25,2,1,2,1,2,1,0.5 FROM pokemons WHERE name='Paras' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,0.5,4,4,1,0.25,0.25,2,1,2,1,2,1,0.5 FROM pokemons WHERE name='Parasect' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Venonat' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Venomoth' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Diglett' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Dugtrio' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Meowth' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Persian' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Psyduck' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Golduck' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Mankey' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Primeape' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Growlithe' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Arcanine' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Poliwag' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Poliwhirl' UNION ALL
SELECT id_pokemon,0.5,0.5,1,2,2,1,0.5,2,1,2,1,0.5,1,1,2,0.5,0.5,0.5 FROM pokemons WHERE name='Poliwrath' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Abra' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Kadabra' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Alakazam' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Machop' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Machoke' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Machamp' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Bellsprout' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Weepinbell' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Victreebel' UNION ALL
SELECT id_pokemon,0.5,1,1,2,0.5,0.5,0.5,1,1,1,2,0.5,1,0.5,2,1,0.5,0.5 FROM pokemons WHERE name='Tentacool' UNION ALL
SELECT id_pokemon,0.5,1,1,2,0.5,0.5,0.5,1,1,1,2,0.5,1,0.5,2,1,0.5,0.5 FROM pokemons WHERE name='Tentacruel' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,0.5,0.5,1,4,2,2,0.5,0.25,1,0.5,2,4 FROM pokemons WHERE name='Geodude' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,0.5,0.5,1,4,2,2,0.5,0.25,1,0.5,2,4 FROM pokemons WHERE name='Graveler' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,0.5,0.5,1,4,2,2,0.5,0.25,1,0.5,2,4 FROM pokemons WHERE name='Golem' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Ponyta' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Rapidash' UNION ALL
SELECT id_pokemon,2,2,1,2,1,0.5,0.5,1,2,2,1,0.5,1,1,0.5,1,0.5,0.5 FROM pokemons WHERE name='Slowpoke' UNION ALL
SELECT id_pokemon,2,2,1,2,1,0.5,0.5,1,2,2,1,0.5,1,1,0.5,1,0.5,0.5 FROM pokemons WHERE name='Slowbro' UNION ALL
SELECT id_pokemon,0.5,1,0.5,0.5,0.5,2,2,0.25,1,0.5,4,0.5,0.5,0,0.5,0.5,0.25,1 FROM pokemons WHERE name='Magnemite' UNION ALL
SELECT id_pokemon,0.5,1,0.5,0.5,0.5,2,2,0.25,1,0.5,4,0.5,0.5,0,0.5,0.5,0.25,1 FROM pokemons WHERE name='Magneton' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Farfetchd' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Doduo' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Dodrio' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Seel' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,1,1,1,2,1,0.25,1,1,1,2,1,0.5 FROM pokemons WHERE name='Dewgong' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Grimer' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Muk' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Shellder' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,1,1,1,2,1,0.25,1,1,1,2,1,0.5 FROM pokemons WHERE name='Cloyster' UNION ALL
SELECT id_pokemon,0.25,2,1,1,0.5,0,1,1,2,0.5,2,1,0,0.25,2,1,1,1 FROM pokemons WHERE name='Gastly' UNION ALL
SELECT id_pokemon,0.25,2,1,1,0.5,0,1,1,2,0.5,2,1,0,0.25,2,1,1,1 FROM pokemons WHERE name='Haunter' UNION ALL
SELECT id_pokemon,0.25,2,1,1,0.5,0,1,1,2,0.5,2,1,0,0.25,2,1,1,1 FROM pokemons WHERE name='Gengar' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,0.5,0.5,1,4,2,2,0.5,0.25,1,0.5,2,4 FROM pokemons WHERE name='Onix' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Drowzee' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Hypno' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Krabby' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Kingler' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Voltorb' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Electrode' UNION ALL
SELECT id_pokemon,4,2,1,0.5,1,0.5,2,2,2,0.5,0.5,2,1,2,0.5,1,1,0.5 FROM pokemons WHERE name='Exeggcute' UNION ALL
SELECT id_pokemon,4,2,1,0.5,1,0.5,2,2,2,0.5,0.5,2,1,2,0.5,1,1,0.5 FROM pokemons WHERE name='Exeggutor' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Cubone' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Marowak' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Hitmonlee' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Hitmonchan' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Lickitung' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Koffing' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Weezing' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,0.5,0.5,1,4,2,2,0.5,0.25,1,0.5,2,4 FROM pokemons WHERE name='Rhyhorn' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,0.5,0.5,1,4,2,2,0.5,0.25,1,0.5,2,4 FROM pokemons WHERE name='Rhydon' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Chansey' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Tangela' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Kangaskhan' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Horsea' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Seadra' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Goldeen' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Seaking' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Staryu' UNION ALL
SELECT id_pokemon,2,2,1,2,1,0.5,0.5,1,2,2,1,0.5,1,1,0.5,1,0.5,0.5 FROM pokemons WHERE name='Starmie' UNION ALL
SELECT id_pokemon,1,1,0,1,1,0.25,1,1,2,1,1,1,1,2,0.5,1,2,1 FROM pokemons WHERE name='Mr. Mime' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Scyther' UNION ALL
SELECT id_pokemon,2,2,1,1,1,1,2,1,2,1,1,0.5,1,1,0.5,2,2,1 FROM pokemons WHERE name='Jynx' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Electabuzz' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Magmar' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Pinsir' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Tauros' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Magikarp' UNION ALL
SELECT id_pokemon,0.5,1,1,4,1,0.5,0.5,1,1,1,0,1,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Gyarados' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,1,1,1,2,1,0.25,1,1,1,2,1,0.5 FROM pokemons WHERE name='Lapras' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Ditto' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Eevee' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Vaporeon' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Jolteon' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Flareon' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Porygon' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Omanyte' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Omastar' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Kabuto' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Kabutops' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,0.5,0.5,1,1,0,2,0.5,0.5,1,2,2,2 FROM pokemons WHERE name='Aerodactyl' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Snorlax' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,2,1,1,0.5,0,1,1,1,1,4,2,1 FROM pokemons WHERE name='Articuno' UNION ALL
SELECT id_pokemon,0.5,1,1,1,1,0.5,1,0.5,1,0.5,0,2,1,1,1,2,0.5,1 FROM pokemons WHERE name='Zapdos' UNION ALL
SELECT id_pokemon,0.25,1,1,2,0.5,0.5,0.5,1,1,0.25,0,1,1,1,1,4,0.5,2 FROM pokemons WHERE name='Moltres' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Dratini' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Dragonair' UNION ALL
SELECT id_pokemon,0.5,1,2,1,2,0.5,0.5,1,1,0.25,0,4,1,1,1,2,1,0.5 FROM pokemons WHERE name='Dragonite' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Mewtwo' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Mew' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Chikorita' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Bayleef' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Meganium' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Cyndaquil' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Quilava' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Typhlosion' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Totodile' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Croconaw' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Feraligatr' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Sentret' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Furret' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Hoothoot' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Noctowl' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Ledyba' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Ledian' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Spinarak' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Ariados' UNION ALL
SELECT id_pokemon,0.25,1,1,2,0.5,0.25,1,1,1,0.25,0,2,1,0.5,2,2,1,1 FROM pokemons WHERE name='Crobat' UNION ALL
SELECT id_pokemon,1,1,1,1,1,1,0.5,0.5,1,2,2,0.5,1,1,1,1,0.25,0.5 FROM pokemons WHERE name='Chinchou' UNION ALL
SELECT id_pokemon,1,1,1,1,1,1,0.5,0.5,1,2,2,0.5,1,1,1,1,0.25,0.5 FROM pokemons WHERE name='Lanturn' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Pichu' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Cleffa' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,1,1,1,0,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Igglybuff' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Togepi' UNION ALL
SELECT id_pokemon,0.25,0.5,0,2,1,0.25,1,1,1,0.5,0,2,1,2,1,2,2,1 FROM pokemons WHERE name='Togetic' UNION ALL
SELECT id_pokemon,1,2,1,2,1,0.25,1,1,2,0.5,0,2,1,1,0.5,2,1,1 FROM pokemons WHERE name='Natu' UNION ALL
SELECT id_pokemon,1,2,1,2,1,0.25,1,1,2,0.5,0,2,1,1,0.5,2,1,1 FROM pokemons WHERE name='Xatu' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Mareep' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Flaaffy' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Ampharos' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Bellossom' UNION ALL
SELECT id_pokemon,0.5,0.5,0,2,1,0.5,0.5,1,1,2,1,0.5,1,2,1,1,1,0.5 FROM pokemons WHERE name='Marill' UNION ALL
SELECT id_pokemon,0.5,0.5,0,2,1,0.5,0.5,1,1,2,1,0.5,1,2,1,1,1,0.5 FROM pokemons WHERE name='Azumarill' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Sudowoodo' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Politoed' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.25,0,4,1,2,1,2,1,0.5 FROM pokemons WHERE name='Hoppip' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.25,0,4,1,2,1,2,1,0.5 FROM pokemons WHERE name='Skiploom' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.25,0,4,1,2,1,2,1,0.5 FROM pokemons WHERE name='Jumpluff' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Aipom' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Sunkern' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Sunflora' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Yanma' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,0.5,1,1,4,1,1,1,0.5,1,0.5,0.5,1 FROM pokemons WHERE name='Wooper' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,0.5,1,1,4,1,1,1,0.5,1,0.5,0.5,1 FROM pokemons WHERE name='Quagsire' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Espeon' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,2,1,1,0.5,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Umbreon' UNION ALL
SELECT id_pokemon,1,0.5,1,2,2,1,1,1,0.5,0.5,0,2,1,1,0,2,1,1 FROM pokemons WHERE name='Murkrow' UNION ALL
SELECT id_pokemon,2,2,1,2,1,0.5,0.5,1,2,2,1,0.5,1,1,0.5,1,0.5,0.5 FROM pokemons WHERE name='Slowking' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,1,1,2,1,1,1,0,0.5,1,1,1,1 FROM pokemons WHERE name='Misdreavus' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Unown' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Wobbuffet' UNION ALL
SELECT id_pokemon,2,2,1,1,1,1,1,1,0,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Girafarig' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Pineco' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,1,4,1,1,0.25,1,0.5,0.5,0,0.5,1,0.5,1 FROM pokemons WHERE name='Forretress' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Dunsparce' UNION ALL
SELECT id_pokemon,0.5,1,1,0,1,0.5,1,1,1,1,0,4,1,0.5,1,1,1,2 FROM pokemons WHERE name='Gligar' UNION ALL
SELECT id_pokemon,0.5,1,0.5,0,0.5,2,2,0.5,1,1,2,1,0.5,0,0.5,0.25,0.5,2 FROM pokemons WHERE name='Steelix' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Snubbull' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Granbull' UNION ALL
SELECT id_pokemon,0.5,1,1,2,0.5,0.5,0.5,1,1,1,2,0.5,1,0.5,2,1,0.5,0.5 FROM pokemons WHERE name='Qwilfish' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,1,4,1,1,0.25,1,0.5,0.5,0,0.5,1,0.5,1 FROM pokemons WHERE name='Scizor' UNION ALL
SELECT id_pokemon,1,1,1,1,1,1,1,1,1,1,1,1,0.5,0.5,1,2,2,2 FROM pokemons WHERE name='Shuckle' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,0.5,2,4,1,0.5,0.5,1,1,1,2,1,1,1 FROM pokemons WHERE name='Heracross' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,4,2,1,0.5,1,1,0.5,1,1,0,2,2,1 FROM pokemons WHERE name='Sneasel' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Teddiursa' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Ursaring' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Slugma' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,2,0.25,0.5,1,1,4,0.5,0.5,0.5,1,2,1,4 FROM pokemons WHERE name='Magcargo' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,2,1,1,2,1,1,1,0.5,1,1,2,2 FROM pokemons WHERE name='Swinub' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,2,1,1,2,1,1,1,0.5,1,1,2,2 FROM pokemons WHERE name='Piloswine' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Corsola' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Remoraid' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Octillery' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,2,1,1,0.5,0,1,1,1,1,4,2,1 FROM pokemons WHERE name='Delibird' UNION ALL
SELECT id_pokemon,0.5,1,1,4,1,0.5,0.5,1,1,1,0,1,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Mantine' UNION ALL
SELECT id_pokemon,0.25,1,0.5,2,0.5,1,2,0.5,1,0.25,0,1,0.5,0,0.5,1,0.5,1 FROM pokemons WHERE name='Skarmory' UNION ALL
SELECT id_pokemon,1,0.5,1,1,1,2,0.5,1,0.5,0.5,2,0.5,1,1,0,2,0.5,2 FROM pokemons WHERE name='Houndour' UNION ALL
SELECT id_pokemon,1,0.5,1,1,1,2,0.5,1,0.5,0.5,2,0.5,1,1,0,2,0.5,2 FROM pokemons WHERE name='Houndoom' UNION ALL
SELECT id_pokemon,1,1,2,1,2,1,0.25,1,1,1,1,1,1,1,1,1,0.5,0.25 FROM pokemons WHERE name='Kingdra' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Phanpy' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Donphan' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Porygon2' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Stantler' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Smeargle' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Tyrogue' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Hitmontop' UNION ALL
SELECT id_pokemon,2,2,1,1,1,1,2,1,2,1,1,0.5,1,1,0.5,2,2,1 FROM pokemons WHERE name='Smoochum' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Elekid' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Magby' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Miltank' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Blissey' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Raikou' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Entei' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Suicune' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,0.5,0.5,1,4,2,2,0.5,0.25,1,0.5,2,4 FROM pokemons WHERE name='Larvitar' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,0.5,0.5,1,4,2,2,0.5,0.25,1,0.5,2,4 FROM pokemons WHERE name='Pupitar' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,4,0.5,0.5,0.5,2,2,1,0.5,0.5,0,1,2,2 FROM pokemons WHERE name='Tyranitar' UNION ALL
SELECT id_pokemon,1,2,1,2,1,0.25,1,1,2,0.5,0,2,1,1,0.5,2,1,1 FROM pokemons WHERE name='Lugia' UNION ALL
SELECT id_pokemon,0.25,1,1,2,0.5,0.5,0.5,1,1,0.25,0,1,1,1,1,4,0.5,2 FROM pokemons WHERE name='Ho-Oh' UNION ALL
SELECT id_pokemon,4,2,1,0.5,1,0.5,2,2,2,0.5,0.5,2,1,2,0.5,1,1,0.5 FROM pokemons WHERE name='Celebi' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Treecko' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Grovyle' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Sceptile' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Torchic' UNION ALL
SELECT id_pokemon,0.25,0.5,1,1,1,1,0.5,2,1,0.5,2,0.5,1,1,2,1,0.5,2 FROM pokemons WHERE name='Combusken' UNION ALL
SELECT id_pokemon,0.25,0.5,1,1,1,1,0.5,2,1,0.5,2,0.5,1,1,2,1,0.5,2 FROM pokemons WHERE name='Blaziken' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Mudkip' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,0.5,1,1,4,1,1,1,0.5,1,0.5,0.5,1 FROM pokemons WHERE name='Marshtomp' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,0.5,1,1,4,1,1,1,0.5,1,0.5,0.5,1 FROM pokemons WHERE name='Swampert' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,2,1,1,0.5,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Poochyena' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,2,1,1,0.5,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Mightyena' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Zigzagoon' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Linoone' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Wurmple' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Silcoon' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Beautifly' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Cascoon' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Dustox' UNION ALL
SELECT id_pokemon,2,1,1,1,1,1,1,2,1,1,0.5,1,1,2,1,1,0.5,0.25 FROM pokemons WHERE name='Lotad' UNION ALL
SELECT id_pokemon,2,1,1,1,1,1,1,2,1,1,0.5,1,1,2,1,1,0.5,0.25 FROM pokemons WHERE name='Lombre' UNION ALL
SELECT id_pokemon,2,1,1,1,1,1,1,2,1,1,0.5,1,1,2,1,1,0.5,0.25 FROM pokemons WHERE name='Ludicolo' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Seedot' UNION ALL
SELECT id_pokemon,4,0.5,1,0.5,2,2,2,2,0.5,0.5,0.5,2,1,2,0,1,1,0.5 FROM pokemons WHERE name='Nuzleaf' UNION ALL
SELECT id_pokemon,4,0.5,1,0.5,2,2,2,2,0.5,0.5,0.5,2,1,2,0,1,1,0.5 FROM pokemons WHERE name='Shiftry' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Taillow' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Swellow' UNION ALL
SELECT id_pokemon,0.5,1,1,4,1,0.5,0.5,1,1,1,0,1,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Wingull' UNION ALL
SELECT id_pokemon,0.5,1,1,4,1,0.5,0.5,1,1,1,0,1,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Pelipper' UNION ALL
SELECT id_pokemon,1,1,0,1,1,0.25,1,1,2,1,1,1,1,2,0.5,1,2,1 FROM pokemons WHERE name='Ralts' UNION ALL
SELECT id_pokemon,1,1,0,1,1,0.25,1,1,2,1,1,1,1,2,0.5,1,2,1 FROM pokemons WHERE name='Kirlia' UNION ALL
SELECT id_pokemon,1,1,0,1,1,0.25,1,1,2,1,1,1,1,2,0.5,1,2,1 FROM pokemons WHERE name='Gardevoir' UNION ALL
SELECT id_pokemon,1,1,1,2,1,0.5,1,2,1,1,0.5,0.5,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Surskit' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Masquerain' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Shroomish' UNION ALL
SELECT id_pokemon,1,0.5,1,0.5,2,1,2,4,1,0.5,0.5,2,1,2,2,0.5,1,0.5 FROM pokemons WHERE name='Breloom' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Slakoth' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Vigoroth' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Slaking' UNION ALL
SELECT id_pokemon,1,1,1,0,1,0.5,2,2,1,1,0.5,2,1,0.5,1,1,1,2 FROM pokemons WHERE name='Nincada' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Ninjask' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,2,2,2,0.5,0.5,1,0,0.5,1,2,1,1 FROM pokemons WHERE name='Shedinja' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Whismur' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Loudred' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Exploud' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Makuhita' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Hariyama' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,1,1,1,0,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Azurill' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Nosepass' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Skitty' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Delcatty' UNION ALL
SELECT id_pokemon,1,1,1,1,2,0,1,1,1,1,1,1,0,0.5,0,1,1,1 FROM pokemons WHERE name='Sableye' UNION ALL
SELECT id_pokemon,0.25,0.5,0,1,0.5,1,2,0.5,1,0.5,2,0.5,0.5,0,0.5,0.5,1,1 FROM pokemons WHERE name='Mawile' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,4,1,0.25,1,1,4,0.5,0.25,0,0.5,0.5,1,2 FROM pokemons WHERE name='Aron' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,4,1,0.25,1,1,4,0.5,0.25,0,0.5,0.5,1,2 FROM pokemons WHERE name='Lairon' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,4,1,0.25,1,1,4,0.5,0.25,0,0.5,0.5,1,2 FROM pokemons WHERE name='Aggron' UNION ALL
SELECT id_pokemon,1,1,1,1,2,0.5,1,2,2,1,1,1,1,1,1,0.5,1,1 FROM pokemons WHERE name='Meditite' UNION ALL
SELECT id_pokemon,1,1,1,1,2,0.5,1,2,2,1,1,1,1,1,1,0.5,1,1 FROM pokemons WHERE name='Medicham' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Electrike' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Manectric' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Plusle' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Minun' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Volbeat' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Illumise' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Roselia' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Gulpin' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Swalot' UNION ALL
SELECT id_pokemon,2,0.5,1,2,2,2,0.5,1,0.5,2,1,0.5,1,1,0,1,0.5,0.5 FROM pokemons WHERE name='Carvanha' UNION ALL
SELECT id_pokemon,2,0.5,1,2,2,2,0.5,1,0.5,2,1,0.5,1,1,0,1,0.5,0.5 FROM pokemons WHERE name='Sharpedo' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Wailmer' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Wailord' UNION ALL
SELECT id_pokemon,0.5,1,1,0,0.5,1,0.5,1,1,1,2,1,1,0.5,1,1,0.5,4 FROM pokemons WHERE name='Numel' UNION ALL
SELECT id_pokemon,0.5,1,1,0,0.5,1,0.5,1,1,1,2,1,1,0.5,1,1,0.5,4 FROM pokemons WHERE name='Camerupt' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Torkoal' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Spoink' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Grumpig' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Spinda' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Trapinch' UNION ALL
SELECT id_pokemon,1,1,2,0,2,1,0.5,1,1,1,1,4,1,0.5,1,0.5,1,1 FROM pokemons WHERE name='Vibrava' UNION ALL
SELECT id_pokemon,1,1,2,0,2,1,0.5,1,1,1,1,4,1,0.5,1,0.5,1,1 FROM pokemons WHERE name='Flygon' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Cacnea' UNION ALL
SELECT id_pokemon,4,0.5,1,0.5,2,2,2,2,0.5,0.5,0.5,2,1,2,0,1,1,0.5 FROM pokemons WHERE name='Cacturne' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Swablu' UNION ALL
SELECT id_pokemon,0.5,1,2,1,2,0.5,0.5,1,1,0.25,0,4,1,1,1,2,1,0.5 FROM pokemons WHERE name='Altaria' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Zangoose' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Seviper' UNION ALL
SELECT id_pokemon,2,2,1,1,1,1,0.5,0.5,2,2,2,1,0.5,0.5,0.5,1,2,2 FROM pokemons WHERE name='Lunatone' UNION ALL
SELECT id_pokemon,2,2,1,1,1,1,0.5,0.5,2,2,2,1,0.5,0.5,0.5,1,2,2 FROM pokemons WHERE name='Solrock' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,0.5,1,1,4,1,1,1,0.5,1,0.5,0.5,1 FROM pokemons WHERE name='Barboach' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,0.5,1,1,4,1,1,1,0.5,1,0.5,0.5,1 FROM pokemons WHERE name='Whiscash' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Corphish' UNION ALL
SELECT id_pokemon,2,0.5,1,2,2,2,0.5,1,0.5,2,1,0.5,1,1,0,1,0.5,0.5 FROM pokemons WHERE name='Crawdaunt' UNION ALL
SELECT id_pokemon,2,2,1,0,1,0.5,1,1,2,2,1,2,1,0.5,0.5,0.5,1,2 FROM pokemons WHERE name='Baltoy' UNION ALL
SELECT id_pokemon,2,2,1,0,1,0.5,1,1,2,2,1,2,1,0.5,0.5,0.5,1,2 FROM pokemons WHERE name='Claydol' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,2,1,1,1,1,1,2,0.5,1,1,1,2,1 FROM pokemons WHERE name='Lileep' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,2,1,1,1,1,1,2,0.5,1,1,1,2,1 FROM pokemons WHERE name='Cradily' UNION ALL
SELECT id_pokemon,1,1,1,1,1,1,1,1,1,1,1,1,0.5,0.5,1,2,2,2 FROM pokemons WHERE name='Anorith' UNION ALL
SELECT id_pokemon,1,1,1,1,1,1,1,1,1,1,1,1,0.5,0.5,1,2,2,2 FROM pokemons WHERE name='Armaldo' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Feebas' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Milotic' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Castform' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Kecleon' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,1,1,2,1,1,1,0,0.5,1,1,1,1 FROM pokemons WHERE name='Shuppet' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,1,1,2,1,1,1,0,0.5,1,1,1,1 FROM pokemons WHERE name='Banette' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,1,1,2,1,1,1,0,0.5,1,1,1,1 FROM pokemons WHERE name='Duskull' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,1,1,2,1,1,1,0,0.5,1,1,1,1 FROM pokemons WHERE name='Dusclops' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.25,0,4,1,2,1,2,1,0.5 FROM pokemons WHERE name='Tropius' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Chimecho' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,2,1,1,0.5,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Absol' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Wynaut' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Snorunt' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Glalie' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,1,1,1,2,1,0.25,1,1,1,2,1,0.5 FROM pokemons WHERE name='Spheal' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,1,1,1,2,1,0.25,1,1,1,2,1,0.5 FROM pokemons WHERE name='Sealeo' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,1,1,1,2,1,0.25,1,1,1,2,1,0.5 FROM pokemons WHERE name='Walrein' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Clamperl' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Huntail' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Gorebyss' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Relicanth' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Luvdisc' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Bagon' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Shelgon' UNION ALL
SELECT id_pokemon,0.5,1,2,1,2,0.5,0.5,1,1,0.25,0,4,1,1,1,2,1,0.5 FROM pokemons WHERE name='Salamence' UNION ALL
SELECT id_pokemon,1,2,0.5,1,0.5,1,2,0.5,2,0.5,2,0.5,0.5,0,0.25,0.5,0.5,1 FROM pokemons WHERE name='Beldum' UNION ALL
SELECT id_pokemon,1,2,0.5,1,0.5,1,2,0.5,2,0.5,2,0.5,0.5,0,0.25,0.5,0.5,1 FROM pokemons WHERE name='Metang' UNION ALL
SELECT id_pokemon,1,2,0.5,1,0.5,1,2,0.5,2,0.5,2,0.5,0.5,0,0.25,0.5,0.5,1 FROM pokemons WHERE name='Metagross' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Regirock' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Regice' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,2,2,0.5,1,0.5,2,0.5,0.5,0,0.5,0.5,0.5,1 FROM pokemons WHERE name='Registeel' UNION ALL
SELECT id_pokemon,2,2,2,0.5,2,0.5,0.5,1,2,0.5,1,2,1,1,0.5,1,1,0.5 FROM pokemons WHERE name='Latias' UNION ALL
SELECT id_pokemon,2,2,2,0.5,2,0.5,0.5,1,2,0.5,1,2,1,1,0.5,1,1,0.5 FROM pokemons WHERE name='Latios' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Kyogre' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Groudon' UNION ALL
SELECT id_pokemon,0.5,1,2,1,2,0.5,0.5,1,1,0.25,0,4,1,1,1,2,1,0.5 FROM pokemons WHERE name='Rayquaza' UNION ALL
SELECT id_pokemon,1,2,0.5,1,0.5,1,2,0.5,2,0.5,2,0.5,0.5,0,0.25,0.5,0.5,1 FROM pokemons WHERE name='Jirachi' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Deoxys' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Turtwig' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Grotle' UNION ALL
SELECT id_pokemon,2,1,1,0,1,1,2,2,1,1,0.5,4,1,1,1,0.5,1,1 FROM pokemons WHERE name='Torterra' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Chimchar' UNION ALL
SELECT id_pokemon,0.25,0.5,1,1,1,1,0.5,2,1,0.5,2,0.5,1,1,2,1,0.5,2 FROM pokemons WHERE name='Monferno' UNION ALL
SELECT id_pokemon,0.25,0.5,1,1,1,1,0.5,2,1,0.5,2,0.5,1,1,2,1,0.5,2 FROM pokemons WHERE name='Infernape' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Piplup' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Prinplup' UNION ALL
SELECT id_pokemon,0.5,1,0.5,2,0.5,2,1,0.5,1,1,2,0.25,0.5,0,0.5,0.5,0.25,0.5 FROM pokemons WHERE name='Empoleon' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Starly' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Staravia' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Staraptor' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Bidoof' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.5,1,0,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Bibarel' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Kricketot' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Kricketune' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Shinx' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Luxio' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Luxray' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Budew' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Roserade' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Cranidos' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Rampardos' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,4,1,0.25,1,1,4,0.5,0.25,0,0.5,0.5,1,2 FROM pokemons WHERE name='Shieldon' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,4,1,0.25,1,1,4,0.5,0.25,0,0.5,0.5,1,2 FROM pokemons WHERE name='Bastiodon' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Burmy' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,0.5,4,4,1,0.25,0.25,2,1,2,1,2,1,0.5 FROM pokemons WHERE name='Wormadam' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Mothim' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Combee' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Vespiquen' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Pachirisu' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Buizel' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Floatzel' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Cherubi' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Cherrim' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Shellos' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,0.5,1,1,4,1,1,1,0.5,1,0.5,0.5,1 FROM pokemons WHERE name='Gastrodon' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Ambipom' UNION ALL
SELECT id_pokemon,0.25,2,1,2,1,0,1,1,2,0.5,0,2,0,0.5,1,2,1,1 FROM pokemons WHERE name='Drifloon' UNION ALL
SELECT id_pokemon,0.25,2,1,2,1,0,1,1,2,0.5,0,2,0,0.5,1,2,1,1 FROM pokemons WHERE name='Drifblim' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Buneary' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Lopunny' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,1,1,2,1,1,1,0,0.5,1,1,1,1 FROM pokemons WHERE name='Mismagius' UNION ALL
SELECT id_pokemon,1,0.5,1,2,2,1,1,1,0.5,0.5,0,2,1,1,0,2,1,1 FROM pokemons WHERE name='Honchkrow' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Glameow' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Purugly' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Chingling' UNION ALL
SELECT id_pokemon,1,0.5,1,1,1,1,1,1,0.5,0.5,2,1,1,0.5,0,1,1,1 FROM pokemons WHERE name='Stunky' UNION ALL
SELECT id_pokemon,1,0.5,1,1,1,1,1,1,0.5,0.5,2,1,1,0.5,0,1,1,1 FROM pokemons WHERE name='Skuntank' UNION ALL
SELECT id_pokemon,1,2,0.5,1,0.5,1,2,0.5,2,0.5,2,0.5,0.5,0,0.25,0.5,0.5,1 FROM pokemons WHERE name='Bronzor' UNION ALL
SELECT id_pokemon,1,2,0.5,1,0.5,1,2,0.5,2,0.5,2,0.5,0.5,0,0.25,0.5,0.5,1 FROM pokemons WHERE name='Bronzong' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Bonsly' UNION ALL
SELECT id_pokemon,1,1,0,1,1,0.25,1,1,2,1,1,1,1,2,0.5,1,2,1 FROM pokemons WHERE name='Mime Jr.' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Happiny' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Chatot' UNION ALL
SELECT id_pokemon,1,1,1,1,2,0,1,1,1,1,1,1,0,0.5,0,1,1,1 FROM pokemons WHERE name='Spiritomb' UNION ALL
SELECT id_pokemon,1,1,2,0,2,1,0.5,1,1,1,1,4,1,0.5,1,0.5,1,1 FROM pokemons WHERE name='Gible' UNION ALL
SELECT id_pokemon,1,1,2,0,2,1,0.5,1,1,1,1,4,1,0.5,1,0.5,1,1 FROM pokemons WHERE name='Gabite' UNION ALL
SELECT id_pokemon,1,1,2,0,2,1,0.5,1,1,1,1,4,1,0.5,1,0.5,1,1 FROM pokemons WHERE name='Garchomp' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Munchlax' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Riolu' UNION ALL
SELECT id_pokemon,0.25,0.5,0.5,1,1,2,2,1,1,0.5,2,0.5,0.5,0,1,0.25,0.5,1 FROM pokemons WHERE name='Lucario' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Hippopotas' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Hippowdon' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Skorupi' UNION ALL
SELECT id_pokemon,1,0.5,1,1,1,1,1,1,0.5,0.5,2,1,1,0.5,0,1,1,1 FROM pokemons WHERE name='Drapion' UNION ALL
SELECT id_pokemon,0.25,0.5,1,1,1,0.5,1,2,1,0.5,2,1,1,0.5,4,0.5,1,1 FROM pokemons WHERE name='Croagunk' UNION ALL
SELECT id_pokemon,0.25,0.5,1,1,1,0.5,1,2,1,0.5,2,1,1,0.5,4,0.5,1,1 FROM pokemons WHERE name='Toxicroak' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Carnivine' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Finneon' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Lumineon' UNION ALL
SELECT id_pokemon,0.5,1,1,4,1,0.5,0.5,1,1,1,0,1,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Mantyke' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,2,4,2,1,0.5,0.5,1,1,2,1,2,2,0.5 FROM pokemons WHERE name='Snover' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,2,4,2,1,0.5,0.5,1,1,2,1,2,2,0.5 FROM pokemons WHERE name='Abomasnow' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,4,2,1,0.5,1,1,0.5,1,1,0,2,2,1 FROM pokemons WHERE name='Weavile' UNION ALL
SELECT id_pokemon,0.5,1,0.5,0.5,0.5,2,2,0.25,1,0.5,4,0.5,0.5,0,0.5,0.5,0.25,1 FROM pokemons WHERE name='Magnezone' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Lickilicky' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,0.5,0.5,1,4,2,2,0.5,0.25,1,0.5,2,4 FROM pokemons WHERE name='Rhyperior' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Tangrowth' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Electivire' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Magmortar' UNION ALL
SELECT id_pokemon,0.25,0.5,0,2,1,0.25,1,1,1,0.5,0,2,1,2,1,2,2,1 FROM pokemons WHERE name='Togekiss' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Yanmega' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Leafeon' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Glaceon' UNION ALL
SELECT id_pokemon,0.5,1,1,0,1,0.5,1,1,1,1,0,4,1,0.5,1,1,1,2 FROM pokemons WHERE name='Gliscor' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,2,1,1,2,1,1,1,0.5,1,1,2,2 FROM pokemons WHERE name='Mamoswine' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Porygon-Z' UNION ALL
SELECT id_pokemon,1,1,1,1,2,0.5,1,2,2,1,1,1,1,1,1,0.5,1,1 FROM pokemons WHERE name='Gallade' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,4,1,0.25,1,1,4,0.5,0.25,0,0.5,0.5,1,2 FROM pokemons WHERE name='Probopass' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,1,1,2,1,1,1,0,0.5,1,1,1,1 FROM pokemons WHERE name='Dusknoir' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,2,1,2,1,1,0.5,0,0.5,1,2,2,1 FROM pokemons WHERE name='Froslass' UNION ALL
SELECT id_pokemon,0.5,2,1,0.5,1,0,1,0.5,2,1,2,1,0,0.5,1,1,0.5,1 FROM pokemons WHERE name='Rotom' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Uxie' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Mesprit' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Azelf' UNION ALL
SELECT id_pokemon,0.5,1,1,0.5,1,2,1,0.5,1,0.25,2,1,0.5,0,0.5,0.5,0.5,0.5 FROM pokemons WHERE name='Dialga' UNION ALL
SELECT id_pokemon,1,1,2,1,2,1,0.25,1,1,1,1,1,1,1,1,1,0.5,0.25 FROM pokemons WHERE name='Palkia' UNION ALL
SELECT id_pokemon,0.25,1,0.5,1,0.25,2,1,0.5,1,0.25,4,0.25,0.5,0,0.5,1,0.25,2 FROM pokemons WHERE name='Heatran' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Regigigas' UNION ALL
SELECT id_pokemon,0.5,2,2,0.5,2,0,0.5,1,2,0.5,1,2,0,0.5,1,1,1,0.5 FROM pokemons WHERE name='Giratina' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Cresselia' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Phione' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Manaphy' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,2,1,1,0.5,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Darkrai' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Shaymin' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Arceus' UNION ALL
SELECT id_pokemon,1,2,1,1,0.5,0.5,0.5,1,2,0.5,2,0.5,1,1,0.5,2,0.5,2 FROM pokemons WHERE name='Victini' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Snivy' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Servine' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Serperior' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Tepig' UNION ALL
SELECT id_pokemon,0.25,0.5,1,1,1,1,0.5,2,1,0.5,2,0.5,1,1,2,1,0.5,2 FROM pokemons WHERE name='Pignite' UNION ALL
SELECT id_pokemon,0.25,0.5,1,1,1,1,0.5,2,1,0.5,2,0.5,1,1,2,1,0.5,2 FROM pokemons WHERE name='Emboar' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Oshawott' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Dewott' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Samurott' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Patrat' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Watchog' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Lillipup' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Herdier' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Stoutland' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,2,1,1,0.5,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Purrloin' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,2,1,1,0.5,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Liepard' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Pansage' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Simisage' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Pansear' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Simisear' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Panpour' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Simipour' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Munna' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Musharna' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Pidove' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Tranquill' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Unfezant' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Blitzle' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Zebstrika' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Roggenrola' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Boldore' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Gigalith' UNION ALL
SELECT id_pokemon,1,2,1,2,1,0.25,1,1,2,0.5,0,2,1,1,0.5,2,1,1 FROM pokemons WHERE name='Woobat' UNION ALL
SELECT id_pokemon,1,2,1,2,1,0.25,1,1,2,0.5,0,2,1,1,0.5,2,1,1 FROM pokemons WHERE name='Swoobat' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Drilbur' UNION ALL
SELECT id_pokemon,0.5,1,0.5,0,0.5,2,2,0.5,1,1,2,1,0.5,0,0.5,0.25,0.5,2 FROM pokemons WHERE name='Excadrill' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Audino' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Timburr' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Gurdurr' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Conkeldurr' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Tympole' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,0.5,1,1,4,1,1,1,0.5,1,0.5,0.5,1 FROM pokemons WHERE name='Palpitoad' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,0.5,1,1,4,1,1,1,0.5,1,0.5,0.5,1 FROM pokemons WHERE name='Seismitoad' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Throh' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Sawk' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,0.5,4,4,1,0.25,0.25,2,1,2,1,2,1,0.5 FROM pokemons WHERE name='Sewaddle' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,0.5,4,4,1,0.25,0.25,2,1,2,1,2,1,0.5 FROM pokemons WHERE name='Swadloon' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,0.5,4,4,1,0.25,0.25,2,1,2,1,2,1,0.5 FROM pokemons WHERE name='Leavanny' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Venipede' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Whirlipede' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.25,2,2,1,0.25,1,1,1,0.5,2,2,1,1 FROM pokemons WHERE name='Scolipede' UNION ALL
SELECT id_pokemon,1,0.5,0,0.5,1,0.5,2,2,1,0.5,0.5,2,1,4,1,1,2,0.5 FROM pokemons WHERE name='Cottonee' UNION ALL
SELECT id_pokemon,1,0.5,0,0.5,1,0.5,2,2,1,0.5,0.5,2,1,4,1,1,2,0.5 FROM pokemons WHERE name='Whimsicott' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Petilil' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Lilligant' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Basculin' UNION ALL
SELECT id_pokemon,2,0.5,1,0,2,2,1,1,0.5,2,1,2,1,0.5,0,0.5,1,2 FROM pokemons WHERE name='Sandile' UNION ALL
SELECT id_pokemon,2,0.5,1,0,2,2,1,1,0.5,2,1,2,1,0.5,0,0.5,1,2 FROM pokemons WHERE name='Krokorok' UNION ALL
SELECT id_pokemon,2,0.5,1,0,2,2,1,1,0.5,2,1,2,1,0.5,0,0.5,1,2 FROM pokemons WHERE name='Krookodile' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Darumaka' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Darmanitan' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Maractus' UNION ALL
SELECT id_pokemon,1,1,1,1,1,1,1,1,1,1,1,1,0.5,0.5,1,2,2,2 FROM pokemons WHERE name='Dwebble' UNION ALL
SELECT id_pokemon,1,1,1,1,1,1,1,1,1,1,1,1,0.5,0.5,1,2,2,2 FROM pokemons WHERE name='Crustle' UNION ALL
SELECT id_pokemon,1,0.25,1,1,4,2,1,2,0.5,1,1,1,1,1,0,0.5,1,1 FROM pokemons WHERE name='Scraggy' UNION ALL
SELECT id_pokemon,1,0.25,1,1,4,2,1,2,0.5,1,1,1,1,1,0,0.5,1,1 FROM pokemons WHERE name='Scrafty' UNION ALL
SELECT id_pokemon,1,2,1,2,1,0.25,1,1,2,0.5,0,2,1,1,0.5,2,1,1 FROM pokemons WHERE name='Sigilyph' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,1,1,2,1,1,1,0,0.5,1,1,1,1 FROM pokemons WHERE name='Yamask' UNION ALL
SELECT id_pokemon,0.5,2,1,1,1,0,1,1,2,1,1,1,0,0.5,1,1,1,1 FROM pokemons WHERE name='Cofagrigus' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Tirtouga' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Carracosta' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,0.5,0.5,1,1,0,2,0.5,0.5,1,2,2,2 FROM pokemons WHERE name='Archen' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,0.5,0.5,1,1,0,2,0.5,0.5,1,2,2,2 FROM pokemons WHERE name='Archeops' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Trubbish' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,1,1,0.5,2,1,1,0.5,2,1,1,1 FROM pokemons WHERE name='Garbodor' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,2,1,1,0.5,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Zorua' UNION ALL
SELECT id_pokemon,2,0.5,1,1,2,2,1,1,0.5,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Zoroark' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Minccino' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Cinccino' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Gothita' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Gothorita' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Gothitelle' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Solosis' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Duosion' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Reuniclus' UNION ALL
SELECT id_pokemon,0.5,1,1,4,1,0.5,0.5,1,1,1,0,1,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Ducklett' UNION ALL
SELECT id_pokemon,0.5,1,1,4,1,0.5,0.5,1,1,1,0,1,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Swanna' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Vanillite' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Vanillish' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Vanilluxe' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,2,2,2,0,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Deerling' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,2,2,2,0,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Sawsbuck' UNION ALL
SELECT id_pokemon,0.5,1,1,1,1,0.5,1,0.5,1,0.5,0,2,1,1,1,2,0.5,1 FROM pokemons WHERE name='Emolga' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Karrablast' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,1,4,1,1,0.25,1,0.5,0.5,0,0.5,1,0.5,1 FROM pokemons WHERE name='Escavalier' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Foongus' UNION ALL
SELECT id_pokemon,1,1,1,0.5,0.5,0.5,2,2,1,0.25,1,2,1,1,2,1,1,0.5 FROM pokemons WHERE name='Amoonguss' UNION ALL
SELECT id_pokemon,0.5,2,1,2,1,0,0.5,1,2,2,1,0.5,0,0.5,1,1,0.5,0.5 FROM pokemons WHERE name='Frillish' UNION ALL
SELECT id_pokemon,0.5,2,1,2,1,0,0.5,1,2,2,1,0.5,0,0.5,1,1,0.5,0.5 FROM pokemons WHERE name='Jellicent' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Alomomola' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,0.5,2,1,1,0.5,1,1,1,1,1,2,0.5,1 FROM pokemons WHERE name='Joltik' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,0.5,2,1,1,0.5,1,1,1,1,1,2,0.5,1 FROM pokemons WHERE name='Galvantula' UNION ALL
SELECT id_pokemon,1,1,0.5,0.5,0.5,2,4,1,1,0.25,1,1,0.5,0,0.5,0.5,0.5,0.5 FROM pokemons WHERE name='Ferroseed' UNION ALL
SELECT id_pokemon,1,1,0.5,0.5,0.5,2,4,1,1,0.25,1,1,0.5,0,0.5,0.5,0.5,0.5 FROM pokemons WHERE name='Ferrothorn' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,2,2,0.5,1,0.5,2,0.5,0.5,0,0.5,0.5,0.5,1 FROM pokemons WHERE name='Klink' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,2,2,0.5,1,0.5,2,0.5,0.5,0,0.5,0.5,0.5,1 FROM pokemons WHERE name='Klang' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,2,2,0.5,1,0.5,2,0.5,0.5,0,0.5,0.5,0.5,1 FROM pokemons WHERE name='Klinklang' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Tynamo' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Eelektrik' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Eelektross' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Elgyem' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Beheeyem' UNION ALL
SELECT id_pokemon,0.25,2,1,1,0.5,0,0.5,1,2,0.5,2,0.5,0,0.5,1,2,0.5,2 FROM pokemons WHERE name='Litwick' UNION ALL
SELECT id_pokemon,0.25,2,1,1,0.5,0,0.5,1,2,0.5,2,0.5,0,0.5,1,2,0.5,2 FROM pokemons WHERE name='Lampent' UNION ALL
SELECT id_pokemon,0.25,2,1,1,0.5,0,0.5,1,2,0.5,2,0.5,0,0.5,1,2,0.5,2 FROM pokemons WHERE name='Chandelure' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Axew' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Fraxure' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Haxorus' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Cubchoo' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Beartic' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Cryogonal' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Shelmet' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Accelgor' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,0.5,1,2,2,2,1,0.5,1,0.5,0.5,2 FROM pokemons WHERE name='Stunfisk' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Mienfoo' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Mienshao' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Druddigon' UNION ALL
SELECT id_pokemon,0.5,2,1,0,1,0,1,1,2,2,1,2,0,0.25,1,0.5,1,2 FROM pokemons WHERE name='Golett' UNION ALL
SELECT id_pokemon,0.5,2,1,0,1,0,1,1,2,2,1,2,0,0.25,1,0.5,1,2 FROM pokemons WHERE name='Golurk' UNION ALL
SELECT id_pokemon,1,0.5,0.5,1,1,4,2,0.5,0.5,0.5,2,0.5,0.5,0,0,0.5,0.5,1 FROM pokemons WHERE name='Pawniard' UNION ALL
SELECT id_pokemon,1,0.5,0.5,1,1,4,2,0.5,0.5,0.5,2,0.5,0.5,0,0,0.5,0.5,1 FROM pokemons WHERE name='Bisharp' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Bouffalant' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Rufflet' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Braviary' UNION ALL
SELECT id_pokemon,1,0.5,1,2,2,1,1,1,0.5,0.5,0,2,1,1,0,2,1,1 FROM pokemons WHERE name='Vullaby' UNION ALL
SELECT id_pokemon,1,0.5,1,2,2,1,1,1,0.5,0.5,0,2,1,1,0,2,1,1 FROM pokemons WHERE name='Mandibuzz' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Heatmor' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,1,4,1,1,0.25,1,0.5,0.5,0,0.5,1,0.5,1 FROM pokemons WHERE name='Durant' UNION ALL
SELECT id_pokemon,2,0.5,2,0.5,4,2,0.5,1,0.5,0.5,1,2,1,1,0,1,1,0.5 FROM pokemons WHERE name='Deino' UNION ALL
SELECT id_pokemon,2,0.5,2,0.5,4,2,0.5,1,0.5,0.5,1,2,1,1,0,1,1,0.5 FROM pokemons WHERE name='Zweilous' UNION ALL
SELECT id_pokemon,2,0.5,2,0.5,4,2,0.5,1,0.5,0.5,1,2,1,1,0,1,1,0.5 FROM pokemons WHERE name='Hydreigon' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,2,1,0.25,1,0.5,1,1,1,4,0.5,2 FROM pokemons WHERE name='Larvesta' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,0.5,1,2,1,0.25,1,0.5,1,1,1,4,0.5,2 FROM pokemons WHERE name='Volcarona' UNION ALL
SELECT id_pokemon,0.25,0.5,0.5,1,1,2,2,1,1,0.5,2,0.5,0.5,0,1,0.25,0.5,1 FROM pokemons WHERE name='Cobalion' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,2,0.5,1,1,2,2,1,0.5,0.5,2,0.5,2,2 FROM pokemons WHERE name='Terrakion' UNION ALL
SELECT id_pokemon,1,0.5,1,0.5,2,1,2,4,1,0.5,0.5,2,1,2,2,0.5,1,0.5 FROM pokemons WHERE name='Virizion' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.5,1,1,1,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Tornadus' UNION ALL
SELECT id_pokemon,0.5,1,1,1,1,0.5,1,0.5,1,0.5,0,2,1,1,1,2,0.5,1 FROM pokemons WHERE name='Thundurus' UNION ALL
SELECT id_pokemon,0.5,1,2,0.5,1,1,0.25,1,1,0.25,2,1,1,1,1,2,0.5,1 FROM pokemons WHERE name='Reshiram' UNION ALL
SELECT id_pokemon,1,1,2,0.25,2,1,0.5,0.5,1,0.5,2,2,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Zekrom' UNION ALL
SELECT id_pokemon,0.5,1,1,0,1,0.5,1,1,1,1,0,4,1,0.5,1,1,1,2 FROM pokemons WHERE name='Landorus' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,2,1,1,1,0.5,1,1,1,1,1,2,2,0.5 FROM pokemons WHERE name='Kyurem' UNION ALL
SELECT id_pokemon,0.5,0.5,1,2,2,1,0.5,2,1,2,1,0.5,1,1,2,0.5,0.5,0.5 FROM pokemons WHERE name='Keldeo' UNION ALL
SELECT id_pokemon,2,2,1,1,1,1,1,1,0,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Meloetta' UNION ALL
SELECT id_pokemon,0.5,1,0.5,1,0.5,1,4,1,1,0.25,1,0.5,0.5,0,0.5,1,0.5,1 FROM pokemons WHERE name='Genesect' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Chespin' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Quilladin' UNION ALL
SELECT id_pokemon,1,0.5,1,0.5,2,1,2,4,1,0.5,0.5,2,1,2,2,0.5,1,0.5 FROM pokemons WHERE name='Chesnaught' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Fennekin' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Braixen' UNION ALL
SELECT id_pokemon,1,2,1,1,0.5,0.5,0.5,1,2,0.5,2,0.5,1,1,0.5,2,0.5,2 FROM pokemons WHERE name='Delphox' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Froakie' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Frogadier' UNION ALL
SELECT id_pokemon,2,0.5,1,2,2,2,0.5,1,0.5,2,1,0.5,1,1,0,1,0.5,0.5 FROM pokemons WHERE name='Greninja' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Bunnelby' UNION ALL
SELECT id_pokemon,1,1,1,0,1,2,1,1,0,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Diggersby' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Fletchling' UNION ALL
SELECT id_pokemon,0.25,1,1,2,0.5,0.5,0.5,1,1,0.25,0,1,1,1,1,4,0.5,2 FROM pokemons WHERE name='Fletchinder' UNION ALL
SELECT id_pokemon,0.25,1,1,2,0.5,0.5,0.5,1,1,0.25,0,1,1,1,1,4,0.5,2 FROM pokemons WHERE name='Talonflame' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Scatterbug' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Spewpa' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,0.25,2,2,1,0.25,0,2,1,1,1,4,1,1 FROM pokemons WHERE name='Vivillon' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,2,0.5,1,0,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Litleo' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,2,0.5,1,0,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Pyroar' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='FlabÃ©bÃ©' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Floette' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Florges' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Skiddo' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Gogoat' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Pancham' UNION ALL
SELECT id_pokemon,1,0.25,1,1,4,2,1,2,0.5,1,1,1,1,1,0,0.5,1,1 FROM pokemons WHERE name='Pangoro' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Furfrou' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Espurr' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Meowstic' UNION ALL
SELECT id_pokemon,0.25,2,0.5,1,0.5,0,2,0.5,2,0.5,2,0.5,0,0,0.5,0.5,0.5,1 FROM pokemons WHERE name='Honedge' UNION ALL
SELECT id_pokemon,0.25,2,0.5,1,0.5,0,2,0.5,2,0.5,2,0.5,0,0,0.5,0.5,0.5,1 FROM pokemons WHERE name='Doublade' UNION ALL
SELECT id_pokemon,0.25,2,0.5,1,0.5,0,2,0.5,2,0.5,2,0.5,0,0,0.5,0.5,0.5,1 FROM pokemons WHERE name='Aegislash' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Spritzee' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Aromatisse' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Swirlix' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Slurpuff' UNION ALL
SELECT id_pokemon,4,1,1,1,2,1,1,1,1,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Inkay' UNION ALL
SELECT id_pokemon,4,1,1,1,2,1,1,1,1,1,1,1,1,1,0,1,1,1 FROM pokemons WHERE name='Malamar' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Binacle' UNION ALL
SELECT id_pokemon,1,1,1,2,1,2,0.25,0.5,1,4,2,0.5,0.5,0.5,1,1,1,1 FROM pokemons WHERE name='Barbaracle' UNION ALL
SELECT id_pokemon,0.5,1,1,2,0.5,0.5,0.5,1,1,1,2,0.5,1,0.5,2,1,0.5,0.5 FROM pokemons WHERE name='Skrelp' UNION ALL
SELECT id_pokemon,0.5,1,2,0.5,1,0.5,0.5,1,1,0.25,2,2,1,0.5,2,1,1,0.5 FROM pokemons WHERE name='Dragalge' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Clauncher' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Clawitzer' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,2,1,0.5,0,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Helioptile' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,2,1,0.5,0,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Heliolisk' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,2,0.25,0.5,1,1,2,2,0.5,0.5,1,1,2,1 FROM pokemons WHERE name='Tyrunt' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,2,0.25,0.5,1,1,2,2,0.5,0.5,1,1,2,1 FROM pokemons WHERE name='Tyrantrum' UNION ALL
SELECT id_pokemon,1,1,1,1,1,4,1,0.5,1,2,2,0.5,0.5,0.5,1,2,4,2 FROM pokemons WHERE name='Amaura' UNION ALL
SELECT id_pokemon,1,1,1,1,1,4,1,0.5,1,2,2,0.5,0.5,0.5,1,2,4,2 FROM pokemons WHERE name='Aurorus' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Sylveon' UNION ALL
SELECT id_pokemon,0.25,0.5,1,2,2,0.5,1,2,1,0.5,0,2,1,1,2,1,1,1 FROM pokemons WHERE name='Hawlucha' UNION ALL
SELECT id_pokemon,0.5,0.5,0,0.5,1,0.5,1,0.5,1,1,2,1,1,2,1,1,1,1 FROM pokemons WHERE name='Dedenne' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,1,0.5,0.5,1,2,2,1,0.5,1,1,1,4,2 FROM pokemons WHERE name='Carbink' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Goomy' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Sliggoo' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Goodra' UNION ALL
SELECT id_pokemon,0.25,0.5,0,1,0.5,1,2,0.5,1,0.5,2,0.5,0.5,0,0.5,0.5,1,1 FROM pokemons WHERE name='Klefki' UNION ALL
SELECT id_pokemon,1,2,1,0.5,1,0,2,2,2,0.5,0.5,2,0,1,1,1,1,0.5 FROM pokemons WHERE name='Phantump' UNION ALL
SELECT id_pokemon,1,2,1,0.5,1,0,2,2,2,0.5,0.5,2,0,1,1,1,1,0.5 FROM pokemons WHERE name='Trevenant' UNION ALL
SELECT id_pokemon,1,2,1,0.5,1,0,2,2,2,0.5,0.5,2,0,1,1,1,1,0.5 FROM pokemons WHERE name='Pumpkaboo' UNION ALL
SELECT id_pokemon,1,2,1,0.5,1,0,2,2,2,0.5,0.5,2,0,1,1,1,1,0.5 FROM pokemons WHERE name='Gourgeist' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Bergmite' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,2,1,1,1,1,0.5,1,1,1,2,2,1 FROM pokemons WHERE name='Avalugg' UNION ALL
SELECT id_pokemon,0.5,1,2,1,2,0.5,0.5,1,1,0.25,0,4,1,1,1,2,1,0.5 FROM pokemons WHERE name='Noibat' UNION ALL
SELECT id_pokemon,0.5,1,2,1,2,0.5,0.5,1,1,0.25,0,4,1,1,1,2,1,0.5 FROM pokemons WHERE name='Noivern' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Xerneas' UNION ALL
SELECT id_pokemon,1,0.5,1,2,2,1,1,1,0.5,0.5,0,2,1,1,0,2,1,1 FROM pokemons WHERE name='Yveltal' UNION ALL
SELECT id_pokemon,1,1,2,0,2,1,0.5,1,1,1,1,4,1,0.5,1,0.5,1,1 FROM pokemons WHERE name='Zygarde' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,1,0.5,0.5,1,2,2,1,0.5,1,1,1,4,2 FROM pokemons WHERE name='Diancie' UNION ALL
SELECT id_pokemon,1,4,1,1,1,0,1,1,4,1,1,1,0,0.5,0.5,1,1,1 FROM pokemons WHERE name='Hoopa' UNION ALL
SELECT id_pokemon,0.5,1,1,2,0.5,1,0.25,1,1,1,2,0.25,1,1,1,2,0.25,1 FROM pokemons WHERE name='Volcanion' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.25,0,4,1,2,1,2,1,0.5 FROM pokemons WHERE name='Rowlet' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.25,0,4,1,2,1,2,1,0.5 FROM pokemons WHERE name='Dartrix' UNION ALL
SELECT id_pokemon,1,2,1,0.5,1,0,2,2,2,0.5,0.5,2,0,1,1,1,1,0.5 FROM pokemons WHERE name='Decidueye' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Litten' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,1,1,0.5,2,0.5,1,1,1,2,0.5,2 FROM pokemons WHERE name='Torracat' UNION ALL
SELECT id_pokemon,1,0.5,1,1,1,2,0.5,1,0.5,0.5,2,0.5,1,1,0,2,0.5,2 FROM pokemons WHERE name='Incineroar' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Popplio' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Brionne' UNION ALL
SELECT id_pokemon,0.5,0.5,0,2,1,0.5,0.5,1,1,2,1,0.5,1,2,1,1,1,0.5 FROM pokemons WHERE name='Primarina' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Pikipek' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Trumbeak' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,1,1,0,0.5,0,2,1,1,1,2,1,1 FROM pokemons WHERE name='Toucannon' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Yungoos' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Gumshoos' UNION ALL
SELECT id_pokemon,1,1,1,1,1,0.5,2,2,1,0.5,0.5,1,1,1,1,2,1,1 FROM pokemons WHERE name='Grubbin' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,0.5,2,1,1,0.5,1,1,1,1,1,2,0.5,1 FROM pokemons WHERE name='Charjabug' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,0.5,2,1,1,0.5,1,1,1,1,1,2,0.5,1 FROM pokemons WHERE name='Vikavolt' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Crabrawler' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,2,2,2,1,1,1,0.5,1,1,2,1,2,1 FROM pokemons WHERE name='Crabominable' UNION ALL
SELECT id_pokemon,0.25,1,1,2,0.5,0.5,0.5,1,1,0.25,0,1,1,1,1,4,0.5,2 FROM pokemons WHERE name='Oricorio' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.25,2,2,1,0.5,0.5,1,1,2,1,2,2,1 FROM pokemons WHERE name='Cutiefly' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.25,2,2,1,0.5,0.5,1,1,2,1,2,2,1 FROM pokemons WHERE name='Ribombee' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Rockruff' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,0.5,0.5,1,2,2,1,0.5,0.5,1,1,2,2 FROM pokemons WHERE name='Lycanroc' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Wishiwashi' UNION ALL
SELECT id_pokemon,0.5,1,1,2,0.5,0.5,0.5,1,1,1,2,0.5,1,0.5,2,1,0.5,0.5 FROM pokemons WHERE name='Mareanie' UNION ALL
SELECT id_pokemon,0.5,1,1,2,0.5,0.5,0.5,1,1,1,2,0.5,1,0.5,2,1,0.5,0.5 FROM pokemons WHERE name='Toxapex' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Mudbray' UNION ALL
SELECT id_pokemon,1,1,1,0,1,1,1,1,1,2,1,2,1,0.5,1,0.5,1,2 FROM pokemons WHERE name='Mudsdale' UNION ALL
SELECT id_pokemon,1,1,1,2,1,0.5,1,2,1,1,0.5,0.5,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Dewpider' UNION ALL
SELECT id_pokemon,1,1,1,2,1,0.5,1,2,1,1,0.5,0.5,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Araquanid' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Fomantis' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Lurantis' UNION ALL
SELECT id_pokemon,1,0.5,0,0.5,1,0.5,2,2,1,0.5,0.5,2,1,4,1,1,2,0.5 FROM pokemons WHERE name='Morelull' UNION ALL
SELECT id_pokemon,1,0.5,0,0.5,1,0.5,2,2,1,0.5,0.5,2,1,4,1,1,2,0.5 FROM pokemons WHERE name='Shiinotic' UNION ALL
SELECT id_pokemon,0.25,1,1,1,0.25,0.5,0.5,1,1,0.25,4,0.5,1,0.5,2,2,0.5,2 FROM pokemons WHERE name='Salandit' UNION ALL
SELECT id_pokemon,0.25,1,1,1,0.25,0.5,0.5,1,1,0.25,4,0.5,1,0.5,2,2,0.5,2 FROM pokemons WHERE name='Salazzle' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,2,1,2,0,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Stufful' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,2,1,2,0,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Bewear' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Bounsweet' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Steenee' UNION ALL
SELECT id_pokemon,2,1,1,0.5,1,1,2,2,1,0.5,0.5,2,1,2,1,1,1,0.5 FROM pokemons WHERE name='Tsareena' UNION ALL
SELECT id_pokemon,0.5,0.5,0,1,1,0.5,1,1,1,1,1,1,1,2,1,1,2,1 FROM pokemons WHERE name='Comfey' UNION ALL
SELECT id_pokemon,2,2,1,1,1,1,1,1,0,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Oranguru' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,1,1,2,1,1,1,1,1,1,2,0.5,1,1 FROM pokemons WHERE name='Passimian' UNION ALL
SELECT id_pokemon,1,1,1,2,1,0.5,1,2,1,1,0.5,0.5,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Wimpod' UNION ALL
SELECT id_pokemon,1,1,1,2,1,0.5,1,2,1,1,0.5,0.5,1,1,1,2,0.5,0.5 FROM pokemons WHERE name='Golisopod' UNION ALL
SELECT id_pokemon,0.5,2,1,0,1,0,1,1,2,2,1,2,0,0.25,1,0.5,1,2 FROM pokemons WHERE name='Sandygast' UNION ALL
SELECT id_pokemon,0.5,2,1,0,1,0,1,1,2,2,1,2,0,0.25,1,0.5,1,2 FROM pokemons WHERE name='Palossand' UNION ALL
SELECT id_pokemon,1,1,1,2,1,1,0.5,1,1,2,1,0.5,1,1,1,1,0.5,0.5 FROM pokemons WHERE name='Pyukumuku' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Type: Null' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Silvally' UNION ALL
SELECT id_pokemon,0.5,1,1,2,1,1,0.5,0.5,1,1,0,2,0.5,0.5,1,2,2,2 FROM pokemons WHERE name='Minior' UNION ALL
SELECT id_pokemon,1,1,1,1,1,2,1,1,0,1,1,1,1,1,1,1,1,1 FROM pokemons WHERE name='Komala' UNION ALL
SELECT id_pokemon,0.5,1,2,0.5,1,1,0.25,1,1,0.25,2,1,1,1,1,2,0.5,1 FROM pokemons WHERE name='Turtonator' UNION ALL
SELECT id_pokemon,0.5,1,0.5,0.5,0.5,2,2,0.25,1,0.5,4,0.5,0.5,0,0.5,0.5,0.25,1 FROM pokemons WHERE name='Togedemaru' UNION ALL
SELECT id_pokemon,0.25,1,0,1,1,0,1,1,2,1,1,1,0,1,1,1,2,1 FROM pokemons WHERE name='Mimikyu' UNION ALL
SELECT id_pokemon,2,2,1,2,1,0.5,0.5,1,2,2,1,0.5,1,1,0.5,1,0.5,0.5 FROM pokemons WHERE name='Bruxish' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,2,0.5,1,0,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Drampa' UNION ALL
SELECT id_pokemon,1,2,1,0.5,1,0,2,2,2,0.5,0.5,2,0,1,1,1,1,0.5 FROM pokemons WHERE name='Dhelmise' UNION ALL
SELECT id_pokemon,1,1,2,0.5,2,1,0.5,1,1,0.5,1,2,1,1,1,1,1,0.5 FROM pokemons WHERE name='Jangmo-o' UNION ALL
SELECT id_pokemon,0.5,0.5,2,0.5,4,1,0.5,2,1,0.5,1,2,1,1,2,0.5,1,0.5 FROM pokemons WHERE name='Hakamo-o' UNION ALL
SELECT id_pokemon,0.5,0.5,2,0.5,4,1,0.5,2,1,0.5,1,2,1,1,2,0.5,1,0.5 FROM pokemons WHERE name='Kommo-o' UNION ALL
SELECT id_pokemon,0.5,0.5,0,0.5,1,0.5,1,0.5,1,1,2,1,1,2,1,1,1,1 FROM pokemons WHERE name='Tapu Koko' UNION ALL
SELECT id_pokemon,1,1,0,1,1,0.25,1,1,2,1,1,1,1,2,0.5,1,2,1 FROM pokemons WHERE name='Tapu Lele' UNION ALL
SELECT id_pokemon,1,0.5,0,0.5,1,0.5,2,2,1,0.5,0.5,2,1,4,1,1,2,0.5 FROM pokemons WHERE name='Tapu Bulu' UNION ALL
SELECT id_pokemon,0.5,0.5,0,2,1,0.5,0.5,1,1,2,1,0.5,1,2,1,1,1,0.5 FROM pokemons WHERE name='Tapu Fini' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Cosmog' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Cosmoem' UNION ALL
SELECT id_pokemon,1,2,0.5,1,0.5,1,2,0.5,2,0.5,2,0.5,0.5,0,0.25,0.5,0.5,1 FROM pokemons WHERE name='Solgaleo' UNION ALL
SELECT id_pokemon,1,4,1,1,1,0,1,1,4,1,1,1,0,0.5,0.5,1,1,1 FROM pokemons WHERE name='Lunala' UNION ALL
SELECT id_pokemon,0.5,1,1,1,0.5,1,0.5,0.5,1,1,4,1,0.5,0.25,2,1,2,2 FROM pokemons WHERE name='Nihilego' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,0.5,2,4,1,0.5,0.5,1,1,1,2,1,1,1 FROM pokemons WHERE name='Buzzwole' UNION ALL
SELECT id_pokemon,0.5,0.5,1,1,2,0.5,2,4,1,0.5,0.5,1,1,1,2,1,1,1 FROM pokemons WHERE name='Pheromosa' UNION ALL
SELECT id_pokemon,1,1,1,0.5,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1 FROM pokemons WHERE name='Xurkitree' UNION ALL
SELECT id_pokemon,0.25,1,0.5,2,0.5,1,2,0.5,1,0.25,0,1,0.5,0,0.5,1,0.5,1 FROM pokemons WHERE name='Celesteela' UNION ALL
SELECT id_pokemon,1,1,0.5,0.5,0.5,2,4,1,1,0.25,1,1,0.5,0,0.5,0.5,0.5,0.5 FROM pokemons WHERE name='Kartana' UNION ALL
SELECT id_pokemon,2,0.5,2,0.5,4,2,0.5,1,0.5,0.5,1,2,1,1,0,1,1,0.5 FROM pokemons WHERE name='Guzzlord' UNION ALL
SELECT id_pokemon,2,2,1,1,1,0.5,1,1,2,1,1,1,1,1,0.5,1,1,1 FROM pokemons WHERE name='Necrozma' UNION ALL
SELECT id_pokemon,0.25,0.5,0,1,0.5,1,2,0.5,1,0.5,2,0.5,0.5,0,0.5,0.5,1,1 FROM pokemons WHERE name='Magearna' ;

INSERT INTO  cities ( name ) 
SELECT 'Pueblo Paleta';

INSERT INTO coaches ( id_city, name ,birth )
SELECT '1','Ash Ketchum', '2020-05-14'  FROM cities WHERE name = 'Pueblo Paleta';

INSERT INTO medal_per_coaches( id_coach,id_medal, winned_at)
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Roca' LIMIT 1  )  AS id_medal, '2020-01-12 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Cascada' LIMIT 1  )  AS id_medal, '2020-02-11 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Trueno' LIMIT 1  )  AS id_medal, '2020-03-10 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Arcoíris' LIMIT 1  )  AS id_medal, '2020-04-09 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Alma' LIMIT 1  )  AS id_medal, '2020-05-08 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Pantano' LIMIT 1  )  AS id_medal, '2020-06-07 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Volcán' LIMIT 1  )  AS id_medal, '2020-07-06 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Tierra' LIMIT 1  )  AS id_medal, '2020-08-05 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Céfiro' LIMIT 1  )  AS id_medal, '2020-09-04 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Colmena' LIMIT 1  )  AS id_medal, '2020-10-13 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Planicie' LIMIT 1  )  AS id_medal, '2020-11-02 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Niebla' LIMIT 1  )  AS id_medal, '2020-12-01 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Tormenta' LIMIT 1  )  AS id_medal, '2021-01-01 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Mineral' LIMIT 1  )  AS id_medal, '2021-03-02 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Glaciar' LIMIT 1  )  AS id_medal, '2021-05-03 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum' UNION ALL
SELECT id_coach, ( SELECT id_medal FROM medals WHERE name ='Dragón' LIMIT 1  )  AS id_medal, '2021-07-04 20:58:08' FROM coaches c WHERE c.name ='Ash Ketchum';

