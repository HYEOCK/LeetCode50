import Cocoa

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }

        var result = 0
        var temp = x
        while temp != 0 {
            result = result*10 + temp%10
            temp /= 10
        }
        return result == x
    }
}
