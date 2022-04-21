//
//  ContentView.swift
//  Lesson 6 module 4 experiment
//
//  Created by Terry Malden on 2022-04-19.
//

import SwiftUI

struct ContentView: View {
   
    @ObservedObject var model = PeopleViewModel()
    
    var body: some View {
        
        List(model.people){ r in
            
            Text(r.name)
            Text(r.address)
        }
       
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        ContentView()
    }
}
