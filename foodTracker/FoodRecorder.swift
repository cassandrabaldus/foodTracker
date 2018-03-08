//
//  FoodRecorder.swift
//  foodTracker
//
//  Created by student on 3/8/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

struct FoodData {
    var name:String
    var calories:Double
    var tally:Int
    
    init(name Name:String, calories Calories:Double, tally Tally:Int){
        name = Name
        calories = Calories
        tally = Tally
    }
}

class FoodRecorder {
    var foods:[FoodData]
    
    init() {
        foods = []
    }
    
    func loadData () {
        foods.append(FoodData(name:"Popcorn", calories:106, tally:0))
        foods.append(FoodData(name:"Coke", calories:140, tally:0))
        foods.append(FoodData(name:"Potato Chips", calories:152, tally:0))
    }
    
    func increaseTally(forItem i:Int) {
        foods[i].tally += 1
    }
    
    func getCalories(forItem i:Int) -> Double{
        return foods[i].calories * Double(foods[i].tally)
    }
    
    func report(forItem i:Int) -> String {
        return "The calories consumed for \(foods[i].name) is \(getCalories(forItem: i))"
    }
    
    func totalCalories() -> Double{
        var total:Double = 0
        
        for item in foods {
            total += item.calories
        }
        
        return total
    }
    
    func combinedReport () -> String {
        var total:Double = 0
        var i:Int = 0
        
        for _ in foods {
            total += getCalories(forItem: i)
            i += 1
        }
        
        return "Total calories consumed \(total)"
    }
    
    func reset () {
        for item in foods {
            item.tally == 0
        }
    }
}
