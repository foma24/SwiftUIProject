import SwiftUI

struct CharacterRow: View {

    let imageWidth: CGFloat = UIScreen.main.bounds.width / 5
    let imageHeight: CGFloat = UIScreen.main.bounds.width / 5

    let nameWidth: CGFloat = UIScreen.main.bounds.width / 5
    let originWidth: CGFloat = UIScreen.main.bounds.width / 5

    let name: String
    let universe: String
    let imageName: String

    var body: some View {
        HStack {
            Image("\(imageName)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: imageWidth, height: imageHeight)
                .clipShape(Circle())
                .shadow(radius: 12)
                .overlay(Circle().stroke(Color.black, lineWidth: 1))

            Text("\(name)")
                .frame(width: nameWidth)

            Text("\(universe)")
                .frame(width: originWidth)
        }
    }
}

struct CharactersListView: View {

    private var characters = CharacterModel.makeModel()

    var body: some View {

        NavigationView {
            List(characters) { character in

                NavigationLink {
                    CharacterDetailsView(character: character)
                } label: {
                    CharacterRow(
                        name: character.name,
                        universe: character.universe,
                        imageName: character.imageName
                    )
                }

            }
            .navigationTitle("Characters")
        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}
