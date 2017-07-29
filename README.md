## Using the app

- Have PostgreSQL running
- Clone this repo
- Install gems: $ bundle install
- Create database: $ rake db:create
- Run migrations: $ rake db:migrate
- ETL process for targets: $ rake import_targets
- ETL process for products: $ rake import_products
- Start the server: $ rails s
- Open http://localhost:3000/products to view the JSON objects for all products
- Open http://localhost:3000/products/1 to view the JSON for a particular product (replace "1" with any product's id)
