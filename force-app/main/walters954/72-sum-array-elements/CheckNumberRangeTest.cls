@isTest
public with sharing class CheckNumberRangeTest {
	@isTest
	static void testNumberInRange() {
		// Arrange
		Integer num = 15;
		Integer min = 10;
		Integer max = 20;
		Boolean expected = true;

		// Act
		Boolean result = CheckNumberRangeSolution.isInRange(num, min, max);

		// Assert
		Assert.areEqual(expected, result, 'Should return true for a number within the range');
	}

	@isTest
	static void testNumberBelowRange() {
		// Arrange
		Integer num = 5;
		Integer min = 10;
		Integer max = 20;
		Boolean expected = false;

		// Act
		Boolean result = CheckNumberRangeSolution.isInRange(num, min, max);

		// Assert
		Assert.areEqual(expected, result, 'Should return false for a number below the range');
	}

	@isTest
	static void testNumberAboveRange() {
		// Arrange
		Integer num = 25;
		Integer min = 10;
		Integer max = 20;
		Boolean expected = false;

		// Act
		Boolean result = CheckNumberRangeSolution.isInRange(num, min, max);

		// Assert
		Assert.areEqual(expected, result, 'Should return false for a number above the range');
	}

	@isTest
	static void testNumberAtMinBoundary() {
		// Arrange
		Integer num = 10;
		Integer min = 10;
		Integer max = 20;
		Boolean expected = true;

		// Act
		Boolean result = CheckNumberRangeSolution.isInRange(num, min, max);

		// Assert
		Assert.areEqual(
			expected,
			result,
			'Should return true for a number at the minimum boundary'
		);
	}

	@isTest
	static void testNumberAtMaxBoundary() {
		// Arrange
		Integer num = 20;
		Integer min = 10;
		Integer max = 20;
		Boolean expected = true;

		// Act
		Boolean result = CheckNumberRangeSolution.isInRange(num, min, max);

		// Assert
		Assert.areEqual(
			expected,
			result,
			'Should return true for a number at the maximum boundary'
		);
	}

	@isTest
	static void testNegativeRange() {
		// Arrange
		Integer num = -15;
		Integer min = -20;
		Integer max = -10;
		Boolean expected = true;

		// Act
		Boolean result = CheckNumberRangeSolution.isInRange(num, min, max);

		// Assert
		Assert.areEqual(expected, result, 'Should handle negative number ranges correctly');
	}

	@isTest
	static void testEdgeCaseEqualMinMax() {
		// Arrange
		Integer num = 10;
		Integer min = 10;
		Integer max = 10;
		Boolean expected = true;

		// Act
		Boolean result = CheckNumberRangeSolution.isInRange(num, min, max);

		// Assert
		Assert.areEqual(expected, result, 'Should handle case where min equals max');
	}

	@isTest
	static void testZeroInRange() {
		// Arrange
		Integer num = 0;
		Integer min = -5;
		Integer max = 5;
		Boolean expected = true;

		// Act
		Boolean result = CheckNumberRangeSolution.isInRange(num, min, max);

		// Assert
		Assert.areEqual(expected, result, 'Should handle zero correctly');
	}

	@isTest
	static void testNumberOutsideNegativeRange() {
		// Arrange
		Integer num = -5;
		Integer min = -20;
		Integer max = -10;
		Boolean expected = false;

		// Act
		Boolean result = CheckNumberRangeSolution.isInRange(num, min, max);

		// Assert
		Assert.areEqual(expected, result, 'Should return false for number outside negative range');
	}
}
