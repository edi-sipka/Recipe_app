# Recipe App

Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe.

## Built With

- Ruby on Rails
- Bootstrap
- PostgreSQL
- Devise
- Rspec
- Capybara

## Getting Started

To get a local copy up and running follow these simple example steps.

## Prerequisites

- Ruby runtime environment
- PostgreSQL
- Rails

## ## 🛠 Installation & Set Up

If you dont have Ruby installed on your computer, you can download it from [here](https://www.ruby-lang.org/en/downloads/).

If you dont have Rails installed on your computer, you can download it from [here](https://rubyonrails.org/).

If you dont have PostgreSQL installed on your computer, you can download it from [here](https://www.postgresql.org/download/).

If you have installed git you can clone the code to your machine, or download a ZIP of all the files directly.


> `NOTE:` _You may need to run the following commands in the project directory to install the required gems and run the application:_

1. Install gem packages with:

```
bundle install
```

2. Open the config/database.yml file in the project directory and change the username and password to your PostgreSQL username and password.
Edit the default section of the file to look like this:
    
```
  default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <your PostgreSQL role username>
  password: <your PostgreSQL role password>

```

3. Create the database with:

```
rails db:create
```

4. Start the development server

```
rails server
```

5. Open the app in your browser at http://localhost:3000

## Authors

👤 **Desmond Owusu Ansah**

👤 _Edi Sipka_

- GitHub: [@Edi-Sipka](https://github.com/edi-sipka)
- Twitter: [@sipka_edii](https://twitter.com/sipka_edii)
- LinkedIn: [Edi Sipka](https://www.linkedin.com/in/edi-%C5%A1ipka-5b681b202/)

👤 **Riya Bulia**

- GitHub: [@RiyaBulia12](https://github.com/RiyaBulia12)
- LinkedIn: [Riya-Bulia](https://linkedin.com/in/riya-bulia)


👤 **Moathal Kachi**

- [@github](https://github.com/Moathal)
- [@LinkedIn](https://www.linkedin.com/in/moathalkachi)



## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/dodoburner/recipe-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc