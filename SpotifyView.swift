import SwiftUI

struct SpotifyView: View {
    var body: some View {

        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .foregroundStyle(Color.cleangray)
                        
                    Text("Home")
                        .foregroundStyle(Color.cleangray)
                }

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(Color.cleangray)
                    Text("Search")
                        .foregroundStyle(Color.cleangray)
                }

            LibraryView()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                        .foregroundStyle(Color.cleangray)
                    Text("Your Library")
                        .foregroundStyle(Color.cleangray)
                }

            CreateView()
                .tabItem {
                    Image(systemName: "plus")
                        .foregroundStyle(Color.cleangray)
                    Text("Create")
                        .foregroundStyle(Color.cleangray)
                }
                
        }
        .accentColor(.white)
        
        
    }
}
extension Color {
    static let spotifyBackground = Color(red: 12/255, green: 12/255, blue: 12/255)
}

#Preview{
    SpotifyView()
}

// Telas simuladas
struct HomeView: View {
    var body: some View {
        ZStack {
            Color.spotifyBackground
                .ignoresSafeArea()
            VStack (alignment: .leading) {
                            // FIXADO NO TOPO
                            HStack {
                                Image(.GOAT)
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .clipShape(Circle())
                                FilterButtonView(title: "All", isActive: true)
                                FilterButtonView(title: "Music", isActive: false)
                                FilterButtonView(title: "Podcast", isActive: false)
                            }
                            .padding(5)
                            .background(Color.spotifyBackground) 
                            .zIndex(1)

            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                  
                        
                        
                        HStack {
                            Playlists(imagecover: "Graduation", albumname: "Graduation")
                            Playlists(imagecover: "utopia", albumname: "Utopia")
                        }
                        HStack {
                            Playlists(imagecover: "MAD2", albumname: "M.A.D 2")
                            Playlists(imagecover: "HurryUpTomorrow", albumname: "Hurry Up Tomorrow")
                        }
                        HStack {
                            Playlists(imagecover: "LifeofaDON", albumname: "Life of a DON")
                            Playlists(imagecover: "Rodeo", albumname: "Rodeo")
                        }
                        HStack {
                            Playlists(imagecover: "MUSIC", albumname: "MUSIC")
                            Playlists(imagecover: "TheBends", albumname: "The Bends")
                        }
                        Spacer()
                        VStack (alignment: .leading, spacing: 10) {
                            Text ("New releases for you")
                                .foregroundStyle(.white)
                                .font(.system(size: 25, weight: .bold, design: .default))
                            Spacer()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    AlbumBigGrade(albumimg: "HurryUpTomorrow", albumname: "Hurry Up Tomorrow", artistname: "The Weeknd")
                                        .padding(2)
                                    AlbumBigGrade(albumimg: "MUSIC", albumname: "MUSIC", artistname: "Plaiboy Carti")
                                        .padding(2)
                                    AlbumBigGrade(albumimg: "utopia", albumname: "Utopia", artistname: "Travis Scott")
                                        .padding(2)
                                }
                                
                                
                            }
                                
                        }
                        .padding(10)
                        Spacer()
                        VStack (alignment: .leading, spacing: 10) {
                            Text ("Jump back in")
                                .foregroundStyle(.white)
                                .font(.system(size: 25, weight: .bold, design: .default))
                            Spacer()
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    AlbumBigGrade(albumimg: "Currents", albumname: "Currents", artistname: "Tame Impala")
                                        .padding(2)
                                    AlbumBigCircle(albumimg: "GOAT", artistname: "YE")
                                        .padding(2)
                                    AlbumBigGrade(albumimg: "utopia", albumname: "Utopia", artistname: "Travis Scott")
                                        .padding(2)
                                    AlbumBigGrade(albumimg: "Toxicity", albumname: "Toxicity", artistname: "System of a Down")
                                        .padding(2)
                                }
                                
                                
                            }
                                
                        }
                        .padding(10)
                    }
                
                     
                }

            }
            .padding(20)
        }
    }
}
struct SearchView: View {
    var body: some View {
        Text("Search View")
    }
}

struct LibraryView: View {
    var body: some View {
        Text("Library View")
    }
}

struct CreateView: View {
    var body: some View {
        Text("Create View")
    }
}

struct Playlists: View {
    var imagecover: String
    var albumname: String
    var body: some View {
        HStack {
            Image (imagecover)
                .resizable()
                .frame(width: 60, height: 60, alignment: .leading)
            Text (albumname)
                .foregroundStyle(.white)
                .font(.system(size: 15, weight: .bold, design: .default))
            
            
            
        }
        .frame(width: 180, height: 60, alignment: .leading)
        .background(Color.darknewGray)
        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        .padding(3)
    }
}

struct AlbumBigGrade: View {
    var albumimg: String
    var albumname: String
    var artistname: String
    var body: some View {
        VStack (alignment: .leading){
            Image (albumimg)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Text (albumname)
                .foregroundStyle(.white)
                .font(.system(size: 15, weight: .medium, design: .default))
            Text (artistname)
                .foregroundStyle(.cleangray)
                .font(.system(size: 15, weight: .light, design: .default))
                
            
            
        }
        .frame(width: 130, height: 180, alignment: .leading)
        .padding(2)
    }
}
struct AlbumBigCircle: View {
    var albumimg: String
    var artistname: String
    var body: some View {
        VStack {
            Image (albumimg)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
            Text (artistname)
                .foregroundStyle(.white)
                .font(.system(size: 15, weight: .medium, design: .default))
            
        }
        .frame(width: 130, height: 160, alignment: .leading)
        .padding(2)
    }
}

struct FilterButtonView: View {
    let title: String
    let isActive: Bool

    var body: some View {
        Button {
            withAnimation(.easeInOut(duration: 0.5)) {
                print("\(title) tapped")
            }
        } label: {
            Text(title)
                .frame(width: title == "All" ? 50 : 80, height: 30)
                .foregroundStyle(isActive ? .black : .white)
                .background(isActive ? Color.green : Color.darknewGray)
                .cornerRadius(40)
        }
    }
}
