class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  TIME_TO_PREPARE_A_LAYER = 2
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    TIME_TO_PREPARE_A_LAYER * layers
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    TIME_TO_PREPARE_A_LAYER * number_of_layers + actual_minutes_in_oven
  end
end

lasagna = Lasagna.new
puts lasagna.remaining_minutes_in_oven(30)
puts lasagna.preparation_time_in_minutes(2)
puts lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)
