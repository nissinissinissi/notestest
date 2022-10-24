//
//  ListView.swift
//  notestest
//
//  Created by User on 28 Tishri 5783.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    var body: some View {
        List {

            ForEach (listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            listViewModel.updateItems(item: item)
                        }
                    }
            }
        
            .onMove(perform: listViewModel.moveItem )
            
            }
        .listStyle(PlainListStyle())
        .navigationTitle("Заметки 📝 ")
        .navigationBarItems(
            leading: EditButton(),
        trailing:
            NavigationLink("+", destination: AddView()))
        
    }

}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ListView()
        }
        .environmentObject(ListViewModel() )
    }
}
