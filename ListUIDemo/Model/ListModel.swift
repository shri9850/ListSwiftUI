//
//  ListModel.swift
//  ListUIDemo
//
//  Created by shree on 30/12/21.
//

import Foundation

struct ListModel {
    var name: String
    var age: Int
    var jobName: String
    var imgUrl: String
}

extension ListModel{
    static func getArrayList()->[ListModel]{
        return[ ListModel(name: "Shrikant", age: 33, jobName: "iOS Developer", imgUrl: "e1"),
                ListModel(name: "Sunil", age: 30, jobName: "Android Developer", imgUrl: "e2"),
                ListModel(name: "Soni", age: 35, jobName: "Kotlin Developer", imgUrl: "e3"),
                ListModel(name: "Shri", age: 38, jobName: "Full Stack Developer", imgUrl: "e4"),
                ListModel(name: "Sonam", age: 33, jobName: "Java Developer", imgUrl: "e1"),]
    }
}
