import Cocoa

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }
        
        var prefix = ""
        var commonPrefix = ""
            
        let firstWord = strs.first!
        
        for letter in firstWord {
            prefix.append(letter)
            
            for word in strs[1...] {
                if !word.hasPrefix(prefix) {
                    return commonPrefix
                }
            }
            
            commonPrefix = prefix
        }
            
        return commonPrefix
    }
}
