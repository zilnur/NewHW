import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(.gray)
    }
}

struct MainModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(size: 16, weight: .regular, design: .default))
    }
}

extension View {
    func forTitle() -> some View {
        modifier(TitleModifier())
    }
    
    func forMain() -> some View {
        modifier(MainModifier())
    }
}
