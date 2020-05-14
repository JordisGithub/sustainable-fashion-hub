# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brand.destroy_all
Item.destroy_all

brands = Brand.create(
  [
 {
   name: "Reformation",
   description: "aufhadhfuadhfadhfadhfhdfo",
   sustainability_rating: 4,
   sustainability_rating_description: "Reformation has made a public commitment to reduce greenhouse gas emissions",
   planet_rating: 5,
   planet_rating_details: "Reformation's environment rating is 'great'. It uses a high proportion of eco-friendly materials including Tencel and recycled materials. It uses renewable energy in its supply chain to reduce its climate impact. It reuses all its offcuts to minimise textile waste. Its use of eco-friendly materials limits the amount of chemicals, water and wastewater used in production.",
   people_rating: 4,
   people_rating_details: "Its labour rating is 'good'. It has a Code of Conduct that covers all of the ILO Four Fundamental Freedoms principles. It has a project to improve wages in a part of its supply chain. It traces most of its supply chain including all of the final and second stages of production. It visits its suppliers regularly.",
   animals_rating: 2,
   animals_rating_details: "Its animal rating is 'not good enough'. It uses leather and exotic animal hair. It uses recycled wool. It does not use fur, down, exotic animal skin or angora."
 },
 {
   name: "Burberry",
   description: "Founded by Thomas Burberry in 1856, Burberry Group is a British luxury fashion house, distributing outerwear, fashion accessories, fragrances, sunglasses, and cosmetics. Its distinctive tartan pattern has become known worldwide. The brand now operates 3 sub-brands: Burberry Prorsum, Burberry London and Burberry Brit. The Burberry London collection consists of elegant and tailored collection featuring iconic garments",
   sustainability_rating: 3,
   sustainability_rating_description: "Burberry has good policies to monitor suppliers but it uses exotic animal products",
   planet_rating: 4,
   planet_rating_details: "Burberry's environment rating is 'good'. Its tanneries are audited by the Leather Working Group. It is a member of the Better Cotton Initiative. It uses few eco-friendly materials. It has set a Science-Based target to reduce greenhouse gases in its own operations by 95% by 2022 and reduce emissions in its supply chain by 30% by 2030. It has set a deadline to eliminate hazardous chemicals by 2020. It implements initiatives to reduce water use.",
   people_rating: 4,
   people_rating_details: "Its labour rating is 'good'. It monitors health and safety issues with an internal procedure. It sources its final stage of production from countries with extreme risk of labour abuse. It has a project to improve wages in its supply chain. It traces most of its supply chain including all of the final stage of production.",
   animals_rating: 2,
   animals_rating_details: "Its animal rating is 'not good enough'. It uses leather, exotic animal skin and exotic animal hair. It states that it sources wool from non-mulesed sheep. It uses down accredited by the Responsible Down Standard. It does not use fur or angora."
 },
 {
   name: "Stella McCarthy",
   description: "British designer Stella McCartney cut her teeth at Christian Lacroix, honed her skills on Savile Row, and refined her style as chief designer at Chloe before debuting her eponymous line in 2001. Known for tailored, feminine silhouettes, McCartney's easy aesthetic and cruelty-free clothing is a favorite with an international roster of trendsetters.",
  sustainability_rating: 4,
   sustainability_rating_description: "Stella McCartney has made a public commitment to reduce greenhouse gas emissions",
   planet_rating: 4,
   planet_rating_details: "Stella McCartney's environment rating is 'good'. It uses some eco-friendly materials including recycled polyester and organic cotton. It has a strategy in place to reduce waste across its entire supply chain. It measures and reports on its direct and indirect greenhouse gas emissions and it has set an approved science-based target to reduce its greenhouse gas emissions. It has set a deadline for the elimination of hazardous chemicals by 2020 and complies with a Restricted Substances List. It has a policy to minimise solvent-based chemicals. It has set water reduction targets and wastewater is treated and discharged properly. It is a member of the Sustainable Apparel Coalition.",
   people_rating: 3,
   people_rating_details: "Its labor rating is 'it's a start'. It is a member of the Ethical Trading Initiative - ETI and it has adopted the ETI Code of Conduct that includes a living wage definition. It traces suppliers in most of its supply chain. It publicly lists the countries of its suppliers but it does not share a complete list of suppliers. It audits some of its supply chain and it uses unannounced audits.",
   animals_rating: 4,
   animals_rating_details: "Its animal rating is 'good'. It does not use leather, down, fur, angora, shearling or exotic animal skins or hairs. It uses wool and cashmere."
 },
 {
   name: "Patbo",
   description: "The official store of Brazilian fashion designer Patricia Bonaldi. PatBO is a Brazilian fashion brand that captures the vibrant energy of South America through it’s artfully hand-embroidered Ready-To-Wear and Swim Collections.",
   sustainability_rating: 3,  
   sustainability_rating_description: "Women's designer clothing by Brazilian designer Patricia Bonaldi",
   planet_rating: 2,
   planet_rating_details: "PatBO's environment rating is 'not good enough'. It does not publish sufficient relevant information about its environmental policies to give a higher rating. As a shopper you have the right to know how its production practices impact on the environment.",
   people_rating: 3,
   people_rating_details: "Its labour rating is 'it's a start'. It has a mission to improve social conditions in Brazil. It traces some of its supply chain including all of the final stage of production. It is unclear whether it ensures payment of a living wage in its supply chain.",
   animals_rating: 4,
   animals_rating_details: "Its animal rating is 'good'. It does not use fur, leather, down, exotic animal skin, exotic animal hair or angora. It uses wool and silk"
 },
 {
   name: "Valentino",
   description: "Valentino Garavani is best known for designing elegant gowns and structured silhouettes popular with European and Hollywood royalty. In addition to the brand's mainline, in 1968 Valentino introduced the White collection, following it up with the V label, and then developed his own signature shade of red. Since Valentino's retirement in 2007, Maria Grazia Chiuro and Pier Paolo Piccioli now act as creative directors.",
   sustainability_rating: 2,
   sustainability_rating_description: "Valentino uses fur and exotic animal products",
   planet_rating: 2,
   planet_rating_details: "Its labour rating is 'not good enough'. There is no evidence it investigates and reports on safety incidents. It does not disclose where its final stage of production occurs. There is no evidence it ensures payment of a living wage in its supply chain. It traces some of its supply chain. It audits some of its supply chain but does not specify what percentage.",
   people_rating: 2,
   people_rating_details: "Its animal rating is 'not good enough'. It uses leather, wool, down, fur, exotic animal skin and exotic animal. It does not use angora.",
   animals_rating: 2,
   animals_rating_details: "Its animal rating is 'not good enough'. It uses leather, wool, down, fur, exotic animal skin and exotic animal. It does not use angora."
 }
]
)

