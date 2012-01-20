require_relative '../lib/tournament'
require_relative 'test_helper'

describe Bracketeer::Tournament do
  it "must randomize the candidates" do
    matches = 0
    100.times do
      tournament = Bracketeer::Tournament.new(%w(A B C D E F))
      matches += 1 if tournament.candidates == %w(A B C D E F)
    end
    matches.must_be :<= ,2, "Matches should be less than 2 or we are very unlucky"
  end
end
