class WakaWaka
=begin
    @@dicc = {"waka" => '<', "bang" => '!', "splat" => '*', "tick" => "'",
     "hash" => '#', "caret" => '^', "quote" => '"', "back_tick" => '`', "dollar" => '$', 
     "dash" => '-', "equal" => '=', "at" => '@', "underscore" => '_', "percent" => '%', 
     "tilde" => '~', "four" => '4'}
=end
  @@dicc = {'<' => 'Waka', '>' => 'waka', '!' => 'bang', '*' => 'splat', "'" => 'tick', 
    '#' => 'hash', '^' => 'Caret', '"' => 'quote', '`' => 'back_tick', '$' => 'dollar', 
    '-' => 'dash', '@' => 'at', '_' => 'underscore', '%' => 'percent', '~' => 'tilde',
    '4' => 'four'}

	
  def initialize(code)
    @code = code 
  end  

  def translate
    r = []
    @code.each_char do |c|
    	if @@dicc.has_key?(c)
        r.push(@@dicc.values_at(c))
      end
    end

    l1 = ""
    @code.each_char do |cod|
      if cod != ","
        l1.concat("#{cod} \t")
      else
        puts l1
        l1 = ""
  
        #r.each {|word| print "#{word} \t"}
        

        #l2 = r.each {|word| "#{word} \t"}
        #p l2
        #l2 = ""
      end
    end

    #p l1


    #r.each do |c|
      #line = ""
      #if c == ","
        #line.concat("\n")
      #else
        #line.concat("#{c} \t")
      #end
      #p line
    #end
  end

end

waka_code = WakaWaka.new('< > ! * ' ' #,^ " ` $ $ -,! * = @ $ _,% * < > ~ # 4')
waka_code.translate