User.destroy_all
Item.destroy_all
Brand.destroy_all

User.create(username: "AdminBurberry", brand: "Burberry", name: "Jordi", email: "Jordi@email.com", phone: "347-679-1439", password: "123456")
p "#{User.count} user(s) created"


# @reformation = Brand.create(
#  {
#    name: "Reformation",
#    description: "aufhadhfuadhfadhfadhfhdfo",
#    sustainability_rating: 4,
#    sustainability_rating_description: "Reformation has made a public commitment to reduce greenhouse gas emissions",
#    planet_rating: 5,
#    planet_rating_details: "Reformation's environment rating is 'great'. It uses a high proportion of eco-friendly materials including Tencel and recycled materials. It uses renewable energy in its supply chain to reduce its climate impact. It reuses all its offcuts to minimise textile waste. Its use of eco-friendly materials limits the amount of chemicals, water and wastewater used in production.",
#    people_rating: 4,
#    people_rating_details: "Its labour rating is 'good'. It has a Code of Conduct that covers all of the ILO Four Fundamental Freedoms principles. It has a project to improve wages in a part of its supply chain. It traces most of its supply chain including all of the final and second stages of production. It visits its suppliers regularly.",
#    animals_rating: 2,
#    animals_rating_details: "Its animal rating is 'not good enough'. It uses leather and exotic animal hair. It uses recycled wool. It does not use fur, down, exotic animal skin or angora."
#  }
# )

@burberry = Brand.create(
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
 })

 @stellaMccarthy = Brand.create(
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
 })

 @patbo = Brand.create(
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
 })

 @valentino = Brand.create(
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
 })

 @commesDesGarconsPlay = Brand.create(
  {
    name: "Comme des Garçons Play",
    description: "One of the many diffusion brands of the Comme des Garçons empire, CDG Play is characterized by the iconic heart logo designed by Filip Pagowski. The often avant-garde and always influential label was created by Kawakubo in Tokyo in 1969 before heading to Paris in 1981 where it garnered both acclaim and controversy with a debut collection of distressed and deconstructed pieces. The modern Comme des Garçons brand, which encompasses an entire family of sub-brands in fashion and fragrance, is worn by men and women who like to take an esoteric style stance.",
    sustainability_rating: 1,
    sustainability_rating_description: "Comme des Garçons does not communicate sufficient information about its environmental and labour policies.",
    planet_rating: 1,
    planet_rating_details: "This brand provides insufficient relevant information about how it reduces its impact on people, the planet and/or animals. You have a right to know how the products you buy affect the issues you care about.",
    people_rating: 1,
    people_rating_details: "This brand provides insufficient relevant information about how it reduces its impact on people, the planet and/or animals. You have a right to know how the products you buy affect the issues you care about.",
    animals_rating: 1,
    animals_rating_details: "This brand provides insufficient relevant information about how it reduces its impact on people, the planet and/or animals. You have a right to know how the products you buy affect the issues you care about."
  })

  @versace = Brand.create(
  {
    name: "Versace",
    description: "Since 1978, Gianni Versaces iconic Italian label has been celebrated for its over-the-top glamour and sexiness. After Gianni's tragic death in 1997, his sister Donatella took the creative reins, and while remaining consistent with Gianni's design aesthetic, Donatella has brought a bold femininity and subtle polish to the beloved design house.",
    sustainability_rating: 2,
    sustainability_rating_description: "Versace is not taking adequate steps to manage its greenhouse gas emissions.",
    planet_rating: 2,
    planet_rating_details: "Versace's environment rating is 'not good enough'. It uses few eco-friendly materials. There is no evidence it reduces its carbon and other greenhouse gas emissions. There is no evidence it minimises textile waste. There is no evidence it implements water reduction initiatives.",
    people_rating: 2,
    people_rating_details: "Its labour rating is 'not good enough'. There is no evidence it investigates and reports on safety incidents. There is no evidence it has worker empowerment initiatives such as collective bargaining or rights to make a complaint. It has a Code of Conduct but it does not include any of the ILO Four Fundamental Freedoms labour standards. There is no evidence it ensures payment of a living wage in its supply chain. It traces some of its supply chain.",
    animals_rating: 2,
    animals_rating_details: "Its animal rating is 'not good enough'. It uses leather, wool, down and exotic animal hair. It does not use fur, exotic animal skin or angora."
  })



