//
//  CourseList.swift
//  DesignCode
//
//  Created by ali rahal on 14/03/2024.
//

import SwiftUI

struct CourseList: View {
    var body: some View {
        VStack {
            CourseView()
        }
    }
    
}

#Preview {
    CourseList()
}

struct CourseView: View {
    @State var show = false
    
    var body: some View {
        VStack  {
            HStack {
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("Hello, World!")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                    Text("20 Sections")
                        .foregroundColor(Color.white.opacity(0.7))
                }
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "Logo1"))
            }
            Spacer()
            Image(uiImage: #imageLiteral(resourceName: "Card2"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 140, alignment: .top)
        }
        .padding(show ? 30 : 20)
        .padding(.top, show ? 30 : 20)
//        .frame(width: show ? screen.width : screen.width - 60, height: show ? screen.height : 280)
        .frame(maxWidth: show ? .infinity : screen.width - 60, maxHeight: show ? .infinity : 280 )
        .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.3), radius: 20, x:0, y:20)
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        .onTapGesture {
            self.show.toggle()
        }
        .ignoresSafeArea(.all)
    }
}
