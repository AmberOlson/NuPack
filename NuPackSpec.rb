require_relative "NuPack"

describe "NuPack" do

    before do
        @sut = NuPack.new()
    end

    it "calculates the correct base mark up 5% and zero people" do
        results = @sut.calculate(100, 0)
        expect(results).to   eq(105)
    end

    it "calculates the correct mark up for 1 person working on the job" do
        results = @sut.calculate(100, 1)
        expect(results).to   eq(106.26)
    end

    it "calculates the correct mark up for multiple person working on the job" do
        results = @sut.calculate(100, 2)
        expect(results).to   eq(107.52)
    end
end
