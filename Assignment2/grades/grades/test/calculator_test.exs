defmodule Grades.CalculatorTest do
  use ExUnit.Case
  alias Grades.Calculator



  describe "percentage_grade/1" do
    test "sample" do
      assert 85==
               Calculator.percentage_grade(%{
                 homework: [0.8],
                 labs: [1, 1, 1],
                 midterm: 0.70,
                 final: 0.9
               })
    end

    test "test_1" do
      assert 41==
        Calculator.percentage_grade(%{ homework: [], labs: [], midterm: 0.70, final: 0.9 })
    end

    test "test_2" do
      assert 88==
        Calculator.percentage_grade(%{                  homework: [0.8],                  labs: [1, 1, 1],                  midterm: 0.70,                  final: 1              })
    end

    test "test_3" do
      assert "EIN"==
        Calculator.letter_grade(%{ homework: [], labs: [], midterm: 0.70, final: 1 })
    end

    test "test_4" do
      assert "A+"==
        Calculator.letter_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 1                })
    end

    test "test_5" do
      assert "A"==
        Calculator.letter_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 0.5                })
    end

    test "test_6" do
      assert "A-"==
        Calculator.letter_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 0.333                })
    end

    test "test_7" do
      assert "B+"==
        Calculator.letter_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 0.17                })
    end

    test "test_8" do
      assert "B"==
        Calculator.letter_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 0                })
    end

    test "test_9" do
      assert "C+"==
        Calculator.letter_grade(%{                  homework: [0.84],                  labs: [1,1,1],                  midterm: 1,                  final: 0                })
    end

    test "test_10" do
      assert "C"==
        Calculator.letter_grade(%{                  homework: [0.67],                  labs: [1,1,1],                  midterm: 1,                  final: 0                })
    end

    test "test_11" do
      assert "D+"==
        Calculator.letter_grade(%{                  homework: [0.5],                  labs: [1,1,1],                  midterm: 1,                  final: 0                })
    end

    test "test_12" do
      assert "D"==
        Calculator.letter_grade(%{                  homework: [0.5],                  labs: [0.75,0.75,0.75],                  midterm: 1,                  final: 0                })
    end

    test "test_13" do
      assert "E"==
        Calculator.letter_grade(%{                  homework: [0.5],                  labs: [0.5,0.5,0.5],                  midterm: 1,                  final: 0                })
    end

    test "test_14" do
      assert "F"==
        Calculator.letter_grade(%{                  homework: [0.4],                  labs: [0.4,0.4,0.4],                  midterm: 0.8,                  final: 0                })
    end

    test "test_15" do
      assert 0==
        Calculator.numeric_grade(%{ homework: [], labs: [], midterm: 0.70, final: 1 })
    end

    test "test_16" do
      assert 10==
        Calculator.numeric_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 1                })
    end

    test "test_17" do
      assert 9==
        Calculator.numeric_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 0.5                })
    end

    test "test_18" do
      assert 8==
        Calculator.numeric_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 0.333                })
    end

    test "test_19" do
      assert 7==
        Calculator.numeric_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 0.17                })
    end

    test "test_20" do
      assert 6==
        Calculator.numeric_grade(%{                  homework: [1],                  labs: [1,1,1],                  midterm: 1,                  final: 0                })
    end

    test "test_21" do
      assert 5==
        Calculator.numeric_grade(%{                  homework: [0.84],                  labs: [1,1,1],                  midterm: 1,                  final: 0                })
    end

    test "test_22" do
      assert 4==
        Calculator.numeric_grade(%{                  homework: [0.67],                  labs: [1,1,1],                  midterm: 1,                  final: 0                })
    end

    test "test_23" do
      assert 3==
        Calculator.numeric_grade(%{                  homework: [0.5],                  labs: [1,1,1],                  midterm: 1,                  final: 0                })
    end

    test "test_24" do
      assert 2==
        Calculator.numeric_grade(%{                  homework: [0.5],                  labs: [0.75,0.75,0.75],                  midterm: 1,                  final: 0                })
    end

    test "test_25" do
      assert 1==
        Calculator.numeric_grade(%{                  homework: [0.5],                  labs: [0.5,0.5,0.5],                  midterm: 1,                  final: 0                })
    end

    test "test_26" do
      assert 0==
        Calculator.numeric_grade(%{                  homework: [0.4],                  labs: [0.4,0.4,0.4],                  midterm: 0.8,                  final: 0                })
    end

  end

end
