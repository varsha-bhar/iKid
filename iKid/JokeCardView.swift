import SwiftUI

// Joke arrays
let goodJokes: [(question: String, punchline: String)] = [
    ("What do you call fake spaghetti?", "An impasta."),
    ("Why do programmers prefer dark mode?", "Because light attracts bugs!")
]

let punJokes: [(question: String, punchline: String)] = [
    ("I'm reading a book on anti-gravity.", "It's impossible to put down!"),
    ("I once heard a joke about amnesia.", "But I forgot how it goes.")
]

let dadJokes: [(question: String, punchline: String)] = [
    ("I thought the dryer was shrinking my clothes.", "Turns out it was the refrigerator all along."),
    ("I got carded at a liquor store.", "My Blockbuster card accidentally fell out. The cashier said never mind.")
]

struct JokeCardView: View {
    let jokeType: String

    @State private var currentIndex = 0
    @State private var showingPunchline = false

    var jokes: [(question: String, punchline: String)] {
        if jokeType.contains("Good") {
            return goodJokes
        }
        else if jokeType.contains("Pun") {
            return punJokes
        }
        else if jokeType.contains("Dad") {
            return dadJokes
        }
        else {
            return []
        }
    }

    var displayedText: String {
        return showingPunchline ? jokes[currentIndex].punchline : jokes[currentIndex].question
    }

    var body: some View {
        VStack {
            Spacer()

            Text(displayedText)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()

            Button(action: {
                if showingPunchline {
                    currentIndex = (currentIndex + 1) % jokes.count
                    showingPunchline = false
                }
                else {
                    showingPunchline = true
                }
            })
            {
                Text(showingPunchline ? "Next" : "Flip")
                    .font(.headline)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 12)
                    .background(Color(red: 195/255, green: 190/255, blue: 247/255))
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.top, 20)

            Spacer()
        }
        .padding()
        .navigationTitle(jokeType)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView()
}
