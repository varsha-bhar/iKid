import SwiftUI

struct JokeCardView: View {
    let jokeType: String
    
    let goodJokes: [(question: String, punchline: String)] = [
        ("What do you call fake spaghetti?", "An impasta."),
        ("Why don't scientists trust atoms?", "Because they make up everything!")
    ]

    let punJokes: [(question: String, punchline: String)] = [
        ("I'm reading a book on anti-gravity.", "It's impossible to put down!"),
        ("Did you hear about the guy who invented Lifesavers?", "He made a mint!")
    ]

    let dadJokes: [(question: String, punchline: String)] = [
        ("Why did the scarecrow win an award?", "Because he was outstanding in his field!"),
        ("Why can't you hear a pterodactyl go to the bathroom?", "Because the 'P' is silent!")
    ]

    @State private var currentIndex = 0
    @State private var isFlipped = false
    
    var jokes: [(question: String, punchline: String)] {
        switch jokeType {
        case "Good":
            return goodJokes
        case "Pun":
            return punJokes
        case "Dad":
            return dadJokes
        default:
            return []
        }
    }
    
    var body: some View {
        VStack {
            Spacer()

            // The flipping card
            FlipCardView(
                frontText: jokes[currentIndex].question,
                backText: jokes[currentIndex].punchline,
                isFlipped: $isFlipped
            )

            // No Spacer() here – keep button close to card

            Button(action: {
                if isFlipped {
                    // After seeing punchline, move to next joke
                    currentIndex = (currentIndex + 1) % jokes.count
                    isFlipped = false
                } else {
                    // Flip to show punchline
                    isFlipped = true
                }
            }) {
                Text("Next")
                    .font(.headline)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 12)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.top, 20)

            Spacer()
        }
        .padding()
        .navigationTitle(jokeType + " Jokes")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    JokeCardView(jokeType: "Pun")
}
