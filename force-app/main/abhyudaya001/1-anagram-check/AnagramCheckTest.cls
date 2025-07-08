@isTest
public class AnagramCheckTest {

    @isTest
    static void testListenSilent() {
        System.assertEquals(true, AnagramCheckSolution.isAnagram('listen', 'silent'));
    }

    @isTest
    static void testTriangleIntegral() {
        System.assertEquals(true, AnagramCheckSolution.isAnagram('triangle', 'integral'));
    }

    @isTest
    static void testHelloBello() {
        System.assertEquals(false, AnagramCheckSolution.isAnagram('hello', 'bello'));
    }

    @isTest
    static void testRatCar() {
        System.assertEquals(false, AnagramCheckSolution.isAnagram('rat', 'car'));
    }

    @isTest
    static void testEmptyStrings() {
        System.assertEquals(true, AnagramCheckSolution.isAnagram('', ''));
    }

    @isTest
    static void testNullAndString() {
        System.assertEquals(false, AnagramCheckSolution.isAnagram(null, 'abc'));
    }

    @isTest
    static void testStringAndNull() {
        System.assertEquals(false, AnagramCheckSolution.isAnagram('abc', null));
    }

    @isTest
    static void testSameLettersDifferentCounts() {
        System.assertEquals(false, AnagramCheckSolution.isAnagram('test', 'ttesst'));
    }

    @isTest
    static void testMixedOrder() {
        System.assertEquals(true, AnagramCheckSolution.isAnagram('aabbcc', 'baccab'));
    }
}
