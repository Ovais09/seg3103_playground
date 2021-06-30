defmodule Grades.Calculator do
  @moduledoc """
  Grades keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  # def letter_grade (%{homework: homework, labs: labs, midterm: midterm, final: final}) do
  #   list = ["A+", "A", "A-", "B+", "B", "C+", "C", "D+", "D", "E", "F"]
  #   Enum.take_random(list,1)
  # end

  # def percentage_grade (%{homework: homework, labs: labs, midterm: midterm, final: final}) do
  #   Enum.random(0..100)
  # end

  # def numeric_grade (%{homework: homework, labs: labs, midterm: midterm, final: final}) do
  #   Enum.random(0..10)
  # end

  def percentage_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do


    # changed code for question 2.1
    {avg_homework, avg_labs} = avg(homework, labs)

    # changed code for question 2.3
    mark = calculate_grade(avg_labs, avg_homework, midterm, final)

    round(mark * 100)

  end

  def letter_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do

     # changed code for question 2.1
    {avg_homework, avg_labs} = avg(homework, labs)

    #changed code for question 2.4
    avg_exams = avg_exams(midterm, final)

    #changed code for question 2.4
    num_labs = count_labs(labs)



    #fixed the code for question 2.2
    if failed_to_participate(avg_homework, avg_exams, num_labs)  do
      "EIN"

    else

      # changed code for question 2.3
      mark = calculate_grade(avg_labs, avg_homework, midterm, final)

      cond do
        mark > 0.895 -> "A+"
        mark > 0.845 -> "A"
        mark > 0.795 -> "A-"
        mark > 0.745 -> "B+"
        mark > 0.695 -> "B"
        mark > 0.645 -> "C+"
        mark > 0.595 -> "C"
        mark > 0.545 -> "D+"
        mark > 0.495 -> "D"
        mark > 0.395 -> "E"
        :else -> "F"
      end
    end
  end

  def numeric_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do

     # changed code for question 2.1
    {avg_homework, avg_labs} = avg(homework, labs)


    #changed code for question 2.4
    avg_exams = avg_exams(midterm, final)

    #changed code for question 2.4
    num_labs = count_labs(labs)

    #fixed the code for question 2.2
    if failed_to_participate(avg_homework, avg_exams, num_labs) do
      0

    else

      # changed code for question 2.3
      mark = calculate_grade(avg_labs, avg_homework, midterm, final)

      cond do
        mark > 0.895 -> 10
        mark > 0.845 -> 9
        mark > 0.795 -> 8
        mark > 0.745 -> 7
        mark > 0.695 -> 6
        mark > 0.645 -> 5
        mark > 0.595 -> 4
        mark > 0.545 -> 3
        mark > 0.495 -> 2
        mark > 0.395 -> 1
        :else -> 0
      end
    end
  end


  #function for question 2.1
  def avg(homework, labs) do

    avg_homework =

      if Enum.count(homework) ==     0 do
        0

      else
        Enum.sum(homework) / Enum.count(homework)

    end

    avg_labs =

      if Enum.count(labs) ==       0 do
        0

      else
        Enum.sum(labs) / Enum.count(labs)

    end

    {avg_homework, avg_labs}

  end

  #function for question 2.2
  def failed_to_participate(avg_homework, avg_exams, num_labs)   do

    avg_homework <  0.4  ||  avg_exams  <  0.4  || num_labs  < 3

  end

  #function for question 2.3
  def calculate_grade(avg_labs, avg_homework, midterm, final) do

    0.2 * avg_labs +      0.3 * avg_homework +     0.2 * midterm +     0.3 * final

  end

  #function for question 2.4
  def avg_exams(midterm, final) do

    (midterm + final) / 2

  end

  #function for question 2.4
  def count_labs(labs) do

    labs
      |> Enum.reject(fn mark -> mark < 0.25 end)
      |> Enum.count()

  end


end
