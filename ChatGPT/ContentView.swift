import SwiftUI

struct ContentView: View {
    @State private var loadWebView: Bool = false

    var body: some View {
        VStack {
            if loadWebView {
                WebView(url: URL(string: "https://chat.openai.com?model=gpt-4")!)
                    .frame(minWidth: 200, maxWidth: .infinity, minHeight: 200, maxHeight: .infinity)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.loadWebView = true
            }
        }
    }
}

