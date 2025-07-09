public with sharing class FirstUniqueCharacterSolution {
    public static String findFirstUniqueChar(String input) {
        Map<String, Integer> freqMap = new Map<String, Integer>();

        for (Integer i = 0; i < input.length(); i++) {
            String ch = input.substring(i, i + 1);
            freqMap.put(ch, freqMap.containsKey(ch) ? freqMap.get(ch) + 1 : 1);
        }

        for (Integer i = 0; i < input.length(); i++) {
            String ch = input.substring(i, i + 1);
            if (freqMap.get(ch) == 1) {
                return ch;
            }
        }
        return null;
    }
}