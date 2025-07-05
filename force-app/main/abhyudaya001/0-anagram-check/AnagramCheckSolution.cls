public class AnagramCheckSolution {
    public static Boolean isAnagram(String s, String t) {
        if (s == null || t == null || s.length() != t.length()) {
            return false;
        }

        Map<String, Integer> countMap = new Map<String, Integer>();

        // Count characters in first string
        for (Integer i = 0; i < s.length(); i++) {
            String c = s.substring(i, i + 1);
            if (countMap.containsKey(c)) {
                countMap.put(c, countMap.get(c) + 1);
            } else {
                countMap.put(c, 1);
            }
        }

        // Subtract characters in second string
        for (Integer i = 0; i < t.length(); i++) {
            String c = t.substring(i, i + 1);
            if (!countMap.containsKey(c)) {
                return false;
            }
            countMap.put(c, countMap.get(c) - 1);
            if (countMap.get(c) == 0) {
                countMap.remove(c);
            }
        }

        return countMap.isEmpty();
    }
}
