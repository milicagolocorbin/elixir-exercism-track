defmodule Lasagna do
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(min), do: expected_minutes_in_oven() - min

  def preparation_time_in_minutes(layers), do: layers * 2

  def total_time_in_minutes(layers, min), do: preparation_time_in_minutes(layers) + min

  def alarm(), do: "Ding!"
end
