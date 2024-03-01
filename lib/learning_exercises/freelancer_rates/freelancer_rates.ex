defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(before_discount, discount),
    do: before_discount - before_discount * discount / 100

  def monthly_rate(hourly_rate, discount),
    do: (discounted_rate(hourly_rate, discount) * 22) |> ceil()

  def days_in_budget(budget, hourly_rate, discount),
    do: (budget / discounted_rate(hourly_rate, discount)) |> Float.floor(1)

  defp discounted_rate(hourly_rate, discount) do
    daily_rate(hourly_rate) |> apply_discount(discount)
  end
end
