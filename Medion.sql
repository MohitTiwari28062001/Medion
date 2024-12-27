create database Medion
use Medion

create table tbl_SignUp(
signUpID int primary key identity,
userName nvarchar(80),
pwd nvarchar(20),
email nvarchar(30),
city nvarchar(40),
gender varchar(20),
phoneNumber varchar(11)
);

select * from tbl_SignUp
delete from tbl_SignUp

alter table tbl_SignUP add userRole varchar(20) default 'user'

create table tbl_Medicines(
productID int primary key identity,
productTitle nvarchar(150),
productImg varchar(50),
categoryType varchar(30),
price decimal(10,2),
productDescription nvarchar(350)
);

insert into tbl_Medicines(productTitle, productImg,categoryType,price,productDescription)
values
('Tata 1mg Glucosamine HCL 1500 mg Tablet','Glucosamine.jpg','Tablets',100,'Tata 1mg Glucosamine HCL 1500 mg Tablets for Joint Health with Boswellia Serrata, Collagen Peptide, L-Arginine, and Curcuma Longa contains Glucosamine which is essential for building cartilage, a flexible connective tissue that provides padding at the ends of long bones, where they meet the joints.'),
('Saridon New Saridon Tablet | For Pain Relief','Saridon.jpg','Tablets',120,'New Saridon is a remedy for headaches trusted since 1934. Just one tablet of New Saridon is enough to provide relief from headaches. It is effective for different headaches spread across, on the sides and back of the head.'),
('Ecosprin 75 Tablet','Ecosprin.jpg','Tablets',110,'Ecosprin 75 Tablet works as a blood thinner and is used in small doses to reduce the risk of blood clots forming. It prevents platelets from sticking together thereby avoiding the formation of harmful blood clots.'),
('Rolimus 5 Tablet','Rolimus.jpg','Tablets',200,'Rolimus 5 Tablet is used with other medications to prevent organ transplant rejection. Rejection usually happens due to an attack by the immune system of the person receiving the transplanted organ on the transplant itself.'),
('Cabotres 20 Tablet','Cabotres.jpg','Tablets',500,'Liver cancer is the cancer that develops in the cells of the liver called hepatocytes. There may be no symptoms during the early stages of the cancer but as the disease advances to later stages, symptoms such as weight loss, stomach pain, vomiting, and yellowed skin may appear.'),
('Iron and Folic Acid Tablet to manage Iron Deficiency','IronAndFolic.jpg','Tablets',1000,'Tata 1mg Iron & Folic Acid Tablet aids in meeting the bodys iron and vitamin B9 needs. It supports red blood cell and platelet production, ensuring an adequate oxygen supply. This Iron and Folic acid tablet comprises ferrous ascorbate, facilitating the swift absorption of folic acid.'),
('Olumiant 4mg Tablet','Olumiant.jpg','Tablets',1200,'Olumiant 4mg Tablet works by blocking the action of some chemicals which cause inflammation. It can help reduce pain, stiffness, and swelling in your joints and slow down the progression of bone and joint damage.'),
('Tabi Tablet','Tabi.jpg','Tablets',150,'Prostate gland is a small walnut-sized gland that produces a fluid called seminal fluid that nourishes and transports sperms in males. The most common symptom of prostate cancer is difficulty with urination, but sometimes there are no symptoms at all.');

select * from tbl_Medicines

