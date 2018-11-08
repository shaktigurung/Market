# Rails Two-Sided Marketplace

#### Developers: 

- *Shakti Gurung*	-> [Github](https://github.com/shaktigurung)
- *Daniel Teale*	-> [Github](https://github.com/DanielTeale)
- *William Francis*	-> [Github](https://github.com/WilliamJohnFrancis)

[Will Link to Heroku](https://www.google.com)

[Github Repo](https://github.com/shaktigurung/Market)

## Introduction:

The idea behind **APP NAME HERE** is for people to be able to buy and sell items between each other. 

We worked as a team during the intial stages of the project. We had meetings during the morning to talk about what we have done and what is to be completed. Blockers that came up were worked through with memeber of the team. If we were really stuck we would then go to Garret/James for addition help.

### Teach Stack

- HTML 5
- CSS
- Rails
- Postgresql

### Features

- Order Tracking 
- Creating and Editing Products 
- User Profiles 
- Some Authentication 
- Commenting on Products and Users 
- Payment System 
- Search 
- Searchable Catagories 
- Admin Account 

## Development Process:

### Git

1. Create a remote repositoty on github
2. Link that repo to all computers 
3. Create a branch on local repos, called the feature name
4. Any changes would be pushed to a seperate feature branch 
5. Each of us had different methods on when we pushed to gihub
6. Depending on who was adding to the repo, meant that a different amount of changes would occur on the master branch
7. The master branch would then be pulled by the team
8. Then depending on if the feature was complete a new branch would be created

### User Stories / Trello Board

There was an initial Trello board created with very minimal cards and tables. It was fleshed out to include the user stores as well as specific To Do Lists for the team. In hindsight instead of having separate lists, we could have just added a member to a specific card to clean the board up. When things were finished they would be moved to the done list. Anything that we were working on was moved to our personal list.  

![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/FirstTrello.png)
![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/ContinuedTrello.png)

### Wireframes

The wireframes were created before the ERD (Entity–relationship model). It allowed for the team to come up with what tables would be needed due to the features in the wireframes.

![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/Phone_wire_frame.png)
![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/Desktop_wire_frame.png) 

### Designing database

Designing the database was a difficult task for the team. The initial designed did not contain many fields that we needed. The design was then changed to better accommodate our needs. Even though the new design was better than the initial one, additional columns were added to allow for features to be implemented. Additionally, there are also columns that are now redundant and will be dropped from the relevant tables.

![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/FirstERD.png)
![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/SecondERD.png)
![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/ThirdERD.png)

## Questions:

1. What is the need (i.e. challenge) that you will be addressing in your project?
 - Our project challenged us to create a two-sided marketplace. This marketplace serves a platform to sell products to users. 

2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
 - We are building this Application to provide a simple platform to buy and sell goods without any complication. Some of the competitors in the market have a very complicated system which makes it difficult to perform any kind of transaction. 

3. Describe the project will you be conducting and how. your App will address the needs.
 - We are building “ Market App”. This App will provide a simpler way to have two-sided marketing between our buyer and seller. In this platform, anyone can be a buyer or a seller. They will be provided with a process to execute their business transaction without any hassle.
 When a seller wants to sell his/her product, they will post their product on the market with all the details regarding the product. Once it’s posted it will be seen to remaining users as a product to be bought if that appeals to them. If some user wants to buy that product then they can directly contact the seller through private message and ask some more information if they need to know. Once they are convinced, they can buy just by paying through their cards. And once an order is received by the seller, the product will be sent to the designated buyer.

4. Describe the network infrastructure the App may be based on.
 - Network infrastructure is the hardware and software resources of the entire network that enable network connectivity, communication, operations and management of an enterprise network. It provides the communication path and services between users, processes, applications, services and external networks/the internet.
 - Our App is based on the following network infrastructure
  - Networking Hardware:  Routers, Wireless Routers 
  - Networking Software: Network security applications, firewall, operating systems
  - Networking Services: Wireless protocols, IP addressing

5. Identify and describe the software to be used in your App.
 - We are building our App using the following software:
	1. Ruby on Rails for the backend application
	2. HTML, CSS, and JavaScript for the frontend application
	3. Postgresql for database
	4. Bootstrap for CSS framework and SASS for pre-processor
	5. Some of the important gems are DEVISE for authentication, ActiveAdmin for the admin panel, AWS for file upload and Stripe for the payment system.







