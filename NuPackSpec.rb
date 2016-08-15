require_relative "NuPack"

describe "NuPack" do

    before do
        @sut = NuPack.new()
    end

    it "calculates the correct base mark up 5% and zero people and no material markup" do
        results = @sut.calculate(100, 0, "Other")
        expect(results).to   eq(105)
    end

    it "calculates the correct mark up for 1 person working on the job and no material markup" do
        results = @sut.calculate(100, 1, "Other")
        expect(results).to   eq(106.26)
    end

    it "calculates the correct mark up for multiple person working on the job and no material markup" do
        results = @sut.calculate(100, 2, "Other")
        expect(results).to   eq(107.52)
    end

    it "calculates markups based on material markup" do
        results = @sut.calculate(100, 2, "Pharmaceutical")
        expect(results).to   eq(115.40)
    end
end
