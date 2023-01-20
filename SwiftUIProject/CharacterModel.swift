import Foundation

struct CharacterModel: Identifiable {
    var id: String {
        name
    }
    
    var name: String
    var universe: String
    var imageName: String
    var description: String
    
    static func makeModel() -> [CharacterModel]{
        var array: [CharacterModel] = []
        array.append(CharacterModel(name: "Batman", universe: "DC Universe", imageName: "Batman", description: "The Batman is a superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger, and debuted in the 27th issue of the comic book Detective Comics on March 30, 1939."))
        array.append(CharacterModel(name: "Joker", universe: "DC Universe", imageName: "Joker", description: "The Joker is a supervillain appearing in American comic books published by DC Comics."))
        array.append(CharacterModel(name: "Spider-Man", universe: "Marvel Universe", imageName: "Spider-man", description: "Spider-Man is a superhero appearing in American comic books published by Marvel Comics."))
        array.append(CharacterModel(name: "Ares", universe: "DC Universe", imageName: "Kratos", description: "Ares is a fictional character appearing in DC Comics publications and related media. Based on the eponymous Greek mythological figure, he is the Olympian god of war and a major recurring adversary of the superhero Wonder Woman."))
        array.append(CharacterModel(name: "Hulk", universe: "Marvel Universe", imageName: "Narrator", description: "The Hulk is a superhero appearing in American comic books published by Marvel Comics."))
        array.append(CharacterModel(name: "Daredevil", universe: "Marvel Universe", imageName: "Mario", description: "Daredevil is a fictional character appearing in American comic books published by Marvel Comics. Daredevil was created by writer-editor Stan Lee and artist Bill Everett, with an unspecified amount of input from Jack Kirby."))
        array.append(CharacterModel(name: "Alfred", universe: "DC Universe", imageName: "Severus Snape", description: "Alfred Pennyworth was the butler to Thomas Wayne and Martha Wayne, and later to their son Bruce, the first Batman."))
        array.append(CharacterModel(name: "Iron Man", universe: "Marvel Universe", imageName: "Dr Livesey", description: "Iron Man is a superhero appearing in American comic books published by Marvel Comics."))
        array.append(CharacterModel(name: "Iron Man", universe: "Marvel Universe", imageName: "Master Chief", description: "Iron Man is a superhero appearing in American comic books published by Marvel Comics."))
        array.append(CharacterModel(name: "Squirrel", universe: "Marvel Universe", imageName: "Scrat", description: "Squirrels are members of the family Sciuridae, a family that includes small or medium-size rodents."))
        return array
    }
}
