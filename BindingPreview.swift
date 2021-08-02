import SwiftUI

struct BindingPreview: View {
    /*
     @Binding を利用する場合、Preview 側でも変数を宣言し、
     構造体の引数に代入しないとエラーになる
    */
    @Binding var BindingString: String
    var body: some View {
        Text(BindingString)
    }
}

struct BindingPreview_Previews: PreviewProvider {
    // ここで変数の宣言
    @State static var StateString = "Hello, World!"
    static var previews: some View {
        BindingPreview(BindingString: $StateString)
    }
}
