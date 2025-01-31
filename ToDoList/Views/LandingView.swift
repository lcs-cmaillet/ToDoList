//
//  ContentView.swift
//  ToDoList
//
//  Created by Collin Maillet on 2025-01-28.
//

import SwiftUI

//MARK: Stored properties

struct LandingView: View {
    //Item currently being added
    @State var newItemDescription: String = ""
    
    //The search text
    @State var searchText = ""
    
    //MARK; Computed properties
    var body: some View {
        
        NavigationStack{
            
            VStack {
                
                List {
                    Label(title: {
                        Text("Study for Chemistry quiz")
                    }, icon: {
                        Image(systemName: "circle")
                    })
                    Label(title: {
                        Text("Finish Computer Science assignment")
                    }, icon: {
                        Image(systemName: "circle")
                    })
                    Label(title: {
                        Text("Go for a run around campus")
                    }, icon: {
                        Image(systemName: "circle")
                    })
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter new item to, To do list", text: $newItemDescription)
                    
                    Button {
                    } label: {
                        Text("ADD")
                            .font(.caption)
                    }
                }
                .padding()
            }
            .navigationTitle("To do")
        }

    }
    
}
#Preview {
    LandingView()
}
