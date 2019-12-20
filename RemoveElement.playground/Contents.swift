import Cocoa

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        for num in nums {
            if num == val, let firstIndex = nums.firstIndex(of: num) {
                nums.remove(at: firstIndex)
            }
        }
        return nums.count
    }
}