insert into tbl_Medicines(productTitle, productImg,categoryType,price,productDescription)
values
('Tata 1mg Calcium + Vitamin D3, Zinc, Magnesium and Alfalfa Tablet','Alfalfa.jpg','Vitamins & Supplements',299,'It is a dietary supplement formulated with calcium citrate, vitamin D3, vitamin K2, alfalfa, magnesium and zinc that fulfils nutritional needs and supports bone, joint and muscle care.'),
('Tata 1mg Hair, Skin & Nails Supreme Biotin Capsule','Biotin.jpg','Vitamins & Supplements',452,'Tata 1mg Hair, Skin & Nails Supreme Collagen, Biotin, Zinc, Iron and Vitamin B Capsule contains essential vitamins and minerals that help in maintaining healthy hair, skin, and nails. The capsules may help to strengthen the hair roots and manage hair fall.'),
('Revital H Men Multivitamin with Calcium, Zinc & Ginseng for Immunity','Revital.jpg','Vitamins & Supplements',480,'Revital H multivitamin supplement capsules for daily health are a balanced combination of natural ginseng, 10 vitamins and 9 minerals which can help fill in nutritional gaps and support general well-being for a healthy, active lifestyle.'),
('Neurobion Forte Tablet with Vitamin B12','Neurobion.jpg','Vitamins & Supplements',38,'Neurobion Forte Tablet contains an optimal combination of nerve-nourishing B vitamins like B1, B6, and B12 to provide relief from neuropathy symptoms, reduce nerve damage, and regenerate the nerves with proper diet and exercise.'),
('Tata 1mg Vitamin C + with Vitamin D3, Zinc and Amla Extract Chewable Tablet','Amla.jpg','Vitamins & Supplements',131,'Tata 1mg Vitamin C+Vitamin D3, Zinc and Amla Extract Chewable Tablet is a dietary supplement with vitamins and minerals that may help protect the cells and keeps them healthy. Vitamin C may help in wound healing and maintains healthy skin.'),
('Zingavita Biotin Tablet with Zinc, Vitamin C & E','Zingavita.jpg','Vitamins & Supplements',299,'Zingavita Biotin Tablet is a dietary supplement formulated with vitamins and minerals like biotin, vitamin C, vitamin E, and zinc that helps maintain hair health and make them strong. The consumption of this supplement can help make the hair strong and healthy.'),
('Tata 1mg Sports Multivitamin | With Zinc, Vitamin C, Vitamin D, Calcium','SportsMultivitamin.jpg','Vitamins & Supplements',495,'Tata 1mg Sports Multivitamin For Sports Tablet is packed with 13 vitamins, 13 minerals, 9 amino acids, and natural extracts such as boswellia, turmeric, and ginseng.'),
('Nutrabay Pro Liquid L-Carnitine + Vitamin B5 Mango Strawberry','Nutrabay.jpg','Vitamins & Supplements',849,'Nutrabay Pro Liquid L-Carnitine + Vitamin B5 is a supplement with L-carnitine that converts fatty acids into energy to assist fat oxidation and faster muscle recovery. It comes in two delicious flavours.');

insert into tbl_Medicines(productTitle, productImg,categoryType,price,productDescription)
values
('SBL Stobal Cough Syrup','Stobal.jpg','Antibiotics',171,'SBL Stobal Cough Syrup is effective in all types of cough (dry and wet), irritation in the throat, cough associated with bronchitis, laryngitis, tracheitis and in whooping cough.'),
('Vizylac Capsule | For Stomach Care | Restores Intestinal Flora & Intestinal Immunity','Vizylac.jpg','Antibiotics',81,'Vizylac Capsule / For Stomach Care / Restores Intestinal Flora & Intestinal Immunity is a probiotic formulated with lactic acid bacillus to help improve the microflora in the gut and improve digestion. An imbalance of gut flora can cause digestive problems, indigestion, flatulence, and other ailments.'),
('Wheezal Mixture Syrup','Wheezal.jpg','Antibiotics',254,'It is an excellent expectorant that is especially useful for spasmodic cough. It is excellent for people with weak coughs and chest congestion. Often helps in avoiding the usage of antibiotics. It also helps reduce spasmodic irritation of the chest.'),
('Sporlac DS Tablet | For Stomach Care','Sporlac.jpg','Antibiotics',136,'Porlac - DS Tablet / For Stomach Care is a probiotic formulated with lactic acid bacillus to help improve the microflora in the gut and improve digestion. An imbalance of gut flora can cause digestive problems, indigestion, flatulence, and other ailments'),
('Nutrolin B Plus (New) Capsule','Nutrolin.jpg','Antibiotics',53,'Nutrolin B Plus (New) Capsule contains lactobacillus, niacinamide, pyridoxine and folic acid. New Nutrolin plus capsule is a preparation that normalises gut organisms/flora. The excessive use of certain antibiotics may cause several side effects, one of the most common being diarrhoea.'),
('Urikind-KM Sachet','Urikind.jpg','Antibiotics',33,'Urikind-KM Sachet is a unique formulation of 3 ingredients which can help prevent and manage UTIs and maintain the pH level. The formulation helps fight against the symptoms of urinary tract infections, combat itching, prevent inflammation, and protect from bacteria'),
('Vibact Capsule','Vibact.jpg','Antibiotics',133,'It is a dietary supplement formulated with probiotics to support your immune and digestive health. Probiotics support healthy digestion, nutrient absorption, and immune function. Probiotics may help prevent the growth of harmful bacteria in the gut.'),
('Velgut Capsule','Velgut.jpg','Antibiotics',287,'Velgut capsules is fortified with Probiotic composite containing lactobacillus acidophilus, lactobacillus plantarum , lactobacillus casei , lactobacillus rhamnosus , bifidobacterium breve , bifidobacterium longum, bifidobacterium infantis, Streptococcus thermophilus , Saccharomyces boulardii, fructooligosaccharides.');



create table tbl_cart(
cartID int primary key identity,
productID numeric(18,2),
productName varchar(50),
productPrice numeric(18,0),
productDescription varchar(350),
categoryType varchar(50),
productImage varchar(50),
sessionID varchar(200),
quantity numeric(18,0)
);

select * from tbl_cart