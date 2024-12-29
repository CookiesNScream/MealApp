//
//  HomeView.swift
//  AppTeamFinalProject
//
//  Created by Arya Venkatesan on 11/28/24.
//

import SwiftUI
import SDWebImageSwiftUI
//import SDWebImageSwiftUI

struct HomeView: View {
    //@State var random = RandomViewModel().items![0]
    
    var body: some View {
        NavigationView {
            ScrollView{
                Text("What would you like to cook today?")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Divider()
                    .padding(10)
                
                Spacer()
                ForEach(0..<Constants.countries.count) { areaIndex in
                    NavigationLink(
                        destination: NewRecipesView(area: .constant(Constants.countries[areaIndex])),
                        label: {
                            HStack {
                                Text(Constants.countries[areaIndex])
                                    .padding(4)
                                    .font(.title3)
                                Spacer()
                                WebImage(url: URL(string: Constants.countryImages[areaIndex]))
                                    .resizable()
                                    .frame(width: 165, height: 100)
                                    //.padding(.trailing, 8)
                            }
                            .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color.gray.opacity(0.3), lineWidth : 1))
                            .padding(.trailing, 15)
                            .padding(.leading, 15)
                        })
                }
//                NavigationLink(
//                    destination: RecipeDetailsView(item: random),
//                    label: {
//                        Text("Random")
//                    })
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
