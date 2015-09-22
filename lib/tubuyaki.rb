#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: filetype=ruby

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

module Tubuyaki

def version
require 'tubuyaki/version'
print "Tubuyaki_Version : "
puts Tubuyaki::VERSION
end

def start
puts "取扱説明書".center(60,'-')
puts ""
puts "

>tubuyaki
　∟tubuyakiを起動します

>tubuyaki -v
　∟tubuyakiのバージョンを表示します

>tubuyaki -h
　∟tubuyakiのヘルプを表示します

tubuyakiはMITライセンスです

"
puts""
puts "取扱説明書".center(60,'-')
end

def soft
require 'tk'    
TkLabel.new(nil,
:text => "会話してね、楽しくどうぞ！",
:fg => "blue").pack

entry = TkEntry.new.pack

c = TkButton.new(:text => "つぶやく").pack("fill" => "x","padx" => 2.5,"pady" => 2.5)
c.command proc {TkLabel.new(nil,
        :text => ("#{entry.value}"),
            :fg => "black",
            :bg => "green").pack("fill" => "x","padx" => 2.5,"pady" => 2.5)}

enter = TkEntry.new.pack

c = TkButton.new(:text => "つぶやく").pack("fill" => "x","padx" => 2.5,"pady" => 2.5)
c.command proc {TkLabel.new(nil,
        :text => ("#{enter.value}"),
            :fg => "white",
            :bg => "red").pack("fill" => "x","padx" => 2.5,"pady" => 2.5)}

Tk.mainloop
end

module_function :soft, :version, :start
end

v = /\Aversion\z/
ve = /\A[-][v]\z/
h = /\Ahelp\z/
he = /\A[-][h]\z/

one = ARGV[0]

case
when one.nil?
Tubuyaki.soft
when one.match(v)
Tubuyaki.version
when one.match(ve)
Tubuyaki.version
when one.match(h)
Tubuyaki.start
when one.match(he)
Tubuyaki.start
else
puts ''
puts "Please choose an option."
puts "Dear my wife."
puts ''
end

# require "bundler/setup"
# You can add fixtures and/or initialization code here to make experimenting
# with your gem easier. You can also use a different console, if you like.

# (If you use this, don't forget to add pry to your Gemfile!)
# require "pry"
# Pry.start

# require "irb"
# IRB.start