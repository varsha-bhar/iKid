import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("iKid")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 138/255, green: 79/255, blue: 255/255))
                    .padding(.top, 30)
                
                Spacer()
                
                VStack(spacing: 35) {
                    NavigationLink(destination: JokeCardView(jokeType: "Good Joke")) {
                        StyledButton(title: "Good")
                    }
                    NavigationLink(destination: JokeCardView(jokeType: "Pun")) {
                        StyledButton(title: "Pun")
                    }
                    NavigationLink(destination: JokeCardView(jokeType: "Dad Joke")) {
                        StyledButton(title: "Dad")
                    }
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
