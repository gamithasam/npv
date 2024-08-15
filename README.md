# Net Present Value (NPV) Calculator

This program calculates the Net Present Value (NPV) of an investment based on user-inputted cash flows and a discount rate. It outputs the result as a markdown table, which can be easily pasted into tools like Notion for reporting and documentation purposes.

## Features

- Accepts a discount rate and multiple cash flows as input.
- Calculates the Present Value (PV) for each cash flow using the specified discount rate.
- Outputs the results in a markdown table format, displaying the year, investment, discount factor, and present value for each cash flow.
- Displays the calculated NPV at the bottom of the table.

## Example Output

Below is an example of the output markdown table generated by the program:

| Year | Investment | Discount Factor | Present Value |
| --- | --- | --- | --- |
| 0 | 1000.0 | 1.0 | 1000.0 |
| 1 | 500.0 | 0.909 | 454.5 |
| **NPV:** | --- | --- | 1454.5 |

## How It Works

1. The program prompts the user to enter a discount rate.
2. The user then enters the cash flows for each year. Input is terminated by entering "x".
3. The program calculates the discount factor and present value for each cash flow, rounding to three decimal places.
4. The data is printed as a markdown table, including the NPV at the bottom.

## Setup

To run the program:

1. Ensure you have Swift installed on your system.
2. Clone this repository:

    ```bash
    git clone https://github.com/gamithasam/npv.git
    ```

3. Compile and run the program:

    ```bash
    swift main.swift
    ```

## Background

I developed this program to practice my Swift skills as a beginner while studying the module **Project Management for Computer Science** at NIBM. This project was inspired by the need to calculate NPV for investment evaluations. The markdown table output makes it easy to integrate the results into platforms like Notion for note-taking.

## License

This project is open-source and available under the [MIT License](LICENSE).
