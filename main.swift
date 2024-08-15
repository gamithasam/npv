import Foundation

var rate: Double
var cashFlows: [Double] = []

print("Enter the discount rate: ", terminator: "")
if let input: String = readLine() {
    if let rateInput: Double = Double(input) {
        rate = rateInput
    } else {
        print("Invalid input")
        exit(0)
    }
} else {
    print("Invalid input")
    exit(0)
}

print("\nEnter cash flow for the Investment (Enter x to stop): ")
while true {
    if let input: String = readLine() {
        if input == "x" {
            break
        } else {
            if let cashFlow: Double = Double(input) {
                cashFlows.append(cashFlow)
            } else {
                print("Invalid input")
            }
        }
    }
}

func roundtoDecimalThree(_ value: Double) -> Double {
    return (value * 1000).rounded() / 1000
}

struct InvestmentData {
    var year: Int
    var investment: Double
    var disFactor: Double
    var pv: Double
}

var investmentData: [InvestmentData] = []
var npv: Double = 0

for i: Int in 0...cashFlows.count-1 {
    let disFactor: Double = roundtoDecimalThree(1 / pow(1 + rate, Double(i)))
    let pv: Double = cashFlows[i] * disFactor
    investmentData.append(InvestmentData(year: i, investment: cashFlows[i], disFactor: disFactor, pv: pv))
    npv += pv
}

func generateMarkdownTable(from data: [InvestmentData]) -> String {
    let headers: String = "| Year | Investment | Discount Factor | Present Value |"
    let separator: String = "| --- | --- | --- | --- |"
    
    let rows: String = data.map { entry -> String in
        return "| \(entry.year) | \(entry.investment) | \(entry.disFactor) | \(entry.pv) |"
    }.joined(separator: "\n")
    
    return [headers, separator, rows].joined(separator: "\n")
}

let markdownTable: String = generateMarkdownTable(from: investmentData)
print("\n")
print(markdownTable)
print("| **NPV:** | --- | --- | \(npv) |")