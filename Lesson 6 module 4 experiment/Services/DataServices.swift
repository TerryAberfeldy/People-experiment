//
//  DataServices.swift
//  Lesson 6 module 4 experiment
//
//  Created by Terry Malden on 2022-04-19.
//

import Foundation
class DataService{
    func getLocalData() -> [peopleModel] {
        let pathString = Bundle.main.path(forResource: "identities", ofType: "json")
        guard pathString != nil else {
            return [peopleModel]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do{
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let personData = try decoder.decode([peopleModel].self, from: data)
                for r in personData{
                    r.id = UUID()
                }
                return personData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return[peopleModel]()
    }    
}

    

