![banner](https://i.imgur.com/0ywUH1K.png)




# Sustainably Posh
<br>
<p>If you’re into fashion but uncomfortable with the fact it can have a high environmental cost, Sustainably Posh might be just what you’re looking for.<p/>

<p>Sustainably Posh was founded to make finding sustainable chic fashion easier. Sustainably posh operates as a marketplace for mid to high market sustainable brands. I have scoured eco-conscious fashion brands to find the best of the bunch.</p>

<p>We also include a sustainability score rating model to rate the brands and provide full transparency around the sustainability impact and rating factors of your favorite outfit and designers. You can filter clothes to be vegan, fair trade, locally produced (in USA) and “made for a good cause”. Think of it as the ultimate Plattform of sustainable shopping with sustainability scorecards and might I add very POSH look ideas!</p>
<br>

## Score Methodology Data collection and evaluation 
- Good on You - Brand ratings
- Certifications, accreditations and other standards systems
- Independent third party reports and ratings
- Brand and parent company websites

<p>The rating system does not consider any information that is not in the public domain.</p>


<br>

## The sustainability rating parameters:

Brands in our platform must meet a minimum sustainability rating of 3.  All of the products listed are owned by a third party. The brands encompass both established brands seeking exposure in the sustainable community OR independant designers and multi-brand boutiques who outsource to Sustainably Posh Fashion their online operations.


<details><summary>ANIMAL</summary>
<br>
> Rating total weighted at 30%

| parameter | weight | Description | 
| --- | :---: | :---: |  
| Policy | 15% | Implementation of policies to ensure animal welfare |
| Fur | 15% | Use of fur, shearling and karakul lamb fur and commitment not to use fur | 
| Leather | 12% | Use of leather and if upcycled/recycled | 
| Wool | 10% | Use of wool and if sourced from non-mulesed sheep or upcycled/recycled | 
| Down and feathers  | 12% | Use of down and feathers and how sourced | 
| Angora | 10% | Use of angora and commitment not to use angora | 
| Exotic animal hairs &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 10% | Use of exotic animal hair such as pashmina, cashmere, mohair, alpaca, llama, vicuña and shahtoosh | 
| Exotic animal skins | 11% | Use of exotic animal skin such as crocodile and alligator | 

</details>


<details><summary>LABOR</summary>
<br>
> Rating total weighted at 35%

| parameter | weight | Description | 
| --- | :---: | :---: |  
|<p> Worker policies and empowerment</p> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 20% | Protection of workers’ rights across the supply chain including monitoring health and safety, child labour, forced labour, freedom of association, collective bargaining, non-discrimination, gender equality, modern slavery, non-excessive hours and the right and capacity to make a complaint | 
| Low risk production | 15% | Management of labour abuse risk in supply chains and participation in multi-stakeholder initiatives to improve labour conditions |
| Living wage | 25% | Living wage definition, methodology and implementation across the supply chain | 
| Knowing suppliers | 20% | Supply chain transparency including publishing supplier lists and tracking subcontractors | 
| Supplier relationships | 20% | Auditing and assurance practices across the supply chain and public reporting including unannounced visits and off-site worker interviews | 

</details>

<details><summary>ENVIRONMENT</summary>
<br>
> Rating total weighted at 35%

| parameter | weight | Description | 
| --- | :---: | :---: |  
| Resource management and disposal &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 30% | Types of materials used, efforts to reduce or eliminate waste in design and manufacturing, types of packaging used, management of microplastics, deforestation impacts, product durability and promotion of long-term use | 
| Energy use and greenhouse gas emissions | 22% | Energy use including direct emissions and indirect emissions (purchased electricity, emissions generated from the supply chain beyond own operations), setting science based GHG targets and reducing GHG emissions though emissions reduction activities | 
| Chemicals use and disposal | 23% | "Chemical use and disposal, setting goals to reduce or eliminate chemical use and adopting alternatives such as vegetable based or water based dyes" | 
|Water usage and effluent | 25% | Water usage policies and practices, engagement on water issues, specific targets to improve water stewardship and quality and treatment of waste | 

</details>
<br>

# Design - MVP

### ERD Model

![ERD Model V1](https://i.imgur.com/guB5av7.png)

<br>


### Data architecture

- User Authentication & Password Hashing
- Sequelize Resource Tables
  - Users (first_name, username, email, password, auth_level, Brand_Item_update_access)
    - FK: User belongsTo Brand, User hasMany Items
  - Brand (name)
    - FK: Brand belongsTo Items, Brand hasMany Items
  - Item (first_name, username, email, password, auth_level)
    - FK: User belongsTo Brand, User hasMany Items
  - Brand Scorecard (sustainability_rating)
    - FK: Brand Scorecard belongsTo Brand
    
- CRUD Functionality for each brand to edit their individual product items once onboarded onto the platform

- Core React Components
  - Pages
    - Homepage (_Index_)(View All brands and looks)
    - Brand (_Show_)
    - Items (_Show_)
    - Login Form
    - Register Form
    
  <br>  

#### Components
| Component          | State     | Description                                                 | 
| ------------------ | :---:     | :---:                                                       |  
| Header             | State     | Lorem ipsum dolor sit amet, consectetecididunt ut labore... | 
| Footer             | Stateless | Lorem ipsum dolor sit amet, consectetecididunt ut labore... | 
| Hero               | Stateless | Lorem ipsum dolor sit amet, consectetecididunt ut labore... | 
| Virtual Style Help | Stateless | Lorem ipsum dolor sit amet, consectetecididunt ut labore... | 
| Designers          | State     | Lorem ipsum dolor sit amet, consectetecididunt ut labore... | 
| Shop All           | State     | Lorem ipsum dolor sit amet, consectetecididunt ut labore... | 
| Individual Item    | State     | Lorem ipsum dolor sit amet, consectetecididunt ut labore... | 
| Our ratings        | Stateless | Lorem ipsum dolor sit amet, consectetecididunt ut labore... | 
| About Us           | Stateless | Lorem ipsum dolor sit amet, consectetecididunt ut labore... | 

  <br>  

### Dependencies
> Supporting Libraries.

* Server-Side
  * body-parser
  * cors
  * express
  * morgan
  * nodemon
  * pg
  * sequelize

* Authentication
  * bcrypt
  * jsonwebtoken

* Client-Side
  * axios
  * react
  * react-router-dom
  * react-star-rating
<br>


### Wire-frames
![banner](https://i.imgur.com/kY9n97B.png)
<br>
![banner](https://i.imgur.com/lil4chq.png)
<br>

### Post-MVP

![ERD Model V2](https://i.imgur.com/l0jhRRM.png)