p "#{Brand.count} brand(s) created"

# ===========================================================
# ====================Burberry===============================
# ===========================================================

@longSleeveDress = Item.create(
 {
   product_name: "Long Sleeve Dress",
   brand: @burberry,
   price: "690",
   description: "Self: 95% cotton, 5% elastan\nTrim: 100% poly\nMade in Thailand\nMachine wash\nPartial button front closures\nSide slit pockets\nWaist tie detail\nButtoned sleeve tab detail\nOur Style No. BURF-WD8\nManufacturer Style No. 8024585",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD8_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD8_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD8_V3.jpg",
   pic4: ""
},

)

@stripe_Shirt_dress = Item.create({
 
   product_name: "Stripe Shirt Dress",
   brand: @burberry,
   price: "1,390",
   description: "\nSelf & Trim: 100% cotton\nMade in Tunisia\nMachine wash\nUnlined\nButton front closures\nBreast pockets\nRubberized logo detail at pocket\nShirttail hem\nSleeve tie detail\nOur Style No. BURF-WD6\nManufacturer Style No. 4564552",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD6_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD6_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD6_V3.jpg",
   pic4: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WD6_V4.jpg"
 
}
)
 
@crew_neck_skin_top = Item.create({
   product_name: "Crew Neck Skin Top",
   brand: @burberry,
   price: "590",
   description: "5% cotton, 25% poly\nMade in Portugal\nHand wash\nLightweight logo print woven fabric\nHidden back partial zip closure\nSemi sheer\nOur Style No. BURF-WS25\nManufacturer Style No. 8026472\nModel is wearing size S. View detailed measurements of this item.",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS25_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS25_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS25_V3.jpg",
   pic4: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS25_V5.jpg"
 }),
 
 @penk_polo_top = Item.create({
   product_name: "Penk Polo Top",
   brand: @burberry,
   price: "490",
   description: "Self: 100% extra fine merino wool\nRib & Trim: 95% extra fine merino wool 4% polyamide 1% elastan\nMade in China\nDry clean only\nLightweight knit fabric\nRib knit trim\nPartial button front closure\nSignature plaid trim\nContrast cuff detail\nOur Style No. BURF-WS16\nManufacturer Style No. 8024766",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS16_V1.jpg",
   pic2: "",
   pic3: "",
   pic4: ""
 }),

 @amelie_tie_blouse = Item.create(
 {
   product_name: "Amelie Tie Blouse",
   brand: @burberry,
   price: "623",
   description: "100% silk\nMade in China\nDry clean only\nSnap button front and cuff closures\nNeck tie detail\nBreast pockets\nSemi sheer\nOur Style No. BURF-WS20\nManufacturer Style No. 8024258",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS20_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS20_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS20_V3.jpg",
   pic4: "https://is4.fwrdassets.com/images/p/fw/z/BURF-WS20_V4.jpg"
 }),

#  ===========================================================
# ====================Stella McCarthy===============================
# ===========================================================

 @dianna_one_shoulder_mini_dress = Item.create({
   product_name: "Dianna One Shoulder Mini Dress",
   brand: @stellaMccarthy,
   price: "2,900",
   description: "Self: 52% viscose, 45% acetate, 3% elastan\nContrast Fabric: 100% polyamide\nLining: 100% silk\nTrim: 100% metal\nMade in Italy\nDry clean only\nFully lined\nHidden side zip closure\nGold-tone metal snakechain trim\nOur Style No. SMCC-WD155\nManufacturer Style No. 600148SNA28",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD155_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD155_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD155_V3.jpg",
   pic4: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD155_V4.jpg"
 }),

 @knit_mini_dress = Item.create({
   product_name: "Knit Mini Dress",
   brand: @stellaMccarthy,
   price: "1,395",
   description: "83% viscose, 17% poly\nMade in Italy\nDry clean only\nUnlined\nHidden side zip closure\nLightweight structured knit fabric\nOur Style No. SMCC-WD154\nManufacturer Style No. 600766S2076",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD154_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD154_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD154_V3.jpg",
   pic4: ""
 }),
 @parkes_evening_deep_v_dress = Item.create({
   product_name: "Parkes Evening Deep V Dress",
   brand: @stellaMccarthy,
   price: "525",
   description: "Self: 49% viscose, 48% acetate, 3% elastan\nContrast Fabric: 100% polyamide\nLining: 100% silk\nMade in Hungary\nDry clean only\nFully lined\nMesh knit detail on front\nHidden back zip closure\nSide slit pockets\nOur Style No. SMCC-WD145\nManufacturer Style No. 582795SNA28",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD145_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD145_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD145_V3.jpg",
   pic4: ""
 }),
