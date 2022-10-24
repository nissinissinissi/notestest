//
//  notestestApp.swift
//  notestest
//
//  Created by User on 28 Tishri 5783.
//

import SwiftUI

@main
struct notestestApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
             NavigationView {
                ListView()
        }
             .environmentObject(listViewModel)
            
        }
}
}
