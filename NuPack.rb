class NuPack

    def calculate(basePrice, person, material)

        # caculates a flat markup on all jobs of 5%
        basePricePlusFLat = basePrice + (basePrice * 0.05)

        # caculates a markup of 1.2% for each person on the job
        personMarkup = (basePricePlusFLat * 0.012) * person

        # caculates a markup for material used on the job
        materialMarkup = basePricePlusFLat * getMarkup(material.downcase)

        # total estimate for the project
        (basePricePlusFLat + personMarkup + materialMarkup).round(2)

    end

    def getMarkup (material)
        materialClassification = {"drug" => "pharmaceutical", "drugs" => "pharmaceutical", "pizza" => "food"}
        classificationMarkups = {"pharmaceutical" => 0.075, "food" => 0.13, "electronic" => 0.02}

        #classify the material into know classification or default on users input
        classifiedMaterial = materialClassification[material] || material

        #determines unique percent based on material classification ro default on no markup
        classificationMarkups[classifiedMaterial] || 0
    end
end
