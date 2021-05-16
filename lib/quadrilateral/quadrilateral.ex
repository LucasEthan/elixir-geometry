defmodule Geometry.Quadrilateral do
  def perimeter({:square, side}) when is_number(side) and side > 0,
    do: {:ok, side * 4}

  def perimeter({:rhombus, side}) when is_number(side) and side > 0,
    do: perimeter({:square, side})

  def perimeter({:rectangle, h, b}) when is_number(h) and is_number(b) and h > 0 and b > 0,
   do: {:ok, 2 * (h + b)}

  def perimeter({:trapezoid, a, b, c, d})
    when is_number(a) and is_number(b) and is_number(c) and is_number(d) and a > 0 and b > 0 and
           c > 0 and d > 0, do: {:ok, a + b + c + d}

  def perimeter({:parallelogram, a, b}) when is_number(a) and is_number(b) and a > 0 and b > 0,
    do: {:ok, 2 * (a + b)}

  def perimeter(shape), do: {:error, "Invalid shape", elem(shape, 0)}

  def area({:square, side}) when is_number(side) and side > 0,
    do: {:ok, :math.pow(side, 2)}

  def area({:rhombus, d1, d2}) when is_number(d1) and is_number(d2) and d1 > 0 and d2 > 0,
    do: {:ok, d1 * d2 / 2}

  def area({:rectangle, l, w}) when is_number(l) and is_number(w) and l > 0 and w > 0,
    do: {:ok, l * w}

  def area({:trapezoid, a, b, h})
    when is_number(a) and is_number(b) and is_number(h) and a > 0 and b > 0 and h > 0,
    do: {:ok, (a + b) / 2 * h}

  def area({:parallelogram, b, h}) when is_number(b) and is_number(h) and b > 0 and h > 0,
    do: {:ok, b * h}

  def area(shape), do: {:error, "Invalid shape", elem(shape, 0)}
end
