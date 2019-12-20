import Cocoa

class Solution {
    func reverse(_ x: Int) -> Int {
        var unsignedX = abs(x)
        var reverse = 0
        while unsignedX > 0 {
            let lastDigit = unsignedX % 10
            unsignedX /= 10
            reverse = reverse * 10 + lastDigit
            if reverse > Int32.max {
                return 0
            }
        }
        if x < 0 {
            return -reverse
        }
        return reverse
    }
}
