//
//  MountRow.swift
//  MountList
//
//  Created by SLYTH on 09/04/21.
//

import SwiftUI

struct MountRow: View {
  var mount : Mount
    var body: some View {
      
        HStack{
          Image(mount.photo)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 90))
          VStack(alignment: .leading, spacing: 0){
            Text(mount.name)
              .font(.system(size: 20))
              .bold()
              .padding()
            Spacer(minLength: 2)
            Text(mount.lokasi)
              .font(.system(size: 20))
              .lineLimit(3)
              .padding()
          }.padding(.leading, 3)
        }.padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
    }
}

struct MountRow_Previews: PreviewProvider {
    static var previews: some View {
      MountRow(mount: mount[1]).previewLayout(.fixed(width: 400, height: 100))
    }
}
