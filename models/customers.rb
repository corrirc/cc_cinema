require_relative("../db/sql_runner")
class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @funds = options["funds"].to_i
  end

  def save()
    sql = "INSERT INTO customers (name, funds) VALUES ($1, $2) RETURNING id"
    values = [@name, @funds]
    customer = SqlRunner.run(sql, values)
    customer = customer.first
    @id = customer["id"].to_i
  end

  def Customer.all()
    sql = "SELECT * FROM customers"
    customer_hashes = SqlRunner.run(sql)
    customer = customer_hashes.map{|customer_hash| Customer.new(customer_hash)}
    return customer
  end

  def Customer.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end
end
