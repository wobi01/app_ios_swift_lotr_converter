import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1 //main amount to count from
    
    var id: Currency { self }
    
    var image: ImageResource{
        switch self {
        case .copperPenny: .copperpenny
        case .silverPenny: .silverpenny
        case .silverPiece: .silverpiece
        case .goldPenny: .goldpenny
        case .goldPiece: .goldpiece
        }
    }
    
    var name: String{
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }
    }
    
    func converter(text: String, side: String) -> String{
        let textDouble = Double(side.replacingOccurrences(of: ",", with: ".")) ?? 0
                // If the Textfield is empty, 0 will be returned
        return String(format: "%.2f", textDouble)
    }
    
    func convert(_ amountString: String, to currency: Currency) -> String{
        var modifiedString = amountString.replacingOccurrences(of: ",", with: ".")
        guard let doubleAmount = Double(modifiedString) else {
            return ""
        }
        let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
        
        return String(format: "%.2f", convertedAmount)
    }
}
