//
//  DataServices.swift
//  Lesson 6 module 4 experiment
//
//  Created by Terry Malden on 2022-04-19.
//

import Foundation
class DataService{
   
    func getLocalData() -> [peopleModel] {
       // parse local JSON file
        
        // Get a url path to the JSON file
        let pathString = Bundle.main.path(forResource: "peoples", ofType: "json")
        
        // A third way to protect against pathString being nil is a guard statement.  If it is nil it returns an empty Recipe list
        
        guard pathString != nil else {
            return [peopleModel]()
        }
        
        // Create a url object
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            
            // Create a data object
            let data = try Data(contentsOf: url)
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            do{
                let personData = try decoder.decode([peopleModel].self, from: data)
//                  Add the unique IDs
                for r in personData{
                    r.id = UUID()
                }
//                   // Add unique id to ingredients -- this loops through each recipe and gives each ingredient a unique id
//                    for i in r.ingredients{
//                        i.id = UUID()
//                    }
                    
//                }
                 // Return the recipes
                return personData
                
            }
            catch{
                // error with parsing json
                print(error)
            }
          
        
        }
        catch{
            // error with getting data
            print(error)
        }
        
        return[peopleModel]()
        
    }
    
}

    

