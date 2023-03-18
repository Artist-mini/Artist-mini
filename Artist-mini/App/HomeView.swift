//
//  HomeView.swift
//  Artist-mini
//
//  Created by 이상민 on 2023/03/18.
//

import SwiftUI

struct HomeView: View {
    //propert
    @State private var selection = 1
    
    var body: some View {
        /**첫번째 tabItem이 먼저 보여지는데 다른 페이지가 먼저 보여지게 할려면
         보이게 하고 싶은 tabItem에 .tag를 붙이고 TabView에 selection 프로퍼티에
         타입명이 binding이기에 @state로 원하는 페이지 tag값을 넣어준 후 tabview에 binding하여 넣어주면
         원하는 페이지가 처음으로 나오게 된다.
        ***/
        TabView(selection: $selection){
            Text("검색")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("검색")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }.tag(1)
            Text("갤러리")
                .tabItem {
                    Image(systemName: "photo.fill")
                    Text("갤러리")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
