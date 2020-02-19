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

func readJSONUserInfo(fileName : String){
    if let path = Bundle.main.path(forResource: fileName, ofType: "json"){
        let str = try! String(contentsOfFile: path)
        print(str)
    }
}

readJSONUserInfo(fileName: "SingleUser")
