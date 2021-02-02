//
//  ContentView.swift
//  Youtube.UI
//
//  Created by Farrel hasyidan on 01/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
                    }
                
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("Subcription")
                    }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View{
        NavigationView{
            Content()
                .navigationBarItems(
                    leading:
                        HStack{
                            Button(action: {print("Hello Button")}){
                                Image("youtube_logo")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 90, height: 20)
                            }
                        },
                    trailing:
                        HStack(spacing: 20){
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "tray")
                                    .foregroundColor(Color.black)
                            }
                            
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.black)
                            }
                            
                            Button(action: {print("Hello Button")}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.black)
                            }
                            
                            Button(action: {print("Hello Button")}){
                                NavigationLink(destination:
                                                SettingView()){
                                    Image("profile")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    
                                }
                            }
                        })
        }
        .navigationBarTitle("", displayMode:.inline)
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct Content: View {
    var body: some View{
        List{
            // konten 1
            VStack{
                ZStack (alignment: .bottomTrailing){
                    Image("kokbisa_bola")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("15:00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing: 20){
                    Image("kok_bisa")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("Kenapa sepak bola olahraga yang paling populer?")
                            .font(.headline)
                        HStack{
                            Text("ini adalah deskripsi video kita - 300x ditonton -9 jam yang lalu")
                                .font(.caption)
                        }
                        Spacer()
                        Image(systemName: "list.blue")
                    }
                }
            }
            // knten 2
            VStack{
                ZStack (alignment: .bottomTrailing){
                    Image("kokbisa_kesehatan")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("15:00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing: 20){
                    Image("kok_bisa")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("Apa itu 'kesehatan'? / 'ke dokteran' sebenarnya?")
                            .font(.headline)
                        HStack{
                            Text("ini adalah deskripsi video kita - 300x ditonton -9 jam yang lalu")
                                .font(.caption)
                        }
                        Spacer()
                        Image(systemName: "list.blue")
                    }
                }
            }
            //konten 3
            VStack{
                ZStack (alignment: .bottomTrailing){
                    Image("kokbisa_kimia")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("15:00")
                        .padding(.all, 5)
                        .foregroundColor(Color.white)
                        .font(.caption)
                        .background(Color.black)
                        .cornerRadius(5)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                
                HStack(spacing: 20){
                    Image("kok_bisa")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text("Apa itu ilmu 'kimia' sebenarnya? apa gunanya dihidup kita")
                            .font(.headline)
                        HStack{
                            Text("ini adalah deskripsi video kita - 300x ditonton -9 jam yang lalu")
                                .font(.caption)
                        }
                        Spacer()
                        Image(systemName: "list.blue")
                    }
                }
            }
            
            
        }
    }
}
