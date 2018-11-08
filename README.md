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

6. Identify the database to be used in your App and provide a justification for your choice.
 - Postgresql will be the database used within the app. This is due to it having a wide variety of features (data types, data integrity, concurrency, performance, reliability, disaster recovery, security, extensibility, internationalization, and text search). Although, for a low-level application not all of the functionality of Postgresql would be used. Additionally, Postgresql has been the main database that we as a team have been learning in class, therefore, it was the one we knew the most about.

7. Identify and describe the production database setup (i.e. Postgres instance).
 - We are using Postgresql as our Production level database. It is a open source object-relational database system that uses and extends the SQL language combined with many features that safely store and scale the most complicated data workload.
 - Postgresql comes with many features that aim to help developers to build applications, and administrators to protect data integrity and build fault-tolerant environments, and help you manage data without any complication regarding their volume. 
 - We are using Heroku for deployment of our App. It has its own Heroku Postgres structure for operational experience. It provides scaling application and integration of useful runtime features for developers worldwide, and applies it to the data stack. This integration provides seamless approach to building applications with a solid data layer built in.
 - Heroku Postgres helps us to maximize our data instead of spending time on database setup and maintenance. Testing new schema migrations, managing database access levels and protect queries, scale horizontally and allow our team to quickly access data. It continuously protects our data and seamlessly applies the latest security patch.

8. Describe the architecture of your App.
 - The application is a Ruby on Rails application based on Model View Controller (MVC) pattern. MVC separates the input, processing, and output of an application which provides added security and compartmentalizes different aspects of the application which helps in the of workflow and quality control. Separating storage and logic from the view allows for greater freedom in view creation and minimal code repetition. Views can be updated and changed without having to change the foundations of the app.
 - MVC allows for easy separation of tasks which makes delegation easier and allows developers to operate independently of one another
 - It is also easy to implement and Rails comes with the foundations for MVC straight out of the box allowing development to begin straight away.

9. Explain the different high-level components (abstractions) in your App.
- Some of the high-level components in our App are: 
	1. Admin panel: We have incorporated it into our system. However, due to time limitations, it is only working partially.
	2. Bidding System: This feature is also our abstraction since we could not abide it into our App
	3. Advanced Search:  We have included normal search and search with the category in our system. However, we have missed incorporating Advanced search feature.

10. Detail any third party services that your App will use.
	- Within our app, we are using mainly Stripe and Carrierwave as the major third parties. Stripe handles everything to do with payment. It also allows is able to handle user information. We connect to stripe for order information as well as user history in the future. Carrierwave allows us to store all the images uploaded by any user externally so they are not stored within our database (only references to the images are stored).




