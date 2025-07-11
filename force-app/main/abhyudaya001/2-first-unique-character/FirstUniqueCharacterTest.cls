@isTest
private class FirstUniqueCharacterTest {

    @isTest static void testCase1() {
        String result = FirstUniqueCharacterSolution.findFirstUniqueChar('aabbcddex');
        System.assertEquals('c', result);
    }

    @isTest static void testCase2() {
        String result = FirstUniqueCharacterSolution.findFirstUniqueChar('aabbcc');
        System.assertEquals(null, result);
    }

    @isTest static void testCase3() {
        String result = FirstUniqueCharacterSolution.findFirstUniqueChar('salesforce');
        System.assertEquals('a', result);
    }

    @isTest static void testCase4() {
        String result = FirstUniqueCharacterSolution.findFirstUniqueChar('abcabcx');
        System.assertEquals('x', result);
    }

    @isTest static void testCase5() {
        String result = FirstUniqueCharacterSolution.findFirstUniqueChar('z');
        System.assertEquals('z', result);
    }

    @isTest static void testCase6() {
        String result = FirstUniqueCharacterSolution.findFirstUniqueChar('zzzyx');
        System.assertEquals('y', result);
    }
}