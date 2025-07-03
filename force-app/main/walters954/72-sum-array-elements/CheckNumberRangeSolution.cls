public with sharing class CheckNumberRangeSolution {
	/**
	 * Checks if a number falls within a specified range (inclusive)
	 * @param num The number to check
	 * @param min The minimum value of the range (inclusive)
	 * @param max The maximum value of the range (inclusive)
	 * @return true if the number is within the range, false otherwise
	 */
	public static Boolean isInRange(Integer num, Integer min, Integer max) {
		// Check if the number is greater than or equal to the minimum
		// and less than or equal to the maximum
		return num >= min && num <= max;
	}
}
