require "improving_grammar"

RSpec.describe do
  context "given an empty string" do
    it "returns fail" do
        expect { improving_grammar("") }.to raise_error(EmptyStringException, "EmptyStringException occured: Cannot give empty string!")
    end
  end
end