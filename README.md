# Sustainably Posh


## Table of Contents
- [Project Description](#project-description)
  - [Project Team](#project-team)
  - [Project Inspiration](#project-inspiration)
  - [Project Permissions](#project-permissions)
- [Design](#design)
  - [Sitemap](#sitemap)
  - [Wireframes](#wireframes)
    - [Desktop](#desktop)
    - [Mobile](#mobile)
  - [Branding](#branding)
- [Development](#development)
  - [Functional Goals](#functional-goals)
    - [MVP](#mvp)
    - [Post-MVP](#post-mvp)
  - [Functional Heirarchy](#functional-heirarchy)
    - [Repo Structure](#repo-structure)
    - [Database Table Structure](#express-database-structure)
    - [React Structure](#react-structure)
  - [Functional Components](#functional-components)
    - [Component Breakdown](#component-breakdown)
    - [Component Timeframes](#component-timeframes)
    - [Helper Functions](#helper-functions)
  - [Supporting Libraries](#supporting-libraries)
- [Project Review](#project-review)
  - [Code Showcase](#code-showcase)
  - [Bugs, Issues, and Resolutions](#issues-&-resolutions)
- [Project Followup](#project-followup)

<br>
<br>


## Overview

If you’re into fashion but uncomfortable with the fact it can have a high environmental cost, Sustainably Posh might be just what you’re looking for.

Sustainably Posh was founded to make finding sustainable luxury clothing easier. Sustainably posh operates as a marketplace for mid to high market sustainable brands. I have scoured eco-conscious fashion brands to find the best of the bunch.

I also used the data to develop a sustainability score rating model to rate the brands and provide full transparency around the sustainability impact and rating factors of your favorite outfit and designers. You can filter clothes to be vegan, fair trade, locally produced (in USA) and “made for a good cause”. Think of it as the ultimate Plattform of sustainable shopping with sustainability scorecards and might I add very POSH look ideas!

Our products - Brands in our platform must meet a minimum sustainability rating of 3.  All of the products listed are owned by a third party. The brands encompass both established brands seeking exposure in the sustainable community OR independant designers and multi-brand boutiques who outsource to Sustainably Posh Fashion their online operations.

Project Inspiration:
“The fashion industry is one of the most polluting industries in the world that also exploits millions of people, In addition, the clothing industry causes an enormous amount of water wastage, CO2 emissions, and the pollution of soil, rivers and oceans.”

<br>
<br>

## Score Methodology Data collection and evaluation 
- United Nations - Fashion Industry Charter for Climate Action
- business-humanrights.org - The 2019 Ethical Fashion Report
- Good on You - Brand ratings
- McKinsey: The State of Fashion 2020: Navigating uncertainty
- McKinsey: Fashion’s new musthave: sustainable sourcing at scale

<br>
<br>

## The sustainability rating parameters:

#### Animal

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




#### Labor

> Rating total weighted at 35%

| parameter | weight | Description | 
| --- | :---: | :---: |  
| Worker policies and empowerment | 10% | Protection of workers’ rights across the supply chain including monitoring health and safety, child labour, forced labour, freedom of association, collective bargaining, non-discrimination, gender equality, modern slavery, non-excessive hours and the right and capacity to make a complaint | 
| Low risk production | 10% | Management of labour abuse risk in supply chains and participation in multi-stakeholder initiatives to improve labour conditions |
| Living wage | 10% | Living wage definition, methodology and implementation across the supply chain | 
| Knowing suppliers | 10% | Supply chain transparency including publishing supplier lists and tracking subcontractors | 
| Supplier relationships | 20% | Auditing and assurance practices across the supply chain and public reporting including unannounced visits and off-site worker interviews | 

#### Environment

> Rating total weighted at 35%

| parameter | weight | Description | 
| --- | :---: | :---: |  
| Resource management and disposal | 10% | Types of materials used, efforts to reduce or eliminate waste in design and manufacturing, types of packaging used, management of microplastics, deforestation impacts, product durability and promotion of long-term use | 
| Energy use and greenhouse gas emissions | 10% | Energy use including direct emissions and indirect emissions (purchased electricity, emissions generated from the supply chain beyond own operations), setting science based GHG targets and reducing GHG emissions though emissions reduction activities | 
| Chemicals use and disposal | 10% | "Chemical use and disposal, setting goals to reduce or eliminate chemical use and adopting alternatives such as vegetable based or water based dyes" | 
|Water usage and effluent | 10% | Water usage policies and practices, engagement on water issues, specific targets to improve water stewardship and quality and treatment of waste | 





# Design

## ERD Model

![ERD Model V2](https://imgur.com/D7NUsJb.png)

> ERD Model from Sean's [Draw.io](https://www.draw.io).

<br>

## Functional Goals

### MVP

- User Authentication & Password Hashing
- Sequelize Resource Tables
  - Users (first_name, username, email, password, location, fav_whiskey)
    - FK: User hasMany Reviews, User hasMany Whiskeys
  - Whiskeys (name, brand, type, description, url_to_image)
    - FK: Whiskey hasMany Reviews
  - Reviews (rating, comment)
    - FK: Review belongsTo Users, Review belongsTo Whiskeys
- CRUD Functionality on All Resources via Axios
- Core React Components
  - Pages
    - Age Gate
    - Landing (Hero, Overview, Login, Register)
    - Homepage (_Index_)(View All Whiskies, Whiskies By Type)
    - User (_Show_)
    - Whiskey (_Show_)
  - Modules
    - Login Form
    - Register Form


### Post-MVP

- Pagination on Whiskeys, Advanced Sorting & Filtering
- Additional "Favorite" functionality, db table, and corresponding components for viewing and reordering favorite whiskeys from user dashboard.
- "Like" functionality on reviews, plus sorting reviews by popularity.
- Third party whiskey API to build out our database, enable "Add new whiskey for review." by user, with autofill.

<br>

## Functional Heirarchy

> Files and directories that are key to our production (and thus, have been- or will be- edited) are listed here in tree form here. Subdirectories should appear first, followed by filenames.

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

## Functional Components

#### Component Breakdown

> Components (and a description with a stateful or stateless tag) go here.

| Component | State | Description | 
| --- | :---: | :---: |  
| Lorem ipsum | Stateless | Lorem ipsum dolor sit amet, consecteteur adupiscing elit, sed do eiusmod tempor incididunt ut labore... | 

#### Component Timeframes

> Time expectation (padded with an extra hour, minimum, to play it safe) go here.

| Component | Priority | Estimated Time | Actual Time |
| --- | :---: |  :---: | :---: |
| Lorem ipsum | High | x hrs | y hrs |


#### Helper Functions

> Generic helper functions go here.

| Function | Description | 
| --- | :---: |  
| Lorem | ipsum dolor sit amet | 
| Lorem | ipsum dolor sit amet | 
| Lorem | ipsum dolor sit amet | 
| Lorem | ipsum dolor sit amet | 

<br>

## Supporting Libraries

> Packages installed via node go here.

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
  * material-ui
  * react
  * react-router-dom
  * react-spring
  * react-with-gesture
  * react-star-rating

<br>
<br>

# Project Review

## Code Showcase

> Any code of which we are proud go here.

```
function reverse(string) {
	// here is the code to reverse a string of text
}
```

<br>

## Issues & Resolutions

> Any code bugs, errors, and fixes go here.

```
**ERROR**: app.js:34 Uncaught SyntaxError: Unexpected identifier
```

```                
**RESOLUTION**: Missing comma after first object in sources {} object
```


<br>
<br>

# Project Followup

> Any tasks we would like to revisit after graduation go here. update
