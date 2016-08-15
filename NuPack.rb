class NuPack

    def calculate(basePrice, person, material)

        # caculates a flat markup on all jobs of 5%
        basePricePlusFLat = basePrice + (basePrice * 0.05)

        # caculates a markup of 1.2% for each person on the job
        personMarkup = (basePricePlusFLat * 0.012) * person

        case material
            when "Pharmaceutical"
                materialMarkup = (basePricePlusFLat * 0.075)
            when "Food"
                materialMarkup = (basePricePlusFLat * 0.13)
            when "Electronic"
                materialMarkup = (basePricePlusFLat * 0.02)
            else
                materialMarkup = 0
        end
        #total estimate for the project
        estimate = basePricePlusFLat + personMarkup + materialMarkup
        total = (estimate).round(2)
    end
end
