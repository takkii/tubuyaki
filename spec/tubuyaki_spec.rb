#require 'spec_helper'

module Tubuyaki
	module_function
	def version
		"0.0.3.1"
	end
end

describe "Tubuyaki" do
	it ":expect say '0.0.3.1' when it receives the greet() message" do
		versioning = Tubuyaki.version
		expect(versioning) == "0.0.3.1"
	end
end
