public with sharing class HelloWorldSolution {
	/**
	 * Returns a greeting message. If no name is provided, returns "Hello, World!"
	 * If a name is provided, returns "Hello, [name]!"
	 *
	 * @param name The name of the person to greet (can be null or empty)
	 * @return A greeting string
	 */
	public static String sayHello(String name) {
		// Check if name is null, empty, or contains only whitespace
		if (String.isBlank(name)) {
			// Return the default greeting when no valid name is provided
			return 'Hello, World!';
		}

		// Return personalized greeting when a name is provided
		// Using String concatenation to build the greeting
		return 'Hello, ' + name + '!';
	}
}
