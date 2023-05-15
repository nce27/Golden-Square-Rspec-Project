require "improving_grammar"

RSpec.describe do
  context "given an empty string" do
    it "returns fail" do
        expect { improving_grammar("") }.to raise_error(EmptyStringException, "EmptyStringException occured: Cannot give empty string!")
    end
  end
  context "given a sentence that begins with a captial and full stop" do
    it "returns true" do
      result = improving_grammar("Hello there.")
      expect(result).to eq true
    end
  end

end