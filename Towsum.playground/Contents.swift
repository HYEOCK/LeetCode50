import Cocoa

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0...nums.count {
            let val = nums[i]
            for (index, element) in nums.enumerated() {
                 if index != i, val + element == target {
                return [i, index]
                    }
                }
            }
        return [0,0]
    }
}
