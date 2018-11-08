# README

# ROR-PROJECT-ONE-8


<b> Overview: </b>

The project task was to develop a full stack application, have it hosted on Heroku, and present it over a period of 4 days. This application replecates a basic department store website. The landing page lists the main departments in the store, with links to more specific sections and categories. Should users wish to view a specific product, the relevant information and a photo is displayed. A navigation bar allows the user to log out, change their details or access the homepage at any time. The application was made RESTful and the Tachyons CSS framework was used in conjunction with Bulma.

Users of the application will have two types of account, admin and standard. Admins have the ability to add, edit or delete information from the website whereas standard users can only view the information. If a user uses the URL to try and access new/edit pages they will get a 422 status error telling them they cannot access the pages. An in development page was also added for website sections that have not been completed or are having maintenance performed on them.

<b> Issues </b>

Because the project didn't use Bootstrap as the CSS framework, it couldn't be deployed to Heroku as the build could not recognise the frameworks used when they were imported.

<b> Sprint Two </b>

If I were to continue working on the application, I would aim to implement the ability to search for products and improve the navigation between departments. As a stretch goal, I would want to have a way of comparing products, so that users could see the information of multiple selected products in a way that helped them pick between products.
