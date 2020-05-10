# Sustainably Posh
<br>
If you’re into fashion but uncomfortable with the fact it can have a high environmental cost, Sustainably Posh might be just what you’re looking for.

Sustainably Posh was founded to make finding sustainable luxury clothing easier. Sustainably posh operates as a marketplace for mid to high market sustainable brands. I have scoured eco-conscious fashion brands to find the best of the bunch.

I also used the data to develop a sustainability score rating model to rate the brands and provide full transparency around the sustainability impact and rating factors of your favorite outfit and designers. You can filter clothes to be vegan, fair trade, locally produced (in USA) and “made for a good cause”. Think of it as the ultimate Plattform of sustainable shopping with sustainability scorecards and might I add very POSH look ideas!
<br>

## Score Methodology Data collection and evaluation 
- United Nations - Fashion Industry Charter for Climate Action
- business-humanrights.org - The 2019 Ethical Fashion Report
- Good on You - Brand ratings
- McKinsey: The State of Fashion 2020: Navigating uncertainty
- McKinsey: Fashion’s new musthave: sustainable sourcing at scale

<br>

## The sustainability rating parameters:

Our products - Brands in our platform must meet a minimum sustainability rating of 3.  All of the products listed are owned by a third party. The brands encompass both established brands seeking exposure in the sustainable community OR independant designers and multi-brand boutiques who outsource to Sustainably Posh Fashion their online operations.


<details><summary>ANIMAL</summary>
<br>
> Rating total weighted at 35%

| parameter | weight | Description | 
| --- | :---: | :---: |  
| Policy | 10% | Implementation of policies to ensure animal welfare |
| Fur | 10% | Use of fur, shearling and karakul lamb fur and commitment not to use fur | 
| Leather | 10% | Use of leather and if upcycled/recycled | 
| Wool | 10% | Use of wool and if sourced from non-mulesed sheep or upcycled/recycled | 
| Down and feathers  | 10% | Use of down and feathers and how sourced | 
| Angora | 10% | Use of angora and commitment not to use angora | 
| Exotic animal hairs  | 10% | Use of exotic animal hair such as pashmina, cashmere, mohair, alpaca, llama, vicuña and shahtoosh | 
| Exotic animal skins | 10% | Use of exotic animal skin such as crocodile and alligator | 

</details>
<br>


<details><summary>LABOR</summary>
<br>
> Rating total weighted at 35%

| parameter | weight | Description | 
| --- | :---: | :---: |  
| Worker policies and empowerment | 10% | Protection of workers’ rights across the supply chain including monitoring health and safety, child labour, forced labour, freedom of association, collective bargaining, non-discrimination, gender equality, modern slavery, non-excessive hours and the right and capacity to make a complaint | 
| Low risk production | 10% | Management of labour abuse risk in supply chains and participation in multi-stakeholder initiatives to improve labour conditions |
| Living wage | 10% | Living wage definition, methodology and implementation across the supply chain | 
| Knowing suppliers | 10% | Supply chain transparency including publishing supplier lists and tracking subcontractors | 
| Supplier relationships | 20% | Auditing and assurance practices across the supply chain and public reporting including unannounced visits and off-site worker interviews | 

</details>
<br>

<details><summary>ENVIRONMENT</summary>
<br>
> Rating total weighted at 35%

| parameter | weight | Description | 
| --- | :---: | :---: |  
| Resource management and disposal | 10% | Types of materials used, efforts to reduce or eliminate waste in design and manufacturing, types of packaging used, management of microplastics, deforestation impacts, product durability and promotion of long-term use | 
| Energy use and greenhouse gas emissions | 10% | Energy use including direct emissions and indirect emissions (purchased electricity, emissions generated from the supply chain beyond own operations), setting science based GHG targets and reducing GHG emissions though emissions reduction activities | 
| Chemicals use and disposal | 10% | "Chemical use and disposal, setting goals to reduce or eliminate chemical use and adopting alternatives such as vegetable based or water based dyes" | 
|Water usage and effluent | 10% | Water usage policies and practices, engagement on water issues, specific targets to improve water stewardship and quality and treatment of waste | 

</details>
<br>

# Design - MVP
### Wire-frames

### ERD Model

![ERD Model V1](https://i.imgur.com/guB5av7.png)

<br>


### Data architecture

- User Authentication & Password Hashing
- Sequelize Resource Tables
  - Users (first_name, username, email, password, auth_level, brand_update_access)
    - FK: User belongsTo Brand, User hasMany Items
  - Brand (name)
    - FK: Brand belongsTo Items, Brand hasMany Items
  - Item (first_name, username, email, password, auth_level)
    - FK: User belongsTo Brand, User hasMany Items
  - Brand Scorecard (sustainability_rating)
    - FK: Brand Scorecard belongsTo Brand
    
- CRUD Functionality on All Resources via Axios
- Core React Components
  - Pages
    - Landing (Hero, Overview, Login, Register)
    - Homepage (_Index_)(View All brands and looks)
    - User (_Show_)
    - Brand (_Show_)
  - Modules
    - Login Form
    - Register Form
    
    

#### Components
| Component | State | Description | 
| --- | :---: | :---: |  
| Lorem ipsum | Stateless | Lorem ipsum dolor sit amet, consecteteur adupiscing elit, sed do eiusmod tempor incididunt ut labore... | 

#### Component Timeframes

| Component | Priority | Estimated Time | Actual Time |
| --- | :---: |  :---: | :---: |
| Lorem ipsum | High | x hrs | y hrs |


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


#### Repo Structure

```
barrel-aged

|___ client
      (Refer to React Structure below.)
      
|___ routes
      |___ userRouter.js
      |___ whiskeyRouter.js

|___ auth.js
|___ models.js
|___ resetDb.js
|___ scratch.js
|___ seed.js
|___ server.js

|___ readme.md
```

#### Express Database Structure

```
barrelaged_db

|___ reviews 
|___ users
|___ whiskeys
```

#### React Structure

```
client

|___ public
      |___ favicon.ico
      |___ index.html

|___ src
      |___ assets
            |___ images
            |___ graphics
            
      |___ components
            |___ Header.jsx
            |___ LoginForm.jsx
            |___ RegisterForm.jsx
            |___ ReviewForm.jsx
            |___ Footer.jsx

      |___ pages
            |___ AgeGate.jsx
            |___ Landing.jsx
            |___ Home.jsx
            |___ User.jsx
            |___ Whiskey.jsx

      |___ services
            |___ api-helper.js

      |___ App.css
      |___ App.js
      |___ index.css
      |___ index.js
      |___ logo.svg

|___ readme.md
```


<br>
<br>
<br>
<br>

### Post-MVP

![ERD Model V2](https://i.imgur.com/l0jhRRM.png)
