require('pry')
require_relative('./models/customer')
require_relative('./models/film')
require_relative('./models/ticket')

customer_1 = Customer.new({
  "name" => "Ricky",
  "funds" => "40"
})

customer_2 Customer.new({
  "name" => "Craig",
  "funds" => "30"
})

customer_3 Customer.new({
  "name" => "Lee",
  "funds" => "20"
})

film_1 Film.new({
  "title" => "Fight Club",
  "price" => "4"
})

film_2 Film.new({
  "title" => "Oceans 11",
  "price" => "5"
})

film_3 Film.new({
  "title" => "Goodfellas",
  "price" => "3"
})
