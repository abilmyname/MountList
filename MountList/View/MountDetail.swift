//
//  MountDetail.swift
//  MountList
//
//  Created by SLYTH on 09/04/21.
//

import SwiftUI

struct MountDetail: View {
  var mount: Mount
  
  var body: some View {
    ScrollView{
      VStack{
        Spacer(minLength: 50)
        Image(mount.photo)
          .resizable()
          .scaledToFit()
          .frame(width: 300, height: 150, alignment: .center)
          .clipShape(Circle())
          .shadow(radius: 10)
        Spacer(minLength: 50)
        
        HStack{
          Text("Nama Gunung : ")
            .font(.system(size: 20))
          Spacer()
          Text(mount.name)
            .font(.system(size: 23))
            .bold()
            .kerning(1)
          
        }
        Spacer(minLength: 30)
        HStack{
          Text("Tinggi Gunung : ")
            .font(.system(size: 20))
          Spacer()
          Text(mount.tinggi)
            .font(.system(size: 23))
            .bold()
            .kerning(1)
          
        }
        Spacer(minLength: 30)
        HStack{
          Text("Tipe Gunung : ")
            .font(.system(size: 20))
          Spacer()
          Text(mount.tipe)
            .font(.system(size: 23))
            .bold()
            .kerning(1)
          
        }
        Spacer(minLength: 30)
        HStack{
          Text("Lokasi Gunung : ")
            .font(.system(size: 20))
          Spacer()
          Text(mount.lokasi)
            .font(.system(size: 23))
            .bold()
            .kerning(1)
          
        }
      }
    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
  }
}

struct MountDetail_Previews: PreviewProvider {
  static var previews: some View {
    MountDetail(mount: mount[0])
  }
}
