//
//  main.swift
//  ReadTextJSON
//
//  Created by Nikita Sandhu on 2020-02-19.
//  Copyright © 2020 Nikita Sandhu. All rights reserved.
//

import Foundation

func readTextFile(fileName : String){
    print(Bundle.main.bundlePath)
    if let path = Bundle.main.path(forResource: fileName, ofType: "txt"){
//        print(path)
        let str = try! String(contentsOfFile: path)
        print(str)
        
//        let str = try? String(contentsOfFile: path)
//        if let s = str{
//            print(s)
//        }else{
//            print("Error")
//        }

    }
}

readTextFile(fileName: "data")

//func readJSONUserInfo(fileName : String){
//    if let path = Bundle.main.path(forResource: fileName, ofType: "json"){
//        let str = try! String(contentsOfFile: path)
//        print(str)
//    }
//}

func readJSONUserInfo(fileName : String){
    let filePath = Bundle.main.url(forResource: fileName, withExtension: "json")
    guard let path = filePath else{
        print("Invalid File Path found")
        return
    }
    
    guard let data = try? Data(contentsOf: path) else{
        print("Error while read Data from URL")
        return
    }
    
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
        print("Error while reading JSON Data from file")
        return
    }
    
    print(json)
    
    if let userDictionary = json as? [String : Any]{
        let id = userDictionary["id"] ?? "No ID Found"
        print(id)
        
        if let addressDictionary = userDictionary["address"] as? [String : Any]{
            print(addressDictionary["city"]!)
        }
//        print(userDictionary)
    }
}

readJSONUserInfo(fileName: "SingleUser")
