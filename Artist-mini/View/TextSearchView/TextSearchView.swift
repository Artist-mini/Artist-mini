//
//  TextSearchView.swift
//  Artist-mini
//
//  Created by 박성민 on 2023/03/31.
//

import SwiftUI

struct TextSearchView: View {
    @State var searchText: String = " "
        var body: some View {
            HStack{
                //검색 아이콘
            Image(systemName: "magnifyingglass")
                    .frame(width: .infinity, height: 10)
                .padding()
                
                // 입력할 텍스트 창
                TextField("검색하고 싶은거", text: $searchText)
                    .padding()
                
                //확인버튼
            Button {
                saveText()
            } label: {
                Image(systemName: "checkmark.circle")
                    .frame(width: .infinity, height: 10)
                    
                    .padding()
            }
        }
            .background(
                    Capsule(style: .circular)
                    .stroke(Color.blue)
                    .frame(width: 350, height: 50))
            .padding()
        }

        func saveText(){
          
            searchText = " "
        }

}

struct TextSearchView_Previews: PreviewProvider {
    static var previews: some View {
        TextSearchView()
    }
}
