require_relative '../lib/bracket_builder'
require_relative 'test_helper'

describe Bracketeer::BracketBuilder do

  it "will match two people together" do
    Bracketeer::BracketBuilder.new(%w(A B)).brackets.must_equal [["A", "B"]]
  end

  it "will match four people together as two groups of two" do
    Bracketeer::BracketBuilder.new(%w(A B C D)).brackets.must_equal [["A", "B"],["C","D"]]
  end

  it "will match five people together as three groups of two, one with a nil element" do
    Bracketeer::BracketBuilder.new(%w(A B C D E)).brackets.must_equal [["A", "B"],["C","D"],["E", nil]]
  end

end