@one_shoulder_dress = Item.create({
   product_name: "One Shoulder Dress",
   brand: @stellaMccarthy,
   price: "551",
   description: "Self & Lining: 100% silk\nMade in Hungary\nDry clean only\nFully lined\nHidden side zip closure\nBelted waist\nTiered ruffled detail\nOur Style No. SMCC-WD134\nManufacturer Style No. 559199SY206",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD134_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD134_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD134_V3.jpg",
   pic4: "https://is4.fwrdassets.com/images/p/fw/z/SMCC-WD134_V4.jpg"
 })

#  ===========================================================
# ====================Versace===============================
# ===========================================================

@mini_ruched_sleeve_palm_dress = Item.create({
   product_name: "Mini Ruched Sleeve Palm Dress",
   brand: @versace,
   price: "1,375",
   description: "100% viscose
   Made in Italy
   Dry clean only
   Unlined
   Padded shoulders
   Jersey fabric
   Stretch fit
   ",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-WD52_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-WD52_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-WD52_V3.jpg",
   pic4: ""
 })

 @long_sleeve_blazer_dress = Item.create({
   product_name: "Long Sleeve Blazer Dress",
   brand: @versace,
   price: "2,475",
   description: "Self: 70% acetate, 30% viscose
   Lining 1: 100% viscose
   Lining 2: 51% viscose 49% cupro
   Made in Italy
   Dry clean only
   Fully lined
   Front zip closure
   Padded shoulders
   Side welt pockets
   Gold-tone button accents with engraved logo detail
   ",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-WD48_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-WD48_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-WD48_V3.jpg",
   pic4: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-WD48_V4.jpg"
 })


 @long_sleeve_print_shirt = Item.create({
   product_name: "Long Sleeve Print Shirt",
   brand: @versace,
   price: "1,275",
   description: "100% silk
   Made in Italy
   Hand wash
   Button front closures
   ",
   pic1: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-MS99W_V1.jpg",
   pic2: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-MS99W_V2.jpg",
   pic3: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-MS99W_V3.jpg",
   pic4: "https://is4.fwrdassets.com/images/p/fw/z/VSAC-MS99W_V5.jpg"
 })



# ===========================================================
# ====================Patbo===============================
# ===========================================================

@eyelet_belted_midi_dress = Item.create({
  product_name: "Eyelet Belted Midi Dress",
  brand: @patbo,
  price: "650",
  description: "Self: 67% cotton, 33% poly
  Lining: 95% poly 5% elastan
  Trim: 70% jute 30% cotton
  Made in Brazil
  Hand wash
  Fully lined
  Hidden back zip closure
  Back tie detail
  Jute waist belt with acrylic buckle
  Side cut-out details
  Trumpet skirt with layered ruffle hem
  ",
  pic1: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WD64_V1.jpg",
  pic2: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WD64_V2.jpg",
  pic3: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WD64_V3.jpg",
  pic4: ""
})

