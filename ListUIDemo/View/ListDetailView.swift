//
//  ListDetailView.swift
//  ListUIDemo
//
//  Created by shree on 30/12/21.
//

import SwiftUI

struct ListDetailView: View {
    var listData: ListModel
    @State private var zoomed: Bool = false
    var body: some View {
            VStack{
                Image(listData.imgUrl)
                    .resizable()
                    .border(Color.blue, width: 2)
                    .aspectRatio(contentMode: self.zoomed ? .fit: .fill)
                    .onTapGesture {
                        withAnimation {
                            zoomed.toggle()
                        }
                        //zoomed.toggle()
                    }
                Text("Name: \(listData.name)")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.orange)
                Text("Age: \(listData.age)")
                    .font(.title)
                    .fontWeight(.regular)
                    .foregroundColor(.green)
                Text("Role: \(listData.jobName)")
                    .font(.title2)
                    .fontWeight(.regular)
                    .foregroundColor(.blue)
                
            }
            .navigationBarTitle(Text(listData.jobName), displayMode: .inline)
        
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(listData: ListModel(name: "Shrikant", age: 33, jobName: "Software Developer", imgUrl: "e1"))
    }
}
