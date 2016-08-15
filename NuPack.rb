class NuPack

    def calculate(basePrice, person)

        # caculates a flat markup on all jobs of 5%
        basePricePlusFLat = basePrice + (basePrice * 0.05)

        # caculates a markup of 1.2% for each person on the job
        personMarkUp = (basePricePlusFLat * 0.012) * person

        #total estimate for the project
        estimate = basePricePlusFLat + personMarkUp

    end
end
