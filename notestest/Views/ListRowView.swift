//
//  ListRowView.swift
//  notestest
//
//  Created by User on 28 Tishri 5783.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
                HStack {
                    Image (systemName: item.isComplited ? "checkmark.square":  "square" )
                        .foregroundColor(item.isComplited ? .green : .red)
                    Text (item.title)
                    Spacer()
                }
                .font(.title2)
                .padding(.vertical, 8)
            }
        }
struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "First ", isComplited: true)
    static var item2 = ItemModel(title: "Second ", isComplited: false)
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
}
}
