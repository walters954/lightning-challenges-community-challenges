### Challenge #002: Find First Unique Character

#### Problem Description

Given a string `s`, return the **first non-repeating character** in it. If every character repeats, return `null`.

#### Examples

**Example 1**  
Input: s = `"aabbcddex"`  
Output: `"c"`

**Example 2**  
Input: s = `"aabbcc"`  
Output: `null`

**Example 3**  
Input: s = `"abcab"`  
Output: `"c"`

**Example 4**  
Input: s = `"z"`  
Output: `"z"`

#### Hints
- Use a `Map` to track character frequency  
- A second pass through the string may be needed to find the first character with frequency `1`  
- Return `null` if no unique character exists

#### Difficulty
Medium

#### Author
Abhyudaya Kandwal