p "#{Brand.count} brand(s) created"

items = Item.create(
  [
 {
   "product_name": "Long Sleeve Dress",
   "brand": "Burberry",
   "price": "690",
   "description": "Self: 95% cotton, 5% elastan\nTrim: 100% poly\nMade in Thailand\nMachine wash\nPartial button front closures\nSide slit pockets\nWaist tie detail\nButtoned sleeve tab detail\nOur Style No. BURF-WD8\nManufacturer Style No. 8024585",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD8_V1.jpg",
   "pic2": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD8_V2.jpg",
   "pic3": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD8_V3.jpg",
   "pic4": ""
 },
 {
   "product_name": "Stripe Shirt Dress",
   "brand": "Burberry",
   "price": "1,390",
   "description": "\nSelf & Trim: 100% cotton\nMade in Tunisia\nMachine wash\nUnlined\nButton front closures\nBreast pockets\nRubberized logo detail at pocket\nShirttail hem\nSleeve tie detail\nOur Style No. BURF-WD6\nManufacturer Style No. 4564552",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD6_V1.jpg",
   "pic2": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD6_V2.jpg",
   "pic3": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD6_V3.jpg",
   "pic4": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD6_V4.jpg"
 },
 {
   "product_name": "Crew Neck Skin Top",
   "brand": "Burberry",
   "price": "590",
   "description": "5% cotton, 25% poly\nMade in Portugal\nHand wash\nLightweight logo print woven fabric\nHidden back partial zip closure\nSemi sheer\nOur Style No. BURF-WS25\nManufacturer Style No. 8026472\nModel is wearing size S. View detailed measurements of this item.",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS25_V1.jpg",
   "pic2": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS25_V2.jpg",
   "pic3": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS25_V3.jpg",
   "pic4": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS25_V5.jpg"
 },
 {
   "product_name": "Penk Polo Top",
   "brand": "Burberry",
   "price": "490",
   "description": "Self: 100% extra fine merino wool\nRib & Trim: 95% extra fine merino wool 4% polyamide 1% elastan\nMade in China\nDry clean only\nLightweight knit fabric\nRib knit trim\nPartial button front closure\nSignature plaid trim\nContrast cuff detail\nOur Style No. BURF-WS16\nManufacturer Style No. 8024766",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS16_V1.jpg",
   "pic2": "",
   "pic3": "",
   "pic4": ""
 },
 {
   "product_name": "Knit Polo Top",
   "brand": "Burberry",
   "price": "580",
   "description": "Self: 100% merino wool\nRib: 95% merino wool 4% polyamide 1% elastan\nMade in China\nDry clean only\nPartial snap button front closures\nMid-weight knit fabric\nRib knit trim\nOur Style No. BURF-WS22\nManufacturer Style No. 8017141",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS22_V1.jpg",
   "pic2": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS22_V2.jpg",
   "pic3": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS22_V3.jpg",
   "pic4": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS22_V4.jpg"
 },
 {
   "product_name": "Amelie Tie Blouse",
   "brand": "Burberry",
   "price": "623",
   "description": "100% silk\nMade in China\nDry clean only\nSnap button front and cuff closures\nNeck tie detail\nBreast pockets\nSemi sheer\nOur Style No. BURF-WS20\nManufacturer Style No. 8024258",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS20_V1.jpg",
   "pic2": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS20_V2.jpg",
   "pic3": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS20_V3.jpg",
   "pic4": "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS20_V4.jpg"
 },
 {
   "product_name": "Dianna One Shoulder Mini Dress",
   "brand": "Stella McCarthy",
   "price": "2,900",
   "description": "Self: 52% viscose, 45% acetate, 3% elastan\nContrast Fabric: 100% polyamide\nLining: 100% silk\nTrim: 100% metal\nMade in Italy\nDry clean only\nFully lined\nHidden side zip closure\nGold-tone metal snakechain trim\nOur Style No. SMCC-WD155\nManufacturer Style No. 600148SNA28",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD155_V1.jpg",
   "pic2": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD155_V2.jpg",
   "pic3": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD155_V3.jpg",
   "pic4": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD155_V4.jpg"
 },
 {
   "product_name": "Knit Mini Dress",
   "brand": "Stella McCarthy",
   "price": "1,395",
   "description": "83% viscose, 17% poly\nMade in Italy\nDry clean only\nUnlined\nHidden side zip closure\nLightweight structured knit fabric\nOur Style No. SMCC-WD154\nManufacturer Style No. 600766S2076",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD154_V1.jpg",
   "pic2": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD154_V2.jpg",
   "pic3": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD154_V3.jpg",
   "pic4": ""
 },
 {
   "product_name": "Parkes Evening Deep V Dress",
   "brand": "Stella McCarthy",
   "price": "525",
   "description": "Self: 49% viscose, 48% acetate, 3% elastan\nContrast Fabric: 100% polyamide\nLining: 100% silk\nMade in Hungary\nDry clean only\nFully lined\nMesh knit detail on front\nHidden back zip closure\nSide slit pockets\nOur Style No. SMCC-WD145\nManufacturer Style No. 582795SNA28",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD145_V1.jpg",
   "pic2": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD145_V2.jpg",
   "pic3": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD145_V3.jpg",
   "pic4": ""
 },
 {
   "product_name": "One Shoulder Dress",
   "brand": "Stella McCarthy",
   "price": "551",
   "description": "Self & Lining: 100% silk\nMade in Hungary\nDry clean only\nFully lined\nHidden side zip closure\nBelted waist\nTiered ruffled detail\nOur Style No. SMCC-WD134\nManufacturer Style No. 559199SY206",
   "pic1": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD134_V1.jpg",
   "pic2": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD134_V2.jpg",
   "pic3": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD134_V3.jpg",
   "pic4": "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD134_V4.jpg"
 }
]
)

p "#{Item.count} brand(s) created"


