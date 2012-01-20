require_relative '../lib/bracketeer'
require_relative 'test_helper'
require 'open3'

describe Bracketeer::Application do
  describe "on the command line" do
    describe "given 4 arguments" do
      it "should print to STDOUT the brackets" do
       std_out, std_error, process = Open3.capture3("./bin/bracketeer A B C D")
       std_out.must_match /\[\[\"[A-D]\", \"[A-D]\"\], \[\"[A-D]\", \"[A-D]\"\]\]/
      end
    end
  end
end
