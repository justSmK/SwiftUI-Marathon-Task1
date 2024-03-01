//
//  ContentView.swift
//  SwiftUIMarathonTask1
//
//  Created by Sergei Semko on 3/1/24.
//

import SwiftUI

fileprivate enum Constants {
    static let redRectangleHeight: CGFloat = 50
}

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            TabView {
                ScrollView {
                    VStack {
                        ForEach(1..<101) { item in
                            Text("\(item)")
                                .font(.system(size: 35))
                                .fontWeight(.regular)
                                .foregroundStyle(.gray)
                                .frame(
                                    width: geometry.size.width,
                                    alignment: .center
                                )
                        }
                    }
                }
                .tabItem {
                    Label("First", systemImage: "star.fill")
                }
                .safeAreaInset(edge: .bottom) {
                    Rectangle()
                        .foregroundStyle(.red.opacity(0.8))
                        .frame(height: Constants.redRectangleHeight)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
