class NuPack

    def calculate(basePrice, person, material)

        materialHash = {"pharmaceutical" => 0.075, "food" => 0.13, "electronic" => 0.02}

        # caculates a flat markup on all jobs of 5%
        basePricePlusFLat = basePrice + (basePrice * 0.05)

        # caculates a markup of 1.2% for each person on the job
        personMarkup = (basePricePlusFLat * 0.012) * person

        # caculates a markup for material used on the job
        materialMarkupPercent = materialHash[material.downcase] || 0
        materialMarkup = basePricePlusFLat * materialMarkupPercent

        #total estimate for the project
        (basePricePlusFLat + personMarkup + materialMarkup).round(2)

    end
end
