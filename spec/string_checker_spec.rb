require "string_checker"

RSpec.describe "string_checker method" do
  context "when given an empty string" do
    it "fails" do
      expect { string_checker("")}.to raise_error("fail, gave an empty string")
    end
  end
end