@isTest
private class FirstMissingPositiveTest {
    
    @isTest static void testExample1() {
        List<Integer> input = new List<Integer>{1, 2, 0};
        Integer result = FirstMissingPositiveSolution.findFirstMissingPositive(input);
        System.assertEquals(3, result);
    }

    @isTest static void testExample2() {
        List<Integer> input = new List<Integer>{3, 4, -1, 1};
        Integer result = FirstMissingPositiveSolution.findFirstMissingPositive(input);
        System.assertEquals(2, result);
    }

    @isTest static void testExample3() {
        List<Integer> input = new List<Integer>{7, 8, 9, 11, 12};
        Integer result = FirstMissingPositiveSolution.findFirstMissingPositive(input);
        System.assertEquals(1, result);
    }

    @isTest static void testOnlyNegatives() {
        List<Integer> input = new List<Integer>{-3, -1, -2};
        Integer result = FirstMissingPositiveSolution.findFirstMissingPositive(input);
        System.assertEquals(1, result);
    }

    @isTest static void testConsecutivePositive() {
        List<Integer> input = new List<Integer>{1, 2, 3, 4, 5};
        Integer result = FirstMissingPositiveSolution.findFirstMissingPositive(input);
        System.assertEquals(6, result);
    }

    @isTest static void testEmptyList() {
        List<Integer> input = new List<Integer>();
        Integer result = FirstMissingPositiveSolution.findFirstMissingPositive(input);
        System.assertEquals(1, result);
    }

}
