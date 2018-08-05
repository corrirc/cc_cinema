require('pry-byebug')
require_relative('./models/customers')
require_relative('./models/film')
require_relative('./models/ticket')

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()

customer_1 = Customer.new({
  "name" => "Ricky",
  "funds" => "40"
})

customer_2 = Customer.new({
  "name" => "Craig",
  "funds" => "30"
})

customer_3 = Customer.new({
  "name" => "Lee",
  "funds" => "20"
})

customer_1.save()
customer_2.save()
customer_3.save()

film_1 = Film.new({
  "title" => "Fight Club",
  "price" => "4"
})

film_2 = Film.new({
  "title" => "Oceans 11",
  "price" => "5"
})

film_3 = Film.new({
  "title" => "Goodfellas",
  "price" => "3"
})


film_1.save()
film_2.save()
film_3.save()

ticket_1 = Ticket.new({
  "customer_id" => customer_1.id,
  "film_id" =>  film_1.id
})

ticket_2 = Ticket.new({
  "customer_id" => customer_2.id,
  "film_id" =>  film_1.id
})

ticket_3 = Ticket.new({
  "customer_id" => customer_3.id,
  "film_id" =>  film_2.id
})

ticket_1.save()
ticket_2.save()
ticket_3.save()

customers = Customer.all()
films = Film.all()
tickets = Ticket.all()

binding.pry
nil
