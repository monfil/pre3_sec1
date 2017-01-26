class WakaWaka

  def initialize(code)
    @code = code 
    #[["<",">", "!", "*", "'", "'", "#"], ["^",'"' , "`", "$", "$", "-"], ["!", "*", "=", "@", "$", "_"], ["%", "*", "<", ">", "~", "#", "4"]]
  end  

  def translate
    dicc = {waka: ['<', '>'], bang: '!', splat: '*', tick: "'", hash: '#', caret: '^', quote: '"', back_tick: '`', dollar: '$', dash: '-', equal: '=', at: '@', underscore: '_', percent: '%', tilde: '~', four: '4'}
    p "#{dicc}"
  end

end

waka_code = WakaWaka.new
waka_code.translate