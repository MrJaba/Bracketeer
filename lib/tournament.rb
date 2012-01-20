require_relative 'bracket_builder'

module Bracketeer
  class Tournament
    attr_accessor :candidates

    def initialize(candidate_source)
      self.candidates = Array(candidate_source).shuffle
    end

    def brackets
      BracketBuilder.new(candidates).brackets
    end

  end
end
