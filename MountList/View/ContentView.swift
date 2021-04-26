//
//  ContentView.swift
//  MountList
//
//  Created by SLYTH on 09/04/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    MountList()
    TabView{
      MountList()
        .tabItem {
          Image(systemName: "house.fill")
          Text("Mounts")
        }
      Profile()
        .tabItem{
          Image(systemName: "person.fill")
          Text("About")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
