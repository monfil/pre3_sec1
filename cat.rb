class Cat
  @@inc = 0

  def initialize(name)
    @name = name
  end

  def self.meow
    "Miau... Miau..."
  end
  
  def run(mr)
    @@inc += mr
    "Corriendo #{@@inc} mts..."
  end
  
  def jump
    "Saltando..."
  end
end

#test
cat_1 = Cat.new("Misty")
cat_3 = Cat.new("catty")
cat_5 = Cat.new("Mew")

p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
p cat_3.run(0) == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..."