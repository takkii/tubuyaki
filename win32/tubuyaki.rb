require 'tk'

window = TkRoot.new{
title 'tubuyaki'
resizable [0,0]
}

window1 = TkToplevel.new{
title 'boyaki is shout!'
}
    
TkLabel.new(nil,
:text => "ひとりごと、ぼやいったー！ポチっとな！",
:fg => "blue").pack

entry = TkEntry.new.pack('side'=>'left')

c = TkButton.new(:text => "(´･ω･｀)").pack('fill'=>'x',"padx"=>2.5,"pady"=>2.5)

c.command proc {

TkLabel.new(window1,
        :text => ("#{entry.value}"),
        :fg => "white",
        :bg => "blue").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)

}

Tk.mainloop

#あー、飯食いてー、熱下がれー、熱下がれー、おはぎ食べよう。
#テストぼやき