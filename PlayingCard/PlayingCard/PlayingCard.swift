//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Héctor Rogel on 14/02/2019.
//  Copyright © 2019 Héctor Rogel. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
    var description: String { return "\(rank)\(suit)"}
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String, CustomStringConvertible {
//        var description: String {
//            switch self {
//            case .spades: return PlayingCard.Suit.spades.rawValue
//            case .hearts: return PlayingCard.Suit.hearts.rawValue
//            case .diamonds: return PlayingCard.Suit.diamonds.rawValue
//            case .clubs: return PlayingCard.Suit.clubs.rawValue
//            }
//        }
        
        case spades = "♠️"
        case hearts = "♥️"
        case diamonds = "♦️"
        case clubs = "♣️"
        
        static var all = [Suit.spades, .hearts, .diamonds, . clubs]
        
        var description: String { return rawValue }
    }
    
    enum Rank: CustomStringConvertible {
//        var description: String {
//            switch self {
//            case .ace:
//                return "as"
//            case .face(let figura):
//                return figura
//            case .numeric(let number): return "\(number)"
//
//            }
//        }
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
        static var all: [Rank] {
            var allRanks = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
        var description: String {
            switch self {
            case .ace: return "A"
            case .numeric(let pips): return String(pips)
            case .face(let kind): return kind
            }
        }
    }
    
}
