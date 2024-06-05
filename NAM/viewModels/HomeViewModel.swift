//
//  HomeViewModel.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 12.09.23.
//

import Foundation

class HomeViewModel: ObservableObject{
    @Published var headerImages : HeaderImage? = nil
    @Published var artGroups : ArtGroups? = nil
    @Published var publications : Publications? = nil
    @Published var handToHand : ArtGroups? = nil
    @Published var collaboration : ArtGroups? = nil
    
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    func getHeaderImages(){
        let url = URL(string: "https://naregatsi.org/mobile/header_images_rob_22.php")
        URLSession.shared.dataTask(with: url!){(data, response, error) in
            if error == nil{
                do{
                    self.headerImages = try JSONDecoder().decode(HeaderImage.self, from: data!)
                }catch{
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
    
    func getArtGroups(){
        let url = URL(string: "https://naregatsi.org/mobile/art_groups_rob_22.php")
        URLSession.shared.dataTask(with: url!){(data, response, error) in
            if error == nil{
                do{
                    self.artGroups = try JSONDecoder().decode(ArtGroups.self, from: data!)
                }catch{
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
    
    func getPublications(){
        let url = URL(string: "https://naregatsi.org/mobile/publications_rob_22.php")
        URLSession.shared.dataTask(with: url!){(data, response, error) in
            if error == nil{
                do{
                    self.publications = try JSONDecoder().decode(Publications.self, from: data!)
                }catch{
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
    
    func getHandToHands(){
        let url = URL(string: "https://naregatsi.org/mobile/hand_to_hand_rob_22.php")
        URLSession.shared.dataTask(with: url!){(data, response, error) in
            if error == nil{
                do{
                    self.handToHand = try JSONDecoder().decode(ArtGroups.self, from: data!)
                }catch{
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
    
    func getCollaborations(){
        let url = URL(string: "https://naregatsi.org/mobile/partnerships_rob_22.php")
        URLSession.shared.dataTask(with: url!){(data, response, error) in
            if error == nil{
                do{
                    self.collaboration = try JSONDecoder().decode(ArtGroups.self, from: data!)
                }catch{
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
