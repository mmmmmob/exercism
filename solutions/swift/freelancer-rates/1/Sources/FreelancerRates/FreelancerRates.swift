func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyRate: Double = Double((hourlyRate * 8) * 22) - discount
  return monthlyRate.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let workingDays: Double = budget / ((Double(hourlyRate) * 8) - discount)
  return workingDays.rounded(.down)
}