@printed_long_sleeve_cutout_dress = Item.create({
  product_name: "Printed Long Sleeve Cutout Dress",
  brand: @patbo,
  price: "578",
  description: "Self: 100% poly
  Contrast Fabric: 88% poly 15% elastan
  Lining: 87% polyamide 13% elastan
  Made in Brazil
  Hand wash
  Fully lined
  Acetate buckle detail on front
  Cut out detail at waist
  Hidden side zip closure
  Front slit detail
  ",
  pic1: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WD44_V1.jpg",
  pic2: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WD44_V2.jpg",
  pic3: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WD44_V3.jpg",
  pic4: ""
})

@carolina_tie_front_cropped_top = Item.create({
  product_name: "Carolina Tie Front Cropped Top",
  brand: @patbo,
  price: "375",
  description: "Self: 100% poly
  Lining: 95% poly 5% elastan
  Made in Brazil
  Hand wash
  Tie front closure
  Semi sheer
  Ruffled trim
  ",
  pic1: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WS27_V1.jpg",
  pic2: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WS27_V2.jpg",
  pic3: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WS27_V3.jpg",
  pic4: "https://is4.fwrdassets.com/images/p/fw/z/PTAB-WS27_V4.jpg"
})


# ===========================================================
# ====================Valentino===============================
# ===========================================================
@button_down_top = Item.create({
  product_name: "Button Down Top",
  brand: @valentino,
  price: "990",
  description: "100% cotton
  Made in Italy
  Dry clean only
  Front button closures
  Chest patch pocket
  Puffed shoulders with structural pleats detail
  Barrel cuffs with button closure
  Shirttail hem
  ",
  pic1: "https://is4.fwrdassets.com/images/p/fw/z/VENT-WS34_V1.jpg",
  pic2: "https://is4.fwrdassets.com/images/p/fw/z/VENT-WS34_V2.jpg",
  pic3: "https://is4.fwrdassets.com/images/p/fw/z/VENT-WS34_V3.jpg",
  pic4: ""
})

@mini_dress = Item.create({
  product_name: "Mini Dress",
  brand: @valentino,
  price: "2,980",
  description: "Self: 94% virgin wool, 4% elastan, 2% polyamide
  Made in Italy
  Dry clean only
  Unlined
  Hidden side zip closures
  Draped fabric overlay
  ",
  pic1: "https://is4.fwrdassets.com/images/p/fw/z/VENT-WD131_V1.jpg",
  pic2: "https://is4.fwrdassets.com/images/p/fw/z/VENT-WD131_V2.jpg",
  pic3: "https://is4.fwrdassets.com/images/p/fw/z/VENT-WD131_V3.jpg",
  pic4: "https://is4.fwrdassets.com/images/p/fw/z/VENT-WD131_V4.jpg"
})




# ===========================================================
# ====================Comme Des Garcons Play===============================
# ===========================================================

@broad_stripe_cotton_button_down = Item.create({
  product_name: "Broad Stripe Cotton Button Down",
  brand: @commesDesGarconsPlay,
  price: "284",
  description: "100% cotton
  Made in Japan
  Hand wash
  Button front closures
  ",
  pic1: "https://is4.fwrdassets.com/images/p/fw/z/CDES-WS29_V1.jpg",
  pic2: "https://is4.fwrdassets.com/images/p/fw/z/CDES-WS29_V2.jpg",
  pic3: "https://is4.fwrdassets.com/images/p/fw/z/CDES-WS29_V5.jpg",
  pic4: "https://is4.fwrdassets.com/images/p/fw/z/CDES-WS29_V6.jpg"
})

@cotton_red_emblem_dot_tee = Item.create({
  product_name: "Cotton Red Emblem Dot Tee",
  brand: @commesDesGarconsPlay,
  price: "158",
  description: "100% cotton
  Made in Japan
  ",
  pic1: "https://is4.fwrdassets.com/images/p/fw/z/CDES-WS6_V1.jpg",
  pic2: "https://is4.fwrdassets.com/images/p/fw/z/CDES-WS6_V2.jpg",
  pic3: "https://is4.fwrdassets.com/images/p/fw/z/CDES-WS6_V4.jpg",
  pic4: "https://is4.fwrdassets.com/images/p/fw/z/CDES-WS6_V5.jpg"
})



p "#{Item.count} items(s) created"


