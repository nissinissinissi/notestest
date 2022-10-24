//
//  AddView.swift
//  notestest
//
//  Created by User on 28 Tishri 5783.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var  textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack{

            TextField("type something here...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55 )
                .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .cornerRadius(10)
            Button(action: saveButtonPressed, label: {
                Text( "Сохранить".uppercased())
                    // .foregroundColor(.white)
                   //.font(.headline)
                 //  .frame(height: 55 )
                   // .frame(minWidth: .infinity)
                  //  .background(Color.accentColor)
                   // .cornerRadius(10)
                })
            }
            .padding(14)
                }
        .navigationTitle("новая заметка 🖋 ")
    }
    func saveButtonPressed() {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        AddView()
    }
        .environmentObject(ListViewModel())
}
}

