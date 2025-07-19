### Challenge #003: First Missing Positive

#### Problem Description

Given an unsorted integer array, find the smallest missing positive integer.

Your algorithm should run in O(n) time and use constant extra space.

#### Examples

**Example 1**  
Input: `[1, 2, 0]`  
Output: `3`

**Example 2**  
Input: `[3, 4, -1, 1]`  
Output: `2`

**Example 3**  
Input: `[7, 8, 9, 11, 12]`  
Output: `1`

#### Hints

- Ignore negative numbers and zeros.
- Consider using index placement or value marking.
- Think about how you can use the array itself to store information.

#### Difficulty
Medium

#### Real-World Use Case

This problem is analogous to generating the next available unique number in systems where:
- Auto-numbering might have gaps due to deletions.
- You need to maintain sequential integrity (e.g., for queue positions, approval step IDs, custom invoice numbers).

This logic can be helpful when developing flows, LWC, or Apex that assigns IDs or steps and must fill in missing values from a sequence.

#### Author
Abhyudaya Kandwal
