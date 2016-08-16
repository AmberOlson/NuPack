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

    it "correctly changes the classification to pharmaceuticals instead of drugs" do
        results = @sut.calculate(100, 2, "Drugs")
        expect(results).to   eq(115.40)
    end

    it "calculated markup based on real world example" do
       results = @sut.calculate(1299.99, 3, "food")
       expect(results).to   eq(1591.58)

       results = @sut.calculate(12456.95, 4, "books")
       expect(results).to   eq(13707.63)

       results = @sut.calculate(5432.00, 1, "drugs")
       expect(results).to   eq(6199.81)
   end

end
