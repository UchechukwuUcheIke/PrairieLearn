#pragma once

/**
 * Prompts the user to use the correct executable format in stdout
 * Call this function whenever a user incorrectly uses your multiplication program.
 */
void print_multiplication_usage();

/**
 * Displays the result of your multiplication program in stdout
 * Note: this should not be called if the user provided too many/too little parameters
 *
 * @param   operand1 an integer which is the first operand for the multiplication operation
 * @param   operand2 an integer which is the second operand for the multiplication operation
 * @param   product an integer which is the result of multiplying operand1 and operand2
 */
void print_multiplication_result(int operand1, int operand2, int product);