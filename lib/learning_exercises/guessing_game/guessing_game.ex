defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess)

  def compare(secret_number, guess) when is_number(guess) and guess === secret_number, do: "Correct"

  def compare(secret_number, guess) when is_number(guess) and abs(secret_number - guess) === 1, do: "So close"

  def compare(secret_number, guess) when is_number(guess) and guess > secret_number, do: "Too high"

  def compare(secret_number, guess) when is_number(guess) and guess < secret_number, do: "Too low"

  def compare(_secret_number, _), do: "Make a guess"
end
