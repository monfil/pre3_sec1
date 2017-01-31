class NumberGuessingGame
  def initialize
    @@na = rand(9)
  end

  def guess()
      p "Dame un número: "
      n = gets.chomp
      if n.to_i < @@na
        p "Too low: #{@@na}"
        pregunta
      elsif n.to_i > @@na
        p "Too high: #{@@na}"
        pregunta
      elsif n.to_i == @@na
        p "You got it!: #{@@na}"
        pregunta
      end
  end

  def pregunta
    puts "¿Quieres terminar el juego? S/N"
    t = gets.chomp
    if t.upcase != "N" && t.upcase != "S"
      print "Respuesta equivocada."

    elsif t.upcase == "N"
      guess
    elsif t.upcase == "S"
      p "El juego terminó."
    end     
  end
end

game = NumberGuessingGame.new
game.guess