//
//  ContentView.swift
//  FirstPage
//
//  Created by nighthao on 2022/9/21.
//

import SwiftUI

struct ContentView: View {
    let images = [
            Image("cat1"),
            Image("cat2"),
            Image("cat3"),
            Image("cat4"),
            Image("cat5"),
            Image("cat6"),
            Image("cat7"),
            Image("cat8"),
            Image("cat9")
        ]
    var body: some View {
        ZStack{
            HStack{
                Image(systemName: "chevron.backward")
                    .resizable()
                    .offset(x:-140)
                    .frame(width: 10, height: 15)
                Text("Nihow")
                Image(systemName: "ellipsis")
                    .resizable()
                    .frame(width: 15, height: 5)
                    .offset(x:130)
            }.offset(y:-370)
            VStack{
                VStack{
                    HStack{
                        Image("dog")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .offset(x: -20, y: 0)
                        VStack{
                            Text("9")
                            Text("Posts")
                        }
                        VStack{
                            Text("1000")
                            Text("Followers")
                        }.offset(x:10)
                        VStack{
                            Text("7")
                            Text("Following")
                        }
                        .offset(x:20)
                    }.offset(x: 0, y: -60)
                }.offset(y:20)
                VStack{
                    HStack{
                        ZStack{
                            Rectangle()
                                .foregroundColor(.blue)
                                .cornerRadius(1)
                                .frame(width: 160, height: 30)
                            Text("Follow")
                                .foregroundColor(.white)
                        }
                        ZStack{
                            Image(systemName: "rectangle.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .border(.black, width: 0.2)
                                .cornerRadius(1)
                                .frame(width: 160, height: 30)
                            Text("Message")
                        }
                        ZStack{
                            Image(systemName: "rectangle.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .border(.black, width: 0.2)
                                .cornerRadius(1)
                                .frame(width: 30, height: 30)
                            Image(systemName: "chevron.down")
                        }
                    }
                }.offset(y:-30)
                HStack{
                    Image(systemName: "person.crop.square")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                        .offset(x:170)
                    Image(systemName: "play.rectangle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                        .offset()
                    Image(systemName: "squareshape.split.3x3")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                        .offset(x:-170)
                }.offset(y:-5)
                let columns = Array(repeating: GridItem(), count: 3)
                LazyVGrid(columns: columns,spacing: 3) {
                            ForEach(images.indices, id: \.self) { item in
                                VStack {
                                    images[item].resizable()
                                        .frame(width: 130, height: 130)
                                }
                            }
                        }
            }
            HStack{
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
                    .offset(x:-70)
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    .offset(x:-35)
                Image(systemName: "plus.square")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
                    .offset(x:35)
                Image("lion")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .foregroundColor(.gray)
                    .offset(x:70)
            }.offset(y:320)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
