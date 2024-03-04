defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      not legacy? and level == 0 -> :trace
      not legacy? and level == 5 -> :fatal
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)

    cond do
      label == :error || label == :fatal -> :ops
      legacy? and label == :unknown -> :dev1
      not legacy? and label == :unknown -> :dev2
      true -> false
    end
  end
end
