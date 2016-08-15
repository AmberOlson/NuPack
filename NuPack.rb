class NuPack

    def calculate(basePrice, person, material)

        materialHash = {"Pharmaceutical" => 0.075, "Food" => 0.13, "Electronic" => 0.02, "Other" => 0}

        # caculates a flat markup on all jobs of 5%
        basePricePlusFLat = basePrice + (basePrice * 0.05)

        # caculates a markup of 1.2% for each person on the job
        personMarkup = (basePricePlusFLat * 0.012) * person


        # caculates a markup for material used on the job
        materialMarkupPercent = materialHash[material]
        materialMarkup = basePricePlusFLat * materialMarkupPercent

        #total estimate for the project
        estimate = basePricePlusFLat + personMarkup + materialMarkup
        total = (estimate).round(2)
    end
end
