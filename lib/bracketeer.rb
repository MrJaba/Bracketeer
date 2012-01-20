require_relative 'tournament'

module Bracketeer
  class Application
    attr_accessor :tournament, :candidates

    def initialize(argv)
      @candidates = argv
      @tournament = Tournament.new(candidates)
    end

    def run
      print tournament.brackets
    end
  end
end
