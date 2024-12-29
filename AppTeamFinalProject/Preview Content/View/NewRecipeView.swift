//
//  NewRecipeView.swift
//  AppTeamFinalProject
//
//  Created by Arya Venkatesan on 11/28/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewRecipesView: View {
    @ObservedObject private var viewModel = CountriesViewModel()
    @Binding var area: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                            Text("\(area)")
                                .font(.system(size: 27, weight: .bold))
                                //.padding(10)
                Divider()
                    .padding(15)
                
                VStack {
                    ForEach(viewModel.items ?? viewModel.placeholders, id: \.idMeal) { item in
                        NavigationLink(
                            destination: RecipeDetailsView(mealId: item.idMeal ?? "52772"),
                            label: {
                                NewRecipeView(item: item)
                            })
                    }
                }
            }
            .padding(.horizontal)
            .onAppear {
                viewModel.fetchData(query: area)
            }
        }
    }
}

struct NewRecipeView: View {
    var item: Meal
    
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                Text(item.strMeal ?? "Loading")
                    .font(.title3)
                //Text(item.strCategory ?? "Meal")
                
            }
            .padding(.leading, 8)
            Spacer()
            WebImage(url: URL(string: item.strMealThumb ?? "Loading..."))
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.trailing, 8)
        }
        .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray.opacity(0.3), lineWidth : 1))
    }
}

struct NewRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipesView(area: .constant("Canadian"))
    }
}
