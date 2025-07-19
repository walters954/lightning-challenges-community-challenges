public class FirstMissingPositiveSolution {
    public static Integer findFirstMissingPositive(List<Integer> nums) {
        Integer n = nums.size();

        // Replace negative numbers and zeros with a number larger than n
        for (Integer i = 0; i < n; i++) {
            if (nums[i] == null || nums[i] <= 0 || nums[i] > n) {
                nums[i] = n + 1;
            }
        }

        // Mark existing numbers
        for (Integer i = 0; i < n; i++) {
            Integer num = Math.abs(nums[i]);
            if (num >= 1 && num <= n) {
                Integer idx = num - 1;
                if (nums[idx] > 0) {
                    nums[idx] = -nums[idx];
                }
            }
        }

        // Find the first positive index
        for (Integer i = 0; i < n; i++) {
            if (nums[i] > 0) {
                return i + 1;
            }
        }

        return n + 1;
    }
}
