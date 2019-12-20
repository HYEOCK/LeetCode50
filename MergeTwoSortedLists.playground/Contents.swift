import Cocoa

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1, l2 = l2
        
        let head = ListNode(0)
        var current = head
        
        while let val1 = l1?.val, let val2 = l2?.val {
            if val1 > val2 {
                current.next = l2
                l2 = l2?.next
            } else {
                current.next = l1
                l1 = l1?.next
            }
            current = current.next!
        }
        if l1 == nil {
            current.next = l2
        } else {
            current.next = l1
        }
        
        return head.next
    }
}
