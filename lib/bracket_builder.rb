module Bracketeer
  class BracketBuilder
    attr_accessor :candidates

    def initialize(candidates)
      self.candidates = candidates
    end 

    def brackets
      brackets = candidates.each_slice(2).to_a
      brackets.last << nil if candidates.length.odd?
      brackets
    end
  end
end
