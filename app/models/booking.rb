class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  attr_accessor :start_hour, :duration

  validate :validate_booking_hours

  def validate_booking_hours
  if start_hour.nil? || duration.nil?
    return
  end

  if duration > 5
    errors.add(:duration, "You can only book for a maximum of 5 hours!")
  end

  start_hour_integer = start_hour.to_i
  duration_integer = duration.to_i

  valid_start_hours = (10..20).to_a
  valid_duration_values = (1..5).to_a

  start_hour_is_valid = valid_start_hours.include?(start_hour_integer)
  duration_is_valid = valid_duration_values.include?(duration_integer)

  if !start_hour_is_valid || !duration_is_valid
    return
  end

  if sh + dur > 21
    errors.add(:base, "Booking must end no later than 21:00")
  end
  end
end
