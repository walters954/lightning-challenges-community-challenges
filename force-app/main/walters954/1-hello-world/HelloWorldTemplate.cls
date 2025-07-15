public with sharing class HelloWorldTemplate {
	/**
	 * Returns a greeting message. If no name is provided, returns "Hello, World!"
	 * If a name is provided, returns "Hello, [name]!"
	 *
	 * @param name The name of the person to greet (can be null or empty)
	 * @return A greeting string
	 */
	public static String sayHello(String name) {
		// TODO: Implement the greeting logic here
		//
		// Instructions:
		// 1. If name is null, empty, or whitespace, return "Hello, World!"
		// 2. If name is provided, return "Hello, " + name + "!"
		// 3. Use String.isBlank() to check if name is null, empty, or whitespace
		// 4. Remember to use single quotes for String literals in Apex

		System.debug('Debug: name parameter = ' + name);

		// Write your code here
		return null; // Replace this with your implementation
	}
}
