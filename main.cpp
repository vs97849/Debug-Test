#include <iostream>
#include <cmath>

// Function declarations
double calculateSquare(double num);
double calculateCube(double num);
double calculateSquareRoot(double num);
void displayResult(double num);

int main() {
    // Predefined input value
    double input = 5.0; // You can change this value as needed

    // Sequential function calls
    double square = calculateSquare(input);
    double cube = calculateCube(input);
    double squareRoot = calculateSquareRoot(input);
    displayResult(square + cube + squareRoot);

    return 0;
}

// Function to calculate the square of a number
double calculateSquare(double num) {
    return num * num;
}

// Function to calculate the cube of a number
double calculateCube(double num) {
    return num * num * num;
}

// Function to calculate the square root of a number
double calculateSquareRoot(double num) {
    return std::sqrt(num);
}

// Function to display the result
void displayResult(double num) {
    std::cout << "The result of calculations is: " << num << std::endl;
}
