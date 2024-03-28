<?php
namespace App\DataFixtures;
use DateTime;
use App\Entity\Users;
use App\Entity\Produit;
use App\Entity\Commande;
use App\Entity\Rubrique;
use App\Entity\Livraison;
use App\Entity\Fournisseur;
use App\Entity\LigneCommande;
use App\Entity\LigneLivraison;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // RUBRIQUES
        $r1 = new Rubrique();
        $r1->setLibelle("Instruments à cordes");
        $r1->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/479.jpg");
        $r1->setSousRubrique(NULL);
        $manager->persist($r1);
        $r2 = new Rubrique();
        $r2->setLibelle("Instruments à vent");
        $r2->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/850.jpg");
        $r2->setSousRubrique(NULL);
        $manager->persist($r2);
        $r3 = new Rubrique();
        $r3->setLibelle("Instruments à percussion");
        $r3->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/518.jpg");
        $r3->setSousRubrique(NULL);
        $manager->persist($r3);
        $r4 = new Rubrique();
        $r4->setLibelle("Violon");
        $r4->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1209.jpg");
        $r4->setSousRubrique($r1);
        $manager->persist($r4);
        $r5 = new Rubrique();
        $r5->setLibelle("Guitare");
        $r5->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/218.jpg");
        $r5->setSousRubrique($r1);
        $manager->persist($r5);
        $r6 = new Rubrique();
        $r6->setLibelle("Basse");
        $r6->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/377.jpg");
        $r6->setSousRubrique($r1);
        $manager->persist($r6);
        $r7 = new Rubrique();
        $r7->setLibelle("Trompette");
        $r7->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/385.jpg");
        $r7->setSousRubrique($r2);
        $manager->persist($r7);
        $r8 = new Rubrique();
        $r8->setLibelle("Saxophone");
        $r8->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/74.jpg");
        $r8->setSousRubrique($r2);
        $manager->persist($r8);
        $r9 = new Rubrique();
        $r9->setLibelle("Batterie");
        $r9->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1033.jpg");
        $r9->setSousRubrique($r3);
        $manager->persist($r9);
        $r10 = new Rubrique();
        $r10->setLibelle("Xylophone");
        $r10->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/702.jpg");
        $r10->setSousRubrique($r3);
        $manager->persist($r10);
        // FOURNISSEUR
        $f1 = new Fournisseur();
        $f1->setNom("Corkery, Mueller and Goodwin");
        $f1->setContact("Kimberly Kuhn");
        $f1->setEmail("Kevin_Mante@gmail.com");
        $manager->persist($f1);
        $f2 = new Fournisseur();
        $f2->setNom("Abernathy, O'Hara and Sawayn");
        $f2->setContact("Edmund Homenick");
        $f2->setEmail("Darrel96@hotmail.com");
        $manager->persist($f2);
        $f3 = new Fournisseur();
        $f3->setNom("Marks, Kulas and Sanford");
        $f3->setContact("Cory Gislason");
        $f3->setEmail("Joann_Fritsch1@hotmail.com");
        $manager->persist($f3);
        $f4 = new Fournisseur();
        $f4->setNom("Lakin, Goldner and Kilback");
        $f4->setContact("Luther Haag");
        $f4->setEmail("Travis7@gmail.com");
        $manager->persist($f4);
        $f5 = new Fournisseur();
        $f5->setNom("Hyatt - McGlynn");
        $f5->setContact("Julian Rodriguez");
        $f5->setEmail("Alvin.Champlin77@hotmail.com");
        $manager->persist($f5);
        $f6 = new Fournisseur();
        $f6->setNom("Powlowski - Grant");
        $f6->setContact("Walter Koss");
        $f6->setEmail("Nora_Hartmann@gmail.com");
        $manager->persist($f6);
        $f7 = new Fournisseur();
        $f7->setNom("Nikolaus - Williamson");
        $f7->setContact("Nellie Rice");
        $f7->setEmail("Gabriel_Fadel@yahoo.com");
        $manager->persist($f7);
        $f8 = new Fournisseur();
        $f8->setNom("Hirthe Inc");
        $f8->setContact("Sheri Herzog");
        $f8->setEmail("Faith_Pouros@yahoo.com");
        $manager->persist($f8);
        $f9 = new Fournisseur();
        $f9->setNom("Spencer LLC");
        $f9->setContact("Suzanne Wisozk");
        $f9->setEmail("Courtney_Boehm11@yahoo.com");
        $manager->persist($f9);
        $f10 = new Fournisseur();
        $f10->setNom("Mraz, Padberg and McDermott");
        $f10->setContact("Daryl Hammes");
        $f10->setEmail("Leo_Boehm64@gmail.com");
        $manager->persist($f10);
        // PRODUITS
        $p1 = new Produit();
        $p1->setReference("54932090");
        $p1->setLibelle("Towels");
        $p1->setDescription("The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality");
        $p1->setPrixUnitaire("376");
        $p1->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/82.jpg");
        $p1->setStock(3);
        $p1->setTva(1.2);
        $p1->setActive(true);
        $p1->setFournisseur($f1);
        $p1->setRubrique($r4);
        $manager->persist($p1);
        $p2 = new Produit();
        $p2->setReference("70317226");
        $p2->setLibelle("Shoes");
        $p2->setDescription("New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart");
        $p2->setPrixUnitaire("537");
        $p2->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/943.jpg");
        $p2->setStock(2);
        $p2->setTva(1.055);
        $p2->setActive(true);
        $p2->setFournisseur($f2);
        $p2->setRubrique($r5);
        $manager->persist($p2);
        $p3 = new Produit();
        $p3->setReference("47855186");
        $p3->setLibelle("Sausages");
        $p3->setDescription("Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals ");
        $p3->setPrixUnitaire("684");
        $p3->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1198.jpg");
        $p3->setStock(5);
        $p3->setTva(1.2);
        $p3->setActive(true);
        $p3->setFournisseur($f3);
        $p3->setRubrique($r6);
        $manager->persist($p3);
        $p4 = new Produit();
        $p4->setReference("02184012");
        $p4->setLibelle("Bacon");
        $p4->setDescription("The Football Is Good For Training And Recreational Purposes");
        $p4->setPrixUnitaire("289");
        $p4->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/363.jpg");
        $p4->setStock(3);
        $p4->setTva(1.055);
        $p4->setActive(true);
        $p4->setFournisseur($f4);
        $p4->setRubrique($r7);
        $manager->persist($p4);
        $p5 = new Produit();
        $p5->setReference("65283797");
        $p5->setLibelle("Cheese");
        $p5->setDescription("The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J ");
        $p5->setPrixUnitaire("303");
        $p5->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/904.jpg");
        $p5->setStock(4);
        $p5->setTva(1.2);
        $p5->setActive(true);
        $p5->setFournisseur($f5);
        $p5->setRubrique($r8);
        $manager->persist($p5);
        $p6 = new Produit();
        $p6->setReference("76639387");
        $p6->setLibelle("Computer");
        $p6->setDescription("The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design ");
        $p6->setPrixUnitaire("807");
        $p6->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/606.jpg");
        $p6->setStock(4);
        $p6->setTva(1.2);
        $p6->setActive(true);
        $p6->setFournisseur($f6);
        $p6->setRubrique($r8);
        $manager->persist($p6);
        $p7 = new Produit();
        $p7->setReference("22781869");
        $p7->setLibelle("Chair");
        $p7->setDescription("The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality");
        $p7->setPrixUnitaire("224");
        $p7->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/730.jpg");
        $p7->setStock(4);
        $p7->setTva(1.055);
        $p7->setActive(true);
        $p7->setFournisseur($f7);
        $p7->setRubrique($r9);
        $manager->persist($p7);
        $p8 = new Produit();
        $p8->setReference("43473251");
        $p8->setLibelle("Shirt");
        $p8->setDescription("New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apart");
        $p8->setPrixUnitaire("922");
        $p8->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/439.jpg");
        $p8->setStock(1);
        $p8->setTva(1.055);
        $p8->setActive(true);
        $p8->setFournisseur($f8);
        $p8->setRubrique($r10);
        $manager->persist($p8);
        $p9 = new Produit();
        $p9->setReference("10643931");
        $p9->setLibelle("Ball");
        $p9->setDescription("The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality");
        $p9->setPrixUnitaire("86");
        $p9->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/836.jpg");
        $p9->setStock(3);
        $p9->setTva(1.2);
        $p9->setActive(true);
        $p9->setFournisseur($f9);
        $p9->setRubrique($r5);
        $manager->persist($p9);
        $p10 = new Produit();
        $p10->setReference("40477343");
        $p10->setLibelle("Fish");
        $p10->setDescription("The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality");
        $p10->setPrixUnitaire("537");
        $p10->setImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1113.jpg");
        $p10->setStock(1);
        $p10->setTva(1.055);
        $p10->setActive(true);
        $p10->setFournisseur($f10);
        $p10->setRubrique($r6);
        $manager->persist($p10);
        $p11 = new Produit();
        $p11->setReference("54932091");
        $p11->setLibelle("Fender Telecaster");
        $p11->setDescription("Une très belle guitare blanche");
        $p11->setPrixUnitaire("1500");
        $p11->setImage("chemin/de/mon/image/stratocaster.webp");
        $p11->setStock(200);
        $p11->setTva(1.2);
        $p11->setActive(true);
        $p11->setFournisseur($f5);
        $p11->setRubrique($r1);
        $manager->persist($p11);
        //Users
        $u1 = new Users();
        $u1->setReference(null);
        $u1->setEmail("Frank.Jones@greenvillage.com");
        $u1->setPassword("7Me5NRbrcLz7RWb");
        $u1->setRoles(["ROLE_CM"]);
        $u1->setTel(null);
        $u1->setCoefVente(null);
        $u1->setRue(null);
        $u1->setCp(null);
        $u1->setVille(null);
        $u1->isVerified(1);
        $manager->persist($u1);
        $u2 = new Users();
        $u2->setReference(null);
        $u2->setEmail("Orin_Marquardt@greenvillage.com");
        $u2->setPassword("rM2VexCg4Z01m4M");
        $u2->setRoles(["ROLE_CM"]);
        $u2->setTel(null);
        $u2->setCoefVente(null);
        $u2->setRue(null);
        $u2->setCp(null);
        $u2->setVille(null);
        $u2->isVerified(1);
        $manager->persist($u2);
        $u3 = new Users();
        $u3->setReference(null);
        $u3->setEmail("Peyton_Denesik@greenvillage.com");
        $u3->setPassword("FtLVGEbVw6MTalG");
        $u3->setRoles(["ROLE_CM"]);
        $u3->setTel(null);
        $u3->setCoefVente(null);
        $u3->setRue(null);
        $u3->setCp(null);
        $u3->setVille(null);
        $u3->isVerified(1);
        $manager->persist($u3);
        $u4 = new Users();
        $u4->setReference(null);
        $u4->setEmail("Suzanne_Ward79@greenvillage.com");
        $u4->setPassword("xV2yMNacPQrivzz");
        $u4->setRoles(["ROLE_CM"]);
        $u4->setTel(null);
        $u4->setCoefVente(null);
        $u4->setRue(null);
        $u4->setCp(null);
        $u4->setVille(null);
        $u4->isVerified(1);
        $manager->persist($u4);
        $u5 = new Users();
        $u5->setReference(null);
        $u5->setEmail("Jorge90@greenvillage.com");
        $u5->setPassword("JAqjCXKzc9NvKJm");
        $u5->setRoles(["ROLE_CM"]);
        $u5->setTel(null);
        $u5->setCoefVente(null);
        $u5->setRue(null);
        $u5->setCp(null);
        $u5->setVille(null);
        $u5->isVerified(1);
        $manager->persist($u5);
        $u6 = new Users();
        $u6->setReference(null);
        $u6->setEmail("Frank_Bartell73@greenvillage.com");
        $u6->setPassword("8HLeD4K0nssniqp");
        $u6->setRoles(["ROLE_CM"]);
        $u6->setTel(null);
        $u6->setCoefVente(null);
        $u6->setRue(null);
        $u6->setCp(null);
        $u6->setVille(null);
        $u6->isVerified(1);
        $manager->persist($u6);
        $u7 = new Users();
        $u7->setReference(null);
        $u7->setEmail("Casper.Beahan@greenvillage.com");
        $u7->setPassword("QeBZkDisyCqdqqs");
        $u7->setRoles(["ROLE_CM"]);
        $u7->setTel(null);
        $u7->setCoefVente(null);
        $u7->setRue(null);
        $u7->setCp(null);
        $u7->setVille(null);
        $u7->isVerified(1);
        $manager->persist($u7);
        $u8 = new Users();
        $u8->setReference(null);
        $u8->setEmail("Etha.Kuhn82@greenvillage.com");
        $u8->setPassword("C2zSS19u80y8F9v");
        $u8->setRoles(["ROLE_CM"]);
        $u8->setTel(null);
        $u8->setCoefVente(null);
        $u8->setRue(null);
        $u8->setCp(null);
        $u8->setVille(null);
        $u8->isVerified(1);
        $manager->persist($u8);
        $u9 = new Users();
        $u9->setReference(null);
        $u9->setEmail("Shaniya_Quigley@greenvillage.com");
        $u9->setPassword("9xIa2HRHy2wgFGA");
        $u9->setRoles(["ROLE_CM"]);
        $u9->setTel(null);
        $u9->setCoefVente(null);
        $u9->setRue(null);
        $u9->setCp(null);
        $u9->setVille(null);
        $u9->isVerified(1);
        $manager->persist($u9);
        $u10 = new Users();
        $u10->setReference(null);
        $u10->setEmail("Ruthe.Lang@greenvillage.com");
        $u10->setPassword("_SXr8uqD9CU29Sf");
        $u10->setRoles(["ROLE_CM"]);
        $u10->setTel(null);
        $u10->setCoefVente(null);
        $u10->setRue(null);
        $u10->setCp(null);
        $u10->setVille(null);
        $u10->isVerified(1);
        $manager->persist($u10);
        $u11 = new Users();
        $u11->setReference("20614417");
        $u11->setEmail("Gayle.Klein@gmail.com");
        $u11->setPassword("LA905RtXLINXNhn");
        $u11->setRoles(["ROLE_USER"]);
        $u11->setTel("+33489639251");
        $u11->setCoefVente("1.7");
        $u11->setRue("7783 Bartell Plaza");
        $u11->setCp("285201");
        $u11->setVille("Muellermouth");
        $u11->setCommercial($u9);
        $u11->isVerified(1);
        $manager->persist($u11);
        $u12 = new Users();
        $u12->setReference("39233178");
        $u12->setEmail("Antonia_Schowalter@gmail.com");
        $u12->setPassword("8CpLITiRR1ydIZs");
        $u12->setRoles(["ROLE_USER"]);
        $u12->setTel("+33975374362");
        $u12->setCoefVente("1.7");
        $u12->setRue("17572 Emery Circles");
        $u12->setCp("601300");
        $u12->setVille("North Odellland");
        $u12->setCommercial($u10);
        $u12->isVerified(1);
        $manager->persist($u12);
        $u13 = new Users();
        $u13->setReference("72831361");
        $u13->setEmail("Bryan.Schamberger@hotmail.com");
        $u13->setPassword("p3FiTdPQjVvDvW3");
        $u13->setRoles(["ROLE_USER"]);
        $u13->setTel("+33725914197");
        $u13->setCoefVente("1.7");
        $u13->setRue("57282 Predovic Stravenue");
        $u13->setCp("974257");
        $u13->setVille("Lake Elsaburgh");
        $u13->setCommercial($u10);
        $u13->isVerified(1);
        $manager->persist($u13);
        $u14 = new Users();
        $u14->setReference("17982237");
        $u14->setEmail("Lucille.Romaguera45@gmail.com");
        $u14->setPassword("pRqnC1sv2OPNePq");
        $u14->setRoles(["ROLE_PRO"]);
        $u14->setTel("+33168435690");
        $u14->setCoefVente("1.1");
        $u14->setRue("53793 Hahn Canyon");
        $u14->setCp("738035");
        $u14->setVille("Denton");
        $u14->setCommercial($u1);
        $u14->isVerified(1);
        $manager->persist($u14);
        $u15 = new Users();
        $u15->setReference("18251883");
        $u15->setEmail("Enrique19@hotmail.com");
        $u15->setPassword("gZxbAqNUf964RwG");
        $u15->setRoles(["ROLE_PRO"]);
        $u15->setTel("+33327969376");
        $u15->setCoefVente("1.1");
        $u15->setRue("158 Herman Radial");
        $u15->setCp("848283");
        $u15->setVille("Goldenton");
        $u15->setCommercial($u2);
        $u15->isVerified(1);
        $manager->persist($u15);
        $u16 = new Users();
        $u16->setReference("61804243");
        $u16->setEmail("Daniel42@yahoo.com");
        $u16->setPassword("LtAmp52_hP3oNo0");
        $u16->setRoles(["ROLE_PRO"]);
        $u16->setTel("+33837447734");
        $u16->setCoefVente("1.2");
        $u16->setRue("866 Kessler Forks");
        $u16->setCp("338195");
        $u16->setVille("Moenstad");
        $u16->setCommercial($u3);
        $u16->isVerified(1);
        $manager->persist($u16);
        $u17 = new Users();
        $u17->setReference("37248993");
        $u17->setEmail("Karla13@yahoo.com");
        $u17->setPassword("NMyVtFKSGwZyuhD");
        $u17->setRoles(["ROLE_PRO"]);
        $u17->setTel("+33129515785");
        $u17->setCoefVente("1.3");
        $u17->setRue("79950 Veda Light");
        $u17->setCp("732134");
        $u17->setVille("Port Warren");
        $u17->setCommercial($u4);
        $u17->isVerified(1);
        $manager->persist($u17);
        $u18 = new Users();
        $u18->setReference("90206310");
        $u18->setEmail("Ora_Quigley34@gmail.com");
        $u18->setPassword("uTif5Z1uQeAUhkV");
        $u18->setRoles(["ROLE_PRO"]);
        $u18->setTel("+33057656275");
        $u18->setCoefVente("1.3");
        $u18->setRue("96627 Jacobson Trafficway");
        $u18->setCp("007805");
        $u18->setVille("Josefort");
        $u18->setCommercial($u5);
        $u18->isVerified(1);
        $manager->persist($u18);
        $u19 = new Users();
        $u19->setReference("00004567");
        $u19->setEmail("Leona_Wilkinson@hotmail.com");
        $u19->setPassword("w4SrDeoBJ1QraVV");
        $u19->setRoles(["ROLE_PRO"]);
        $u19->setTel("+33468101315");
        $u19->setCoefVente("1.2");
        $u19->setRue("31650 Luisa Vista");
        $u19->setCp("068150");
        $u19->setVille("Berylborough");
        $u19->setCommercial($u6);
        $u19->isVerified(1);
        $manager->persist($u19);
        $u20 = new Users();
        $u20->setReference("89097093");
        $u20->setEmail("Cedric_Paucek@gmail.com");
        $u20->setPassword("GgzGsW4fVUXaI0b");
        $u20->setRoles(["ROLE_USER"]);
        $u20->setTel("+33560568282");
        $u20->setCoefVente("1.7");
        $u20->setRue("756 Madisen Underpass");
        $u20->setCp("100515");
        $u20->setVille("Warrentown");
        $u20->setCommercial($u10);
        $u20->isVerified(1);
        $manager->persist($u20);
        // COMMANDE
        $c1 = new Commande();
        $c1->setReference("38884441");
        $c1->setReduction(4.66);
        $c1->setDateCommande(new DateTime("2024-02-26T10:27:12+01:00"));
        $c1->setModePaiement(1);
        $c1->setReferenceFacture("98285197");
        $c1->setDelaiPaiement(new DateTime("2027-02-24T00:00:00+01:00"));
        $c1->setStatus(3);
        $c1->setFacturationRue("90773 Nickolas Brooks");
        $c1->setFacturationCp("776643");
        $c1->setFacturationVille("Catharinefort");
        $c1->setLivraisonRue("13844 Schumm Wells");
        $c1->setLivraisonCp("252934");
        $c1->setLivraisonVille("Parisiancester");
        $c1->setClient($u1);
        $c2 = new Commande();
        $c2->setReference("35546667");
        $c2->setReduction(15.39);
        $c2->setDateCommande(new DateTime("2024-02-26T10:28:12+01:00"));
        $c2->setModePaiement(2);
        $c2->setReferenceFacture("82929776");
        $c2->setDelaiPaiement(new DateTime("2001-03-24T00:00:00+01:00"));
        $c2->setStatus(1);
        $c2->setFacturationRue("8069 Walter Orchard");
        $c2->setFacturationCp("478159");
        $c2->setFacturationVille("Gulgowskiworth");
        $c2->setLivraisonRue("952 Dante Road");
        $c2->setLivraisonCp("260134");
        $c2->setLivraisonVille("Idellfield");
        $c2->setClient($u2);
        $c3 = new Commande();
        $c3->setReference("39210192");
        $c3->setReduction(18.39);
        $c3->setDateCommande(new DateTime("2024-02-26T10:29:12+01:00"));
        $c3->setModePaiement(1);
        $c3->setReferenceFacture("28916340");
        $c3->setDelaiPaiement(new DateTime("2006-03-24T00:00:00+01:00"));
        $c3->setStatus(3);
        $c3->setFacturationRue("16288 Konopelski Gardens");
        $c3->setFacturationCp("542720");
        $c3->setFacturationVille("Fort Peyton");
        $c3->setLivraisonRue("48822 Koelpin Ford");
        $c3->setLivraisonCp("294792");
        $c3->setLivraisonVille("Lake Una");
        $c3->setClient($u3);
        $c4 = new Commande();
        $c4->setReference("83935958");
        $c4->setReduction(6.61);
        $c4->setDateCommande(new DateTime("2024-02-26T10:30:12+01:00"));
        $c4->setModePaiement(3);
        $c4->setReferenceFacture("53079468");
        $c4->setDelaiPaiement(new DateTime("2006-03-24T00:00:00+01:00"));
        $c4->setStatus(2);
        $c4->setFacturationRue("584 Godfrey Way");
        $c4->setFacturationCp("107824");
        $c4->setFacturationVille("Colintown");
        $c4->setLivraisonRue("225 Gabriel Union");
        $c4->setLivraisonCp("959327");
        $c4->setLivraisonVille("North Cassandrecester");
        $c4->setClient($u4);
        $c5 = new Commande();
        $c5->setReference("89557911");
        $c5->setReduction(23.54);
        $c5->setDateCommande(new DateTime("2024-02-26T10:31:12+01:00"));
        $c5->setModePaiement(1);
        $c5->setReferenceFacture("92638498");
        $c5->setDelaiPaiement(new DateTime("2007-03-24T00:00:00+01:00"));
        $c5->setStatus(3);
        $c5->setFacturationRue("638 Caitlyn Keys");
        $c5->setFacturationCp("470651");
        $c5->setFacturationVille("Lake Shyannecester");
        $c5->setLivraisonRue("243 Hauck Streets");
        $c5->setLivraisonCp("527768");
        $c5->setLivraisonVille("Richland");
        $c5->setClient($u5);
        $c6 = new Commande();
        $c6->setReference("46109176");
        $c6->setReduction(20.28);
        $c6->setDateCommande(new DateTime("2024-02-26T10:32:12+01:00"));
        $c6->setModePaiement(2);
        $c6->setReferenceFacture("58337644");
        $c6->setDelaiPaiement(new DateTime("2009-03-24T00:00:00+01:00"));
        $c6->setStatus(1);
        $c6->setFacturationRue("28802 Kuhn Brook");
        $c6->setFacturationCp("531155");
        $c6->setFacturationVille("East Queeniestad");
        $c6->setLivraisonRue("52118 Maudie Ports");
        $c6->setLivraisonCp("897057");
        $c6->setLivraisonVille("South Bell");
        $c6->setClient($u6);
        $c7 = new Commande();
        $c7->setReference("70232488");
        $c7->setReduction(21.8);
        $c7->setDateCommande(new DateTime("2024-02-26T10:33:12+01:00"));
        $c7->setModePaiement(2);
        $c7->setReferenceFacture("33495514");
        $c7->setDelaiPaiement(new DateTime("2004-03-24T00:00:00+01:00"));
        $c7->setStatus(3);
        $c7->setFacturationRue("8565 Hickle Place");
        $c7->setFacturationCp("534457");
        $c7->setFacturationVille("McGlynntown");
        $c7->setLivraisonRue("65451 Judge Pines");
        $c7->setLivraisonCp("398263");
        $c7->setLivraisonVille("Fort Carlotta");
        $c7->setClient($u7);
        $c8 = new Commande();
        $c8->setReference("65962662");
        $c8->setReduction(13.79);
        $c8->setDateCommande(new DateTime("2024-02-26T10:34:12+01:00"));
        $c8->setModePaiement(3);
        $c8->setReferenceFacture("32210703");
        $c8->setDelaiPaiement(new DateTime("2009-03-24T00:00:00+01:00"));
        $c8->setStatus(2);
        $c8->setFacturationRue("844 Isaac Expressway");
        $c8->setFacturationCp("871414");
        $c8->setFacturationVille("Miami");
        $c8->setLivraisonRue("798 Cremin Springs");
        $c8->setLivraisonCp("676636");
        $c8->setLivraisonVille("Klingville");
        $c8->setClient($u8);
        $c9 = new Commande();
        $c9->setReference("17721091");
        $c9->setReduction(13.42);
        $c9->setDateCommande(new DateTime("2024-02-26T10:35:12+01:00"));
        $c9->setModePaiement(2);
        $c9->setReferenceFacture("73510379");
        $c9->setDelaiPaiement(new DateTime("2003-03-24T00:00:00+01:00"));
        $c9->setStatus(2);
        $c9->setFacturationRue("3499 Gideon Meadows");
        $c9->setFacturationCp("302394");
        $c9->setFacturationVille("Port Rodolfoworth");
        $c9->setLivraisonRue("9916 Rolfson Avenue");
        $c9->setLivraisonCp("808369");
        $c9->setLivraisonVille("Fort Zakaryburgh");
        $c9->setClient($u9);
        $c10 = new Commande();
        $c10->setReference("23248992");
        $c10->setReduction(1.38);
        $c10->setDateCommande(new DateTime("2024-02-26T10:36:12+01:00"));
        $c10->setModePaiement(2);
        $c10->setReferenceFacture("18107398");
        $c10->setDelaiPaiement(new DateTime("2007-03-24T00:00:00+01:00"));
        $c10->setStatus(3);
        $c10->setFacturationRue("1917 Toy Center");
        $c10->setFacturationCp("474483");
        $c10->setFacturationVille("North Normaworth");
        $c10->setLivraisonRue("4947 Nickolas Cove");
        $c10->setLivraisonCp("170625");
        $c10->setLivraisonVille("South Amelie");
        $c10->setClient($u10);
        //LIVRAISON
        $l1 = new Livraison();
        $l1->setReference("68440189");
        $l1->setDateLivraison(new DateTime("2023-03-06 09:00:17"));
        $l2 = new Livraison();
        $l2->setReference("85364867");
        $l2->setDateLivraison(new DateTime("2024-01-29 09:10:32"));
        $l3 = new Livraison();
        $l3->setReference("79350388");
        $l3->setDateLivraison(new DateTime("2024-02-28 09:01:12"));
        $l4 = new Livraison();
        $l4->setReference("57066482");
        $l4->setDateLivraison(new DateTime("2024-03-03 09:02:54"));
        $l5 = new Livraison();
        $l5->setReference("92013409");
        $l5->setDateLivraison(new DateTime("2024-04-27 09:03:37"));
        $l6 = new Livraison();
        $l6->setReference("20674068");
        $l6->setDateLivraison(new DateTime("2024-05-05 09:04:00"));
        $l7 = new Livraison();
        $l7->setReference("24300607");
        $l7->setDateLivraison(new DateTime("2024-07-04 09:05:17"));
        $l8 = new Livraison();
        $l8->setReference("67559856");
        $l8->setDateLivraison(new DateTime("2024-09-10 09:06:43"));
        $l9 = new Livraison();
        $l9->setReference("36949872");
        $l9->setDateLivraison(new DateTime("2024-10-06 09:07:34"));
        $l10 = new Livraison();
        $l10->setReference("28278189");
        $l10->setDateLivraison(new DateTime("2024-12-03 09:08:32"));
        //LigneCommande
        $lc1 = new LigneCommande();
        $lc1->setProduit($p1);
        $lc1->setCommande($c1);
        $lc1->setQuantite("3");
        $c1->addLigneCommande($lc1);
        $manager->persist($c1);
        $manager->persist($lc1);
        $lc2 = new LigneCommande();
        $lc2->setProduit($p2);
        $lc2->setCommande($c2);
        $lc2->setQuantite("3");
        $c2->addLigneCommande($lc2);
        $manager->persist($c2);
        $manager->persist($lc2);
        $lc3 = new LigneCommande();
        $lc3->setProduit($p3);
        $lc3->setCommande($c3);
        $lc3->setQuantite("8");
        $c3->addLigneCommande($lc3);
        $manager->persist($c3);
        $manager->persist($lc3);
        $lc4 = new LigneCommande();
        $lc4->setProduit($p4);
        $lc4->setCommande($c4);
        $lc4->setQuantite("5");
        $c4->addLigneCommande($lc4);
        $manager->persist($c4);
        $manager->persist($lc4);
        $lc5 = new LigneCommande();
        $lc5->setProduit($p5);
        $lc5->setCommande($c5);
        $lc5->setQuantite("2");
        $c5->addLigneCommande($lc5);
        $manager->persist($c5);
        $manager->persist($lc5);
        $lc6 = new LigneCommande();
        $lc6->setProduit($p6);
        $lc6->setCommande($c6);
        $lc6->setQuantite("5");
        $c6->addLigneCommande($lc6);
        $manager->persist($c6);
        $manager->persist($lc6);
        $lc7 = new LigneCommande();
        $lc7->setProduit($p7);
        $lc7->setCommande($c7);
        $lc7->setQuantite("10");
        $c7->addLigneCommande($lc7);
        $manager->persist($c7);
        $manager->persist($lc7);
        $lc8 = new LigneCommande();
        $lc8->setProduit($p8);
        $lc8->setCommande($c8);
        $lc8->setQuantite("1");
        $c8->addLigneCommande($lc8);
        $manager->persist($c8);
        $manager->persist($lc8);
        $lc9 = new LigneCommande();
        $lc9->setProduit($p9);
        $lc9->setCommande($c9);
        $lc9->setQuantite("1");
        $c9->addLigneCommande($lc9);
        $manager->persist($c9);
        $manager->persist($lc9);
        $lc10 = new LigneCommande();
        $lc10->setProduit($p10);
        $lc10->setCommande($c10);
        $lc10->setQuantite("2");
        $c10->addLigneCommande($lc10);
        $manager->persist($c10);
        $manager->persist($lc10);
        //LigneLivraison
        $ll1 = new LigneLivraison();
        $ll1->setProduit($p1);
        $ll1->setLivraison($l2);
        $ll1->setQttLivree("18");
        $l1->addLigneLivraison($ll1);
        $manager->persist($l1);
        $manager->persist($ll1);
        $ll2 = new LigneLivraison();
        $ll2->setProduit($p2);
        $ll2->setLivraison($l8);
        $ll2->setQttLivree("25");
        $l2->addLigneLivraison($ll2);
        $manager->persist($l2);
        $manager->persist($ll2);
        $ll3 = new LigneLivraison();
        $ll3->setProduit($p3);
        $ll3->setLivraison($l7);
        $ll3->setQttLivree("7");
        $l3->addLigneLivraison($ll3);
        $manager->persist($l3);
        $manager->persist($ll3);
        $ll4 = new LigneLivraison();
        $ll4->setProduit($p4);
        $ll4->setLivraison($l3);
        $ll4->setQttLivree("22");
        $l4->addLigneLivraison($ll4);
        $manager->persist($l4);
        $manager->persist($ll4);
        $ll5 = new LigneLivraison();
        $ll5->setProduit($p5);
        $ll5->setLivraison($l3);
        $ll5->setQttLivree("5");
        $l5->addLigneLivraison($ll5);
        $manager->persist($l5);
        $manager->persist($ll5);
        $ll6 = new LigneLivraison();
        $ll6->setProduit($p6);
        $ll6->setLivraison($l10);
        $ll6->setQttLivree("14");
        $l6->addLigneLivraison($ll6);
        $manager->persist($l6);
        $manager->persist($ll6);
        $ll7 = new LigneLivraison();
        $ll7->setProduit($p7);
        $ll7->setLivraison($l3);
        $ll7->setQttLivree("19");
        $l7->addLigneLivraison($ll7);
        $manager->persist($l7);
        $manager->persist($ll7);
        $ll8 = new LigneLivraison();
        $ll8->setProduit($p8);
        $ll8->setLivraison($l8);
        $ll8->setQttLivree("10");
        $l8->addLigneLivraison($ll8);
        $manager->persist($l8);
        $manager->persist($ll8);
        $ll9 = new LigneLivraison();
        $ll9->setProduit($p9);
        $ll9->setLivraison($l6);
        $ll9->setQttLivree("25");
        $l9->addLigneLivraison($ll9);
        $manager->persist($l9);
        $manager->persist($ll9);
        $ll10 = new LigneLivraison();
        $ll10->setProduit($p10);
        $ll10->setLivraison($l2);
        $ll10->setQttLivree("23");
        $l10->addLigneLivraison($ll10);
        $manager->persist($l10);
        $manager->persist($ll10);
        //FLUSH
        $manager->flush();
    }
}
