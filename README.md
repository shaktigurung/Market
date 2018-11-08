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
	4. Order details: We were thinking to provide full order details to the buyer regarding their order. We have partially incorporated it into our current app.

10. Detail any third party services that your App will use.
 - Within our app, we are using mainly Stripe and Carrierwave as the major third parties. Stripe handles everything to do with payment. It also allows is able to handle user information. We connect to stripe for order information as well as user history in the future. Carrierwave allows us to store all the images uploaded by any user externally so they are not stored within our database (only references to the images are stored).

11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
 - They are similar due to being a relationship orientated database. The databases would have at the very minimum these tables: 
	- Product
	- User 
	- Order
	- Delivery 
	- Order details

12. Discuss the database relations to be implemented.
 - Within the database, there will be: 
	- has_many 
	- belongs_to
	- has_one
 - There will also be accepts_nested_attributes_for which will define an attributes writer for the specified association(s).

13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
 - 

14. Provide your database schema design.

![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/FirstERD.png)

15. Provide User stories for your App.

![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/ContinuedTrello.png)

16. Provide Wireframes for your App.

![alt text](https://github.com/shaktigurung/Market/blob/readme.md/app/assets/images/Phone_wire_frame.png)

17. Describe the way tasks are allocated and tracked in your project.
 - Regular stand-ups were held each day where each member of the team explained what they wished to work on and what needs to be done from the others.
 - Tasks were mainly allocated through what person wanted to work on. Although, there are exceptions where we worked together for the initialization of the project.
 - Tasks were generally delegated to those who had already worked on dependent tasks to allow for smooth implementation, rather than having to learn another members codebase. 

18. Discuss how Agile methodology is being implemented in your project.
 - By using the agile methodology we went over the requirements which were pulled from the wireframes. We then as a team laid out a rough plan for our development process. As a team, we decided to do a majority of the design after the base development of the product was complete. We then release the product on Heroku for it to be live. If we have missed anything major we will update as soon as possible. If not we would implement updates when enough improvements were made.

19. Provide an overview and description of your Source control process.
 - We are using Git (Github) as our VCS (version control system). It allows us to track all changes to every file. Using Git means that we do not need to have any other software or application, because it is entirely file based. In the team we didn’t have a set structure when using Git which looking back is something we should have had. Although, for new features, we would create a separate branch on our local and push that to the repository. Once the feature was complete it would then be merged into the master. 

20. Provide an overview and description of your Testing process.
 - We mainly focused on alpha-testing (pre-release testing). Where back-end (database, Carrierwave, Stripe),  user flow, end-to-end and usability where the main types of tests done. Before merging to the master branch, the feature would be tested on the local machine to make sure no problems occurred. After the merge to the master was done, the repo was pulled to developers local machines and tested again. This would allow us to confirm that no problems were had before more features were added. 

21. Discuss and analyze requirements related to information system security.
 - Information System Security or INFOSEC refers to keeping information confidential, available, and assuring its integrity. It does not only deal with computer security but also protects data and information in all of its applications, such as phone conversations.

22. Discuss methods you will use to protect information and data.
 - Due to not having enough experience and knowledge of security and information/data protection, we are using stripe to handle everything. Stripe handles all user information, mainly card details. 

 23. Research what your legal obligations are in relation to handling user data.
 - As of the 25th of May, 2018 Australian businesses of any size may need to comply with the General Data Protection Regulation (GDPR). This is according to the Office of the Australian Information Commissioner (OAIC).









