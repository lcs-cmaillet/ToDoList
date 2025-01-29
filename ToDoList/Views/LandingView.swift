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
                    
                    Text("Study for Chemitry quiz")
                    
                    Text("Finish Computer Science assignment")
                    
                    Text("Go for a run around campus")
                }
                .searchable(text: $searchText)
                
                HStack {
                    TextField("Enter new item to, To do list", text: $newItemDescription)
                    
                    Button {
                    } label: {
                        Text("ADD")
                    }
                }
                .padding()
            }
            .navigationTitle("To do:")
        }

    }
    
}
#Preview {
    LandingView()
}
