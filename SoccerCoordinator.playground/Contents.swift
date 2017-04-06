//Dictionaries for individual players

let joeSmith: [String: Any] = ["fullName": "Joe Smith", "height": 42, "hasExperience": true, "guardianName(s)": "Jim and Jan Smith"]

let jillTanner: [String: Any] = ["fullName": "Jill Tanner", "height": 36, "hasExperience": true, "guardianName(s)": "Clara Tanner"]

let billBonn: [String: Any] = ["fullName": "Bill Bon", "height": 43, "hasExperience": true, "guardianName(s)": "Sara and Jenny Bon"]

let evaGordon: [String: Any] = ["fullName": "Eva Gordon", "height": 45, "hasExperience": false, "guardianName(s)": "Wendy and Mike Gordon"]

let mattGill: [String: Any] = ["fullName": "Matt Gill", "height": 40, "hasExperience": false, "guardianName(s)": "Charles and Sylvia Gill"]
let kimmyStein: [String: Any] = ["fullName": "Kimmy Stein", "height": 41, "hasExperience": false, "guardianName(s)": "Bill and Hillary Stein"]

let sammyAdams: [String: Any] = ["fullName": "Sammy Adams", "height": 45, "hasExperience": false, "guardianName(s)": "Jeff Adams"]

let karlSaygan: [String: Any] = ["fullName": "Karl Saygan", "height": 42, "hasExperience": true, "guardianName(s)": "Heather Bledsoe"]

let suzaneGreenberg: [String: Any] = ["fullName": "Suzane Greenberg", "height": 44, "hasExperience": true, "guardianName(s)": "Henrietta Dumas"]

let salDali: [String: Any] = ["fullName": "Sal Dali", "height": 41, "hasExperience": false, "guardianName(s)": "Gala Dali"]

let joeKavalier: [String: Any] = ["fullName": "Joe Kavalier", "height": 39, "hasExperience": false, "guardianName(s)": "Sam and Elaine Kavalier"]

let benFinkelstein: [String: Any] = ["fullName": "Ben Finkelstein", "height": 44, "hasExperience": false, "guardianName(s)": "Aaron and Jill Finkestein"]

let diegoSoto: [String: Any] = ["fullName": "Diego Soto", "height": 41, "hasExperience": true, "guardianName(s)": "Robin and Sarika Soto"]

let chloeAlaska: [String: Any] = ["fullName": "Chloe Alaska", "height": 47, "hasExperience": false, "guardianName(s)": "David and Jamie Alaska"]

let arnoldWillis: [String: Any] = ["fullName": "Arnold Willis", "height": 43, "hasExperience": false, "guardianName(s)": "Claire Willis"]

let phillipHelm: [String: Any] = ["fullName": "Phillip Helm", "height": 44, "hasExperience": true, "guardianName(s)": "Thomas Helm and Eva Jones"]

let lesClay: [String: Any] = ["fullName": "Les Clay", "height": 42, "hasExperience": true, "guardianName(s)": "Wynona Brown"]

let herschelKrustofski: [String: Any] = ["fullName": "Herschel Krustofski", "height": 45, "hasExperience": true, "guardianName(s)": "Hyman and Rachel Krustofski"]

//Collection of players

let players = [joeSmith, jillTanner, billBonn, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

//Sorting the players into experience-balanced teams

var teamSharks: [[String : Any]] = []
var teamDragons: [[String : Any]] = []
var teamRaptors: [[String : Any]] = []

for player in players {
    let experienced = "\(player["hasExperience"]!)"
    switch experienced {
    case "true":
        if teamSharks.count <= teamRaptors.count && teamSharks.count <= teamDragons.count
             {
            teamSharks.append(player)
        } else {
            if teamRaptors.count <= teamSharks.count && teamRaptors.count <= teamDragons.count  {
                teamRaptors.append(player)
            } else {
                teamDragons.append(player)
            }
        }
    case "false":
        if teamSharks.count <= teamRaptors.count && teamSharks.count <= teamDragons.count {
            teamSharks.append(player)
        } else {
            if teamRaptors.count <= teamSharks.count && teamRaptors.count <= teamDragons.count {
                teamRaptors.append(player)
            } else {
                teamDragons.append(player)
            }
        }
    default:
        break
    }
}
