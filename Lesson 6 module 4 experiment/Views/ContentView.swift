//
//  ContentView.swift
//  Lesson 6 module 4 experiment
//
//  Created by Terry Malden on 2022-04-19.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = PeopleViewModel()
//    @EnvironmentObject var toggle: toggleModel


    var body: some View {
        TabView{
        
        List(model.people){ r in
            VStack(alignment: .leading){Text(r.name)
                Text(r.address)
                Text(r.company)
                Text("Years of service:  " + String(r.service))
            }
            }
        .tabItem{Image(systemName: "person.2.fill")}
       
            VStack {
                Text("Display Preferences")
                    .font(.title)
                    .bold()
                
                Toggle("Show name:", isOn: $model.showName)
                
                Toggle("Show address:", isOn: $model.showAddress)
                
                Toggle("Show company:", isOn: $model.showCompany)
                
                Toggle("Show years of experience:", isOn: $model.showYears)
                
                Spacer()
            }
            .tabItem { Image(systemName: "gearshape") }
            .padding()
            
            
            
            
            
            
        }
        }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
