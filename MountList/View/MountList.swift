//
//  MountList.swift
//  MountList
//
//  Created by SLYTH on 09/04/21.
//

import SwiftUI

struct MountList: View {
    var body: some View {
      
      NavigationView{
        List(mount){ mount in
          NavigationLink(destination: MountDetail(mount: mount)){
            HStack{
              Image(mount.photo)
                .resizable()
                .frame(width: 48.0, height: 48.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 2)).padding(.trailing, 16)
              
              VStack(alignment: .leading){
                Text(mount.name).font(.system(size: 20)).bold()
                Text(mount.lokasi).font(.system(size: 18))
              }
            }.padding(.vertical, 8)
          }

        }.navigationBarTitle(Text("Daftar Gunung"))
      }.navigationViewStyle(StackNavigationViewStyle())
        .navigationBarTitle(Text("Daftar Gunung"), displayMode: .inline)
    }
}

struct MountList_Previews: PreviewProvider {
    static var previews: some View {
        MountList()
    }
}
