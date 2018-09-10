#!/usr/bin/ruby

class Customer
  attr_reader :cust_obj_name
  attr_reader :cust_id
  attr_reader :cust_name
  attr_reader :cust_addr

  @@customerNo = 5

   def initialize(obj_name, id, name, addr)
      @cust_obj_name = obj_name
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
      puts "Customer Number #@@customerNo"
   end
   def getCustomerNo()
      puts "Customer No.: #@@customerNo"
   end
   def setCustomerNo(newCustomerNo)
      @@customerNo = newCustomerNo
      puts "New Customer No.: #@@customerNo"
   end
end

# Create Objects
cust1 = Customer.new("cust1", "1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("cust2", "2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.display_details();puts
cust2.display_details();puts

# Try to manipulate calling set methods
# cust1.cust_id = 100
# cust1.cust_name = "XYZ"

# Call instance variable
puts "Getting customer id - #{cust1.cust_id} is #{cust1.cust_name}"
puts "Getting customer id - #{cust2.cust_id} is #{cust2.cust_name}"

# Set new customerNo in one object and see if it is in all instances of classes (objects) is equally set
cust1.setCustomerNo(4)

# Call class variable - so called static
printf "Object is " + cust1.cust_obj_name + ", "; cust1.getCustomerNo
printf "Object is " + cust2.cust_obj_name + ", "; cust2.getCustomerNo

# Zaporedje izpisa
puts;puts
printf "Prvi... "; printf "Drugi ... "
printf "Tretji ... "; printf "Èetrti ... "