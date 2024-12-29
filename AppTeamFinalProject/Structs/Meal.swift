//
//  Meal.swift
//  AppTeamFinalProject
//
//  Created by Arya Venkatesan on 11/28/24.
//

import Foundation

struct Meal: Codable {
    var idMeal: String?
    var strMeal: String?
    var strCategory: String?
    var strInstructions: String?
    var strMealThumb: String?
    var strYoutube: String?
    
    var strIngredient1: String?
    var strIngredient2: String?
    var strIngredient3: String?
    var strIngredient4: String?
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    
    var strMeasure1: String?
    var strMeasure2: String?
    var strMeasure3: String?
    var strMeasure4: String?
    var strMeasure5: String?
    var strMeasure6: String?
    var strMeasure7: String?
    var strMeasure8: String?
    var strMeasure9: String?
    
    subscript(key: String) -> String? {
        switch key {
        case "strIngredient1": return strIngredient1
        case "strIngredient2": return strIngredient2
        case "strIngredient3": return strIngredient3
        case "strIngredient4": return strIngredient4
        case "strIngredient5": return strIngredient5
        case "strIngredient6": return strIngredient6
        case "strIngredient7": return strIngredient7
        case "strIngredient8": return strIngredient8
        case "strIngredient9": return strIngredient9
            
        case "strMeasure1": return strMeasure1
        case "strMeasure2": return strMeasure2
        case "strMeasure3": return strMeasure3
        case "strMeasure4": return strMeasure4
        case "strMeasure5": return strMeasure5
        case "strMeasure6": return strMeasure6
        case "strMeasure7": return strMeasure7
        case "strMeasure8": return strMeasure8
        case "strMeasure9": return strMeasure9
        
        default: return ""
        }
    }
}

let items = [
    Meal(idMeal: "52772", strMeal: "Teriyaki Chicken Casserole", strCategory: "Chicken", strInstructions: "Preheat oven to 350° F. Spray a 9x13-inch baking pan with non-stick spray.\r\nCombine soy sauce, ½ cup water, brown sugar, ginger and garlic in a small saucepan and cover. Bring to a boil over medium heat. Remove lid and cook for one minute once boiling.\r\nMeanwhile, stir together the corn starch and 2 tablespoons of water in a separate dish until smooth. Once sauce is boiling, add mixture to the saucepan and stir to combine. Cook until the sauce starts to thicken then remove from heat.\r\nPlace the chicken breasts in the prepared pan. Pour one cup of the sauce over top of chicken. Place chicken in oven and bake 35 minutes or until cooked through. Remove from oven and shred chicken in the dish using two forks.\r\n*Meanwhile, steam or cook the vegetables according to package directions.\r\nAdd the cooked vegetables and rice to the casserole dish with the chicken. Add most of the remaining sauce, reserving a bit to drizzle over the top when serving. Gently toss everything together in the casserole dish until combined. Return to oven and cook 15 minutes. Remove from oven and let stand 5 minutes before serving. Drizzle each serving with remaining sauce. Enjoy!", strMealThumb: "https://www.themealdb.com/images/media/meals/wvpsxx1468256321.jpg")
]

struct Search: Decodable {
    var meals: [Meal]?
}

struct Constants {
    static let baseURl = "https://www.themealdb.com/api/json/v1/1"
    static let countries = ["American", "British", "Canadian", "Chinese", "Croatian", "Dutch", "Egyptian", "Filipino", "French", "Greek", "Indian", "Irish", "Italian", "Jamaican", "Japanese", "Kenyan", "Malaysian", "Mexican", "Moroccan", "Polish", "Portuguese", "Russian", "Spanish", "Thai", "Tunisian", "Turkish", "Ukrainian", "Unknown", "Vietnamese"]
    static let countryImages = ["https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1280px-Flag_of_the_United_States.svg.png", "https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/2560px-Flag_of_the_United_Kingdom.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Canada.svg/1280px-Flag_of_Canada.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/2560px-Flag_of_the_People%27s_Republic_of_China.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/2560px-Flag_of_Croatia.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_the_Netherlands.svg/1200px-Flag_of_the_Netherlands.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/2560px-Flag_of_Egypt.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_the_Philippines.svg/1280px-Flag_of_the_Philippines.svg.png", "https://cdn.pixabay.com/photo/2013/07/12/17/17/france-151928_640.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Greece.svg/2560px-Flag_of_Greece.svg.png", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2FzNowL5xtyLe4hajNtegzUtYhvrtfhnzkg&s", "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Flag_of_Ireland.svg/1200px-Flag_of_Ireland.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/2560px-Flag_of_Italy.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Flag_of_Jamaica.svg/2560px-Flag_of_Jamaica.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/2560px-Flag_of_Japan.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Kenya.svg/2560px-Flag_of_Kenya.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Flag_of_Malaysia.svg/2560px-Flag_of_Malaysia.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/2560px-Flag_of_Mexico.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Morocco.svg/2560px-Flag_of_Morocco.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Flag_of_Poland.svg/2560px-Flag_of_Poland.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/2560px-Flag_of_Portugal.svg.png", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuFXVaBEnKbpodO0cyYPr7WLyHPiUUxtlr-g&s", "https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/2560px-Flag_of_Spain.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_Thailand.svg/2560px-Flag_of_Thailand.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Tunisia.svg/800px-Flag_of_Tunisia.svg.png?20210117054000", "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Flag_of_Turkey.svg/2560px-Flag_of_Turkey.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Flag_of_Ukraine.svg/2560px-Flag_of_Ukraine.svg.png", "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Flag_with_question_mark.svg/600px-Flag_with_question_mark.svg.png", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMF-Ly3Re3LxcOi4Bz61Rqj9iR2_DAX4EanQ&s"]
}
