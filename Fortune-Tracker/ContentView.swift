//
//  ContentView.swift
//  Fortune-Tracker
//
//  Created by 莊婕妤 on 2023/8/13.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                TabBarView()
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                print("Add button was tapped")
                            }) {
                                Image(systemName: "barcode.viewfinder")
                            }
                        }
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                print("Settings button was tapped")
                            }) {
                                Image(systemName: "line.3.horizontal")
                            }
                        }
                    }
            }
            .accentColor(.orange)
        }
    }
}

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            TransactionsView()
                .tabItem {
                    Image(systemName: "list.bullet")
                }
            AddView()
                .tabItem {
                    Image(systemName: "plus")
                }
            AnalysisView()
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home Tab Content")
    }
}

struct TransactionsView: View {
    var body: some View {
        Text("Transactions Tab Content")
    }
}

struct AddView: View {
    var body: some View {
        Text("Add Tab Content")
    }
}

struct AnalysisView: View {
    var body: some View {
        Text("Analysis Tab Content")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings Tab Content")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

