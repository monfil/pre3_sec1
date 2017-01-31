class WakaWaka
  @@dicc = {',' => ',', '<' => 'Waka', '>' => 'waka', '!' => 'bang', '*' => 'splat', "'" => 'tick', '#' => 'hash', '^' => 'Caret', '"' => 'quote', '`' => 'back_tick', '$' => 'dollar', '-' => 'dash', '=' => 'equal', '@' => 'at', '_' => 'underscore', '%' => 'percent', '~' => 'tilde', '4' => 'four'}
  
  def initialize(code)
    @code = code 
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
    p r
    p @code
    p "*" * 100
    @code.each_char do |cod|
      if cod != ","
        line += "#{cod}"
        i += 1
      else
        p line
        line = ""
        while j <= i do
          if r[j] != ","
            j += 1
            line.concat("#{r[j]}")
          else
            j += 1
          end
        end
          puts line
          line = ""
          p i
          p j
      end
    end
  end

end

waka_code = WakaWaka.new("< > ! * \' \' #,^ \" ` $ $ -,! * = @ $ _,% * < > ~ # 4,")
waka_code.translate