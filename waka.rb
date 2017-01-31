class WakaWaka
  @@dicc = {',' => ',', '<' => 'waka', '>' => 'waka', '!' => 'bang', '*' => 'splat', "'" => 'tick', '#' => 'hash', '^' => 'caret', '"' => 'quote', '`' => 'back_tick', '$' => 'dollar', '-' => 'dash', '=' => 'equal', '@' => 'at', '_' => 'underscore', '%' => 'percent', '~' => 'tilde', '4' => 'four'}
  
  def initialize(code)
    @code = code 
  end

  def largo(word)
    valor = 15 - word.length 
    s = " " * valor
  end  

  def iterate_array(list)
    list.each do |word|
      print word + largo(word)
    end
  end  

  def translate
    r = []
    line = ""
    @code.each_char {|c| r << @@dicc[c]}
    r.compact!
    r.delete(" ")
    @code.delete!(" ")
    i = 0
    j = 0
    @code.each_char do |cod|
      if cod != ","
        line += "#{cod}" + largo(cod) 
      else
        puts line
        line = ""
        while j < i do
          if r[j] != ","
            line.concat("#{r[j]}#{largo(r[j])}")
            j += 1
          else
            j += 1
          end
        end
        new_line = line.split
        new_line[-1] = new_line[-1] + ','
        iterate_array(new_line)
        puts
        line = ""
      end
      i += 1
    end
  end
end

waka_code = WakaWaka.new("< > ! * \' \' #,^ \" ` $ $ -,! * = @ $ _,% * < > ~ # 4,")
waka_code.translate