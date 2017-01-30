class WakaWaka
  @@dicc = {',' => ',', '<' => 'Waka', '>' => 'waka', '!' => 'bang', '*' => 'splat', "'" => 'tick', '#' => 'hash', '^' => 'Caret', '"' => 'quote', '`' => 'back_tick', '$' => 'dollar', '-' => 'dash', '@' => 'at', '_' => 'underscore', '%' => 'percent', '~' => 'tilde', '4' => 'four'}
	
  def initialize(code)
    @code = code 
  end  

  def translate
    r = []
    line = ""
    @code.each_char {|c| r << @@dicc[c]}
    r.compact!
    r.delete(" ")
    p r
    i = 0
    j = 0
    @code.each_char do |cod|
      if cod != ","
        cod != " " ? i += 1 : i
        line.concat("#{cod} \t")
      else
        puts line
        line = ""
        # while j < i do
        #   if r[j] != ","
        #     line.concat("#{r[j]} \t\t") 
        #     j += 1
        #   else  
        #     puts line
        #     line = ""
        #   end
          
        # end
        p i
      end
    end
  end

end

waka_code = WakaWaka.new("< > ! * \' \' #,^ \" ` $ $ -,! * = @ $ _,% * < > ~ # 4,")
waka_code.translate