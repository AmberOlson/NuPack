class NuPack

    def calculate(basePrice, person)
        basePricePlusFLat = basePrice + (basePrice * 0.05)

        personMarkUp = (basePricePlusFLat * 0.012) * person

        estimate = basePricePlusFLat + personMarkUp

    end
end
