# Pick and Chews (Back End)

![GitHub repo size](https://img.shields.io/github/repo-size/mwong068/Pick-And-Chews-app-backend)
![GitHub stars](https://img.shields.io/github/stars/mwong068/Pick-And-Chews-app-backend)
![GitHub forks](https://img.shields.io/github/forks/mwong068/Pick-And-Chews-app-backend)

## About

A helpful food choosing application, made with indecisive and picky foodies in mind.

### How it works

This application was built using Rails for this backend portion. Please see the below sections on how to run the application on your local environment.
Please ensure that you have downloaded the [frontend portion](https://github.com/jolouie7/Pick-and-Chews-app-frontend) of this application, to ensure full functionality of the application as it was designed.

<!--
**TODO: UML Diagram**
We can render UML diagrams using [Mermaid](https://mermaidjs.github.io/).
**TODO: Describe how it works**
-->

## Features

- Ruby on Rails web server using [Rails](https://rubyonrails.org/)
- Serialization using [active_model_serializers](https://github.com/rails-api/active_model_serializers) gem

## How to use it

1. Create a clone of this repo using [GitHub's repository cloning](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github) functionality
2. Locate the folder in your system and follow the steps below to run the server

## Set up

### Requirements

- [Ruby on Rails](https://rubyonrails.org/)

### Local development

After the above requirements have been met:

1. Clone this repository and `cd` into it

```bash
git clone https://github.com/mwong068/Pick-And-Chews-app-backend.git
cd Pick-And-Chews-app-backend
```

2. Install dependencies

```bash
bundle install
```

3. Set up the database

```bash
rails db:create
rails db:migrate
rails db:seed
```

This will be loaded with starter data so you can see an example of the application functionality.

4. Run the application

```bash
rails server
```

5. Navigate to [http://localhost:3000](http://localhost:3000)

After the server is running, you will need to start the [frontend portion](https://github.com/jolouie7/Pick-and-Chews-app-frontend) to see the full application.
                                                       

## Resources

- [Yelp Fusion Documentation](https://www.yelp.com/developers/documentation/v3/authentication)

## Contributors

- [Joseph Louie](https://github.com/jolouie7/)
- [Megan Wong](https://github.com/mwong068)


## Disclaimer

No warranty expressed or implied. Software is as is.