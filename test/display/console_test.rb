require_relative '../../lib/display/console'
require_relative '../test_helper'

describe Bracketeer::Display::Console do
  it "should render the brackets to STDOUT" do
    Bracketeer::Display::Console.new([['A', 'B'],['C', 'D']]).render
  end 
end
