/**
 * This is the VariablesDataTypesOperators class, part of the Developer Kickstart Module 1 curriculum 
 * at Cloud Code Academy. This class serves as an introduction to the basic elements of Apex programming 
 * including variables, data types, and operators.
 * 
 * This class is an essential tool for beginner developers who are just starting their journey in Salesforce 
 * development. It covers all the foundational elements necessary to understand and write Apex code effectively.
 * 
 * Topics covered in this class include:
 * - Understanding different data types in Apex such as Integer, Decimal, Double, String, Boolean, etc.
 * - Understanding how to declare and use variables in Apex.
 * - Understanding how to use various types of operators in Apex including arithmetic operators, 
 *   comparison operators, logical operators, and more.
 *
 * Users of this class can expect to gain a strong foundation in Apex programming and be prepared for 
 * more advanced topics in Salesforce development.
 * 
 * If statements are not specifically covered in the lesson this module, but review module 2 flow control section for an overview if needed.
 * Resources: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_if_else.htm 
 * 
 * @author Temitayo Oluwalade
 */
public with sharing class VariablesDataTypesOperators {
    
    // Class level constant for milliseconds conversion
    private static final Integer MILLISECONDS_PER_MINUTE = 60000;
    
    /**
     * Question 1
     * Performs addition of two numbers.
     * If either of the numbers is null, return null.
     * Example: addition(1, 2) should return 3
     * @param a The first number.
     * @param b The second number.
     * @return The sum of the two numbers, or null if either number is null.
     */
    public static Integer addition(Integer a, Integer b) {
        if (a == null || b == null) {
            return null;
        }
        return a + b;
    }

    /**
     * Question 2
     * Performs subtraction of two numbers.
     * Example: subtraction(1, 2) should return -1
     * @param a The first number.
     * @param b The second number.
     * @return The difference between the two numbers.
     */
    public static Integer subtraction(Integer a, Integer b) {
        return a - b;
    }

    /**
     * Question 3
     * Performs multiplication of two numbers.
     * Example: multiplication(2, 3) should return 6
     * @param a The first number.
     * @param b The second number.
     * @return The product of the two numbers.
     */
    public static Integer multiplication(Integer a, Integer b) {
        return a * b;
    }

    /**
     * Question 4
     * Performs division of two numbers.
     * If the denominator is zero, return 0 to avoid division by zero error.
     * Example: division(6, 3) should return 2
     * @param a The numerator.
     * @param b The denominator.
     * @return The quotient of the division, or 0 if the denominator is zero.
     */
    public static Double division(Double a, Double b) {
        if (b == 0) {
            return 0;
        }
        return a / b;
    }

    /**
     * Question 5
     * Checks if a number is even.
     * Example: isEven(2) should return true
     * @param num The number to check.
     * @return True if the number is even, False otherwise.
     */
    public static Boolean isEven(Integer num) {
        return Math.mod(num, 2) == 0;
    }

    /**
     * Question 6
     * Checks if a number is positive.
     * Example: isPositive(2) should return true
     * @param num The number to check.
     * @return true if the number is positive, false otherwise.
     */
    public static Boolean isPositive(Integer num) {
        return num > 0;
    }

    /**
     * Question 7
     * Concatenates two strings.
     * Example: concatenateStrings('Hello', 'World') should return 'HelloWorld'
     * @param str1 The first string.
     * @param str2 The second string.
     * @return The concatenated string.
     */
    public static String concatenateStrings(String str1, String str2) {
        return str1 + str2;
    }

    /**
     * Question 8
     * Constructs a sentence by concatenating a given noun, verb, and ending punctuation.
     * Example: createSentence('cat', 'jumping', '!') should return 'The cat is jumping!'
     * @param noun The noun or subject of the sentence.
     * @param verb The verb or action of the sentence.
     * @param endingPunctuation The punctuation to end the sentence.
     * @return The complete sentence as a single String.
     */
    public static String createSentence(String noun, String verb, String endingPunctuation) {
        return 'The ' + noun + ' is ' + verb + endingPunctuation;
    }

    /**
     * Question 9
     * Checks if a date is in the past.
     * Example: isDateInPast(Date.newInstance(2019, 1, 1)) should return true
     * @param dt The date to check.
     * @return True if the date is in the past, False otherwise.
     */
    public static Boolean isDateInPast(Date dt) {
        return dt < Date.today();
    }

    /**
     * Question 10
     * Checks if a date is today or in the future.
     * Example: isDateTodayOrFuture(Date.newInstance(2019, 1, 1)) should return false
     * @param dt The date to check.
     * @return True if the date is today or in the future, False otherwise.
     */
    public static Boolean isDateTodayOrFuture(Date dt) {
        return dt >= Date.today();
    }

    /**
     * Question 11
     * Converts the number of minutes to milliseconds.
     * Example: convertMinutesToMilliseconds(1) should return 60000
     * @param minutes The number of minutes.
     * @return The number of milliseconds equivalent to the given number of minutes.
     */
    public static Integer convertMinutesToMilliseconds(Integer minutes) {
        return minutes * MILLISECONDS_PER_MINUTE;
    }

    /**
     * Question 12
     * Calculates the average of three numbers.
     * Example: averageOfThreeNumbers(1, 2, 3) should return 2
     * @param a The first number.
     * @param b The second number.
     * @param c The third number.
     * @return The average of the three numbers.
     */
    public static Double averageOfThreeNumbers(Integer a, Integer b, Integer c) {
        final Double DIVIDER = 3.0;
        return (a + b + c) / DIVIDER;
    }

    /**
     * Question 13
     * Adjusts the order of operations in an arithmetic expression.
     * Example: adjustOrderOfOperations1(5, 7, 3) should return 36
     * @param a The first number.
     * @param b The second number.
     * @param c The third number.
     * @return The result of the adjusted arithmetic expression.
     */
    public static Integer adjustOrderOfOperations1(Integer a, Integer b, Integer c) {
        return (a + b) * c;
    }

    /**
     * Question 14
     * Modifies the expression to adhere to PEMDAS rules to change its result.
     * @return The result of the expression after modifications.
     */
    public static Integer adjustOrderOfOperations2() {
        return 48 - (15 + 5) * 2;
    }

    /**
     * Question 15
     * Adjusts the order of operations in an arithmetic expression.
     * Example: adjustOrderOfOperations3(1, 2, 3, 4, 5) should return 4.5
     * @param a The first number.
     * @param b The second number.
     * @param c The third number.
     * @param d The fourth number.
     * @param e The fifth number.
     * @return The result of the adjusted arithmetic expression.
     */
    public static Double complexOrderOfOperations(Integer a, Integer b, Integer c, Integer d, Integer e) {
        return ((a * b - c) / (Double)d) + e;
    }

    /**
     * Question 16
     * Converts the temperature from Fahrenheit to Celsius.
     * Formula: Celsius = (Fahrenheit - 32) * 5/9.
     * @param fahrenheit The temperature in Fahrenheit.
     * @return The temperature in Celsius.
     */
    public static Double convertFahrenheitToCelsius(Double fahrenheit) {
        return (fahrenheit - 32.0) * 5.0 / 9.0;
    }

    /**
     * Question 17
     * Performs division and returns the result as a casted Integer.
     * Example: 3 / 2 => 1.5 should return 1
     * @param a The numerator.
     * @param b The denominator.
     * @return The quotient as a casted Integer.
     */
    public static Integer performDivisionAndCast(Double a, Double b) {
        return Integer.valueOf((a / b).intValue());
    }

    /**
     * Question 18
     * Calculate the weekly paycheck based on hourly rate and number of hours.
     * Example: calculateWeeklyPaycheck(10.0, 40.0) should return 400.0
     * @param hourlyRate The rate of pay per hour.
     * @param numberOfHours The number of hours worked in a week.
     * @return A Decimal representing the weekly paycheck.
     */
    public static Decimal calculateWeeklyPaycheck(Decimal hourlyRate, Double numberOfHours) {
        return hourlyRate * numberOfHours;
    }

    /**
     * Question 19
     * Calculate the monthly paycheck based on hourly rate and number of hours.
     * Example: calculateMonthlyPaycheck(10.0, 40.0) should return 1600.0
     * @param hourlyRate The rate of pay per hour.
     * @param numberOfHours The number of hours worked in a week.
     * @return A Decimal representing the monthly paycheck.
     */
    public static Decimal calculateMonthlyPaycheck(Decimal hourlyRate, Double numberOfHours) {
        return calculateWeeklyPaycheck(hourlyRate, numberOfHours) * 4;
    }

    /**
     * Question 20
     * Calculates the total cost with sales tax.
     * Example: calculateTotalCost(1.0, 2, 0.05) should return 2.1
     * @param pricePerUnit The price per unit of the item.
     * @param numberOfUnits The number of units purchased.
     * @param salesTaxRate The sales tax rate as a decimal.
     * @return The total cost after applying the sales tax.
     */
    public static Decimal calculateTotalCost(Decimal pricePerUnit, Integer numberOfUnits, Decimal salesTaxRate) {
        return (pricePerUnit * numberOfUnits) * (1 + salesTaxRate);
    }
}