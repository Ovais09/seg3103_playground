defmodule Grades.Calculator do
  @moduledoc """
  Grades keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def letter_grade (%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    list = ["A+", "A", "A-", "B+", "B", "C+", "C", "D+", "D", "E", "F"]
    Enum.take_random(list,1)
  end

  def percentage_grade (%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    Enum.random(0..100)
  end

  def numeric_grade (%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    Enum.random(0..10)
  end


end
