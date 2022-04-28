//
//  PeopleViewModel.swift
//  Lesson 6 module 4 experiment
//
//  Created by Terry Malden on 2022-04-20.
//

import Foundation

class PeopleViewModel: ObservableObject{
    
    @Published var people = [peopleModel]()
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showYears = true
    
    init(){
        
        
        let service = DataService()
        self.people = service.getLocalData()
        
    }
    
}
