import Cocoa

class Solution {
    func romanToInt(_ s: String) -> Int {
        let dic: [Character: Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M":1000];
        var arr:[Int] = [Int]()
        for char in s {
            if let num = dic[char] {
                arr.append(num)
            }
        }
        var sum = 0
        while arr.count != 0 {
            if arr.count == 1 {
                sum += arr[0]
                arr.removeFirst()
                break
            }
            if arr[0] >= arr[1] {
                sum += arr[0]
                arr.removeFirst()
            } else {
                sum = sum + arr[1] - arr [0]
                arr.removeFirst()
                arr.removeFirst()
            }
        }
        return sum
    }
}
