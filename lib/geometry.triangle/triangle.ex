defmodule Triangle do
  def area({a, b, c}) do
    s = (a + b + c) / 2
    :math.sqrt(s * (s - a) * (s - b) * (s - c))
  end

  def area({b, h}) do
    1 / 2 * b * h
  end

  def area(_) do
    0
  end

  def area(a, b, c) do
    area({a, b, c})
  end

  def area(b, h) do
    area(b, h)
  end
end
