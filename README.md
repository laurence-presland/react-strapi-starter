# React Strapi Starter

This repo is a simple but powerful starting point for building an SPA with a React frontend and Strapi backend. By default, this project can be easily deployed using AWS CodeBuild and CodeDeploy as the appropriate appspec, buildspec, and scripts are included. 

Rather than using an opinionated generator to build your application, this starter is intended to give you the maximum flexibility during your build. As such, the React application is completely separate from the backend however the whole thing can still be deployed together. When the project is built (with AWS CodeBuild by default) the React App is built and those build files are transferred to the public directory of the Strapi app. Then the Strapi App is built which creates a single bundled up application which can be run on the server. When it's running on the server, you'll be able to go to /admin to see your Strapi backend interface.

In development mode, the idea is that you run the frontend and backend separately. I find that this total separation makes development easier and allows you to develop your front end using whatever technologies you like.

To get started:

1) Install Strapi globally:
```
npm install -g strapi@beta
```

2) Install dependencies for the Strapi server AND the React App:
```
npm install
cd ./react-app
npm install
cd ..
```

3) Set up the DB:

*NOTE: I use MongoDB Atlas however you can look at the Strapi docs to figure out how to use other DBs*

Head to ./config/environments and edit the appropriate database.json files to point to your DB of choice. If using MongoDB Atlas like me, just put your connection string in the uri property.


4) Build the Strapi admin UI:
```
npm run build
```

5) Start the Strapi server:
```
npm run start
```

6) Start the React Dev Server in a new terminal:
```
cd ./react-app
npm run start
```

You did it! Now you can use the Strapi admin UI to set up your data sources and you can develop your frontend react app to display data from the resulting API. 