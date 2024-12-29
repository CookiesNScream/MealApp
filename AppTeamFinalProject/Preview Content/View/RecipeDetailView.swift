//
//  RecipeDetailView.swift
//  AppTeamFinalProject
//
//  Created by Arya Venkatesan on 11/28/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct RecipeDetailsView: View {
    var mealId: String
    @ObservedObject private var viewModel = SearchViewModel()
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        ScrollView {
            VStack{
                WebImage(url: URL(string: viewModel.items?[0].strMealThumb ?? "Loading..."))
                    .resizable()
                    .scaledToFit()
                    
                Divider()
                    .padding(5)
                    .foregroundColor(.black)
                
                Text(viewModel.items?[0].strMeal ?? "Loading..")
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.brown)
                    
                Text(viewModel.items?[0].strInstructions ?? "Loading...")
                    .padding(10)
                Text(viewModel.items?[0].strYoutube ?? "Loading...")
                    .padding(15)
                    
            }
        }
        .ignoresSafeArea(.all, edges: .all)
        .onAppear {
            viewModel.fetchData(query: mealId)
        }
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(mealId: "52772")
    }
}
