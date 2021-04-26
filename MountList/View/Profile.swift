//
//  Profile.swift
//  MountList
//
//  Created by SLYTH on 09/04/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
      VStack{
        Image("IDN2")
          .resizable()
          .scaledToFit()
          .frame(width: 200, height: 400, alignment: .center)
          .clipShape(Circle())
          .shadow(radius: 10)
        
        Text("Nabil Achmad")
          .font(.title).padding(.top, 16)
        Text("abilnabilachmad@gmail.com")
          .font(.title).padding(.top, 16)
          Spacer()

      }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
