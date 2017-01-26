class People

  @@name = ["Rodrigo", "Carlos", "Rodrigo"]
  @@inc = -1

  def speak
    @@inc += 1
    "#{@@name[@@inc]} is talking to you..."
  end
end

people_1 = People.new
people_2 = People.new
people_3 = People.new

#test
p people_1.speak == "Rodrigo is talking to you..."
p people_2.speak == "Carlos is talking to you..."
p people_3.speak == "Rodrigo is talking to you..."