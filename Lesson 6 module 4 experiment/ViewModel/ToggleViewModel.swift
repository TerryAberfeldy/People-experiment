//
//  ToggleViewModel.swift
//  Lesson 6 module 4 experiment
//
//  Created by Terry Malden on 2022-04-27.
//

import SwiftUI

struct ToggleViewModel: View {
    @EnvironmentObject var model: peopleModel
    var person: peopleModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            if $model.showName {
                Text("Name: \(person.name)")
            }
            
            if model.showAddress {
                Text("Address: \(person.address)")
            }
            
            if $model.showCompany {
                Text("Company:" + String(person.company))
            }
        

            if $model.showYears {
                Text("Years of Experience: \(person.service)")
            }
        
        }
    }
}

struct ToggleViewModel_Previews: PreviewProvider {
    static var previews: some View {
        ToggleViewModel(person: peopleModel)
            .environmentObject(peopleModel())
    }
}

