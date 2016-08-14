require_relative "NuPack"

describe "NuPack" do
    it "calculates the correct base mark up 5%" do
        sut = NuPack.new()
        results = sut.calculate(100)
        expect(results).to   eq(105)
    end
end
