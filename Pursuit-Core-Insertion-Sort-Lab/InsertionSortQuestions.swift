import Foundation
import UIKit

func addElement<T>(_ element: T, to sortedArr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    var sortedArr = sortedArr
    for (index, sortedElement) in sortedArr.enumerated() {
        if isSorted(element, sortedElement) {
            sortedArr.insert(element, at: index)
            return sortedArr
        }
    }
    sortedArr.append(element)
    return sortedArr
}

// Question One
// Implement insertion sort that accepts a closure about how to sort elements
func insertionSorted<T: Comparable>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
      var sortedArr = [T]()
      for element in arr {
          sortedArr = addElement(element, to: sortedArr, by: isSorted)
      }
      return sortedArr
    }

// Question Two
// Sort an array of Ints using insertion sort without changing the position of any negative numbers
// https://www.geeksforgeeks.org/sort-an-array-without-changing-position-of-negative-numbers/
func insertionSortWithoutMovingNegatives<T: Comparable>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    var arr = arr
    var ans = [T]()
    var nums = [T]()
    var ansIndex = 0
    let zero = 0 as! T
    
    for (i,j) in arr.enumerated(){
        if (j)  >= zero{
            ans.append(j)
            ans = ans.sorted()
        }
    }
    for i in arr {
            if i  >= zero {
                nums.append(ans[ansIndex])
                ansIndex += 1
            }else{
                nums.append(i)
            }
        
        }
        
        return nums
}

// Question Three
// Implement insertion sort in place
func insertionSort<T: Comparable>(arr: inout [T], by isSorted: (T, T) -> Bool) -> [T] {
   for indexOne in 1..<arr.count {
       var indexTwo = indexOne
       while indexTwo > 0 && isSorted(arr[indexTwo], arr[indexTwo - 1]) {
           arr.swapAt(indexTwo - 1, indexTwo)
           indexTwo -= 1
       }
   }
   return arr
}

// Question Four
// Implement insertion sort on a linked list
func insertionSorted<T: Comparable>(list: LinkedList<T>, by isSorted: (T, T) -> Bool) -> LinkedList<T> {
    return list
}

