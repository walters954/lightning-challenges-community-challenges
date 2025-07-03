@isTest
public with sharing class HelloWorldTest {
	@isTest
	static void testSayHelloWorld() {
		// Arrange
		String expected = 'Hello, World!';

		// Act
		String result = HelloWorldSolution.sayHello(null);

		// Assert
		Assert.areEqual(expected, result, 'Should return "Hello, World!"');
	}

	@isTest
	static void testSayHelloWithName() {
		// Arrange
		String name = 'Alice';
		String expected = 'Hello, Alice!';

		// Act
		String result = HelloWorldSolution.sayHello(name);

		// Assert
		Assert.areEqual(expected, result, 'Should return personalized greeting with name');
	}

	@isTest
	static void testSayHelloWithNullName() {
		// Arrange
		String name = null;
		String expected = 'Hello, World!';

		// Act
		String result = HelloWorldSolution.sayHello(name);

		// Assert
		Assert.areEqual(expected, result, 'Should return default greeting for null name');
	}

	@isTest
	static void testSayHelloWithEmptyName() {
		// Arrange
		String name = '';
		String expected = 'Hello, World!';

		// Act
		String result = HelloWorldSolution.sayHello(name);

		// Assert
		Assert.areEqual(expected, result, 'Should return default greeting for empty name');
	}

	@isTest
	static void testSayHelloWithWhitespaceName() {
		// Arrange
		String name = '   ';
		String expected = 'Hello, World!';

		// Act
		String result = HelloWorldSolution.sayHello(name);

		// Assert
		Assert.areEqual(
			expected,
			result,
			'Should return default greeting for whitespace-only name'
		);
	}

	@isTest
	static void testSayHelloWithDifferentName() {
		// Arrange
		String name = 'Bob';
		String expected = 'Hello, Bob!';

		// Act
		String result = HelloWorldSolution.sayHello(name);

		// Assert
		Assert.areEqual(expected, result, 'Should return personalized greeting for Bob');
	}

	@isTest
	static void testSayHelloWithSpecialCharacters() {
		// Arrange
		String name = 'José';
		String expected = 'Hello, José!';

		// Act
		String result = HelloWorldSolution.sayHello(name);

		// Assert
		Assert.areEqual(expected, result, 'Should handle names with special characters');
	}

	@isTest
	static void testSayHelloWithNumbers() {
		// Arrange
		String name = 'User123';
		String expected = 'Hello, User123!';

		// Act
		String result = HelloWorldSolution.sayHello(name);

		// Assert
		Assert.areEqual(expected, result, 'Should handle names with numbers');
	}

	@isTest
	static void testSayHelloWithLongName() {
		// Arrange
		String name = 'Alexandria';
		String expected = 'Hello, Alexandria!';

		// Act
		String result = HelloWorldSolution.sayHello(name);

		// Assert
		Assert.areEqual(expected, result, 'Should handle longer names correctly');
	}
}
