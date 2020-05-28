import UIKit

func twoSumBruteForce(_ nums: [Int], _ target: Int) -> [Int] {
    var sol = [Int]()
    for var i: Int in 0..<nums.count {
        for var j: Int in i + 1..<nums.count {
            if nums[i] + nums[j] == target {
                sol = [i, j]
            }
        }
    }
    return sol
}

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dic: [Int: Int] = [:]
    for i in 0..<nums.count {
        let complement = target - nums[i]
        if let foundItem = dic.first(where: { $0.key == complement }), i != foundItem.value {
            return [i, foundItem.value]
        }
        dic.updateValue(i, forKey: nums[i])
    }
    return []
    
}
twoSum([3,2,4], 6)



 //Definition for singly-linked list.
 public class ListNode {
    public var val: Int
    public var next: ListNode?
     public init(_ val: Int) {
      self.val = val
      self.next = nil
    }
}
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var dummyHead: ListNode? = ListNode(0)
        var p = l1
        var q = l2
        var curr = dummyHead
        
        var carry = 0
        
        while p != nil || q != nil {
            let x = (p != nil) ? p!.val : 0
            let y = (q != nil) ? q!.val : 0
            
            let sum = x + y + carry
            carry = sum / 10
            
            curr?.next = ListNode(sum % 10)
            curr = curr?.next
            if (p != nil) { p = p?.next }
            if (q != nil) { q = q?.next }
            
        }
        
        if (carry > 0) {
            curr?.next = ListNode(carry);
        }
        return dummyHead?.next
    }
}

let l1 = ListNode(0)
let l2 = l1
l1.val = 5

print(l2.val)
