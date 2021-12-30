//
//  ContentView.swift
//  ListUIDemo
//
//  Created by shree on 30/12/21.
//

import SwiftUI

struct ContentView: View {
    let listArray: [ListModel] = ListModel.getArrayList()
    var body: some View {
        NavigationView{
            List(self.listArray, id: \.name){ listItem in
                NavigationLink(
                    destination: ListDetailView(listData: listItem)) {
                    cellView(listItem: listItem)
                }
            }
            .navigationBarTitle(Text("List Demo"), displayMode: .inline)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct cellView: View {
    var listItem: ListModel
    var body: some View{
        Image(listItem.imgUrl)
            .resizable()
            .frame(width: 85, height: 85, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .aspectRatio(contentMode: .fit)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        VStack(alignment: .leading){
            Text(listItem.name)
                .fontWeight(.medium)
                .font(.title)
                .font(.system(size: 40))
            
            Text(listItem.jobName)
                .fontWeight(.regular)
                .font(.title2)
            
        }
    }
    
    
}
