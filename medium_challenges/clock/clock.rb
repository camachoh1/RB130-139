# class Clock
#   MINUTES_PER_HOUR = 60
#   MINUTES_PER_DAY = 24 * MINUTES_PER_HOUR
#   attr_reader :hours, :minutes

#   def initialize(hours, minutes=0)
#     @hours = hours
#     @minutes = minutes
#   end

#   def self.at(hour, minute=0)
#     Clock.new(hour, minute)
#   end

#   def to_s
#     format("%02d:%02d", hours, minutes)
#   end

#   def +(extra_minutes)
#     time_in_minutes = minutes_since_midnight + extra_minutes

#     while time_in_minutes >= 0
#       time_in_minutes -= MINUTES_PER_DAY
#     end

#     normalized_time = time_in_minutes % MINUTES_PER_DAY
#     hours, minutes = normalized_time.divmod(MINUTES_PER_HOUR)
#     Clock.new(hours, minutes)
#   end

#   def -(remove_minutes)
#     time_in_minutes = minutes_since_midnight - remove_minutes

#     while time_in_minutes < 0
#       time_in_minutes += MINUTES_PER_DAY
#     end

#     normalized_time = time_in_minutes % MINUTES_PER_DAY
#     hours, minutes = normalized_time.divmod(MINUTES_PER_HOUR)
#     Clock.new(hours, minutes)
#   end

#   def ==(other)
#     hours == other.hours && minutes == other.minutes
#   end

#   private

#   def minutes_since_midnight
#     (hours * MINUTES_PER_HOUR) + minutes
#   end
# end


#LS Solution

class Clock
  attr_reader :hour, :minute

  ONE_DAY = 24 * 60

  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute=0)
    new(hour, minute)
  end

  def +(add_minutes)
    minutes_since_midnight = compute_minutes_since_midnight + add_minutes
    while minutes_since_midnight >= ONE_DAY
      minutes_since_midnight -= ONE_DAY
    end

    compute_time_from(minutes_since_midnight)
  end

  def -(sub_minutes)
    minutes_since_midnight = compute_minutes_since_midnight - sub_minutes
    while minute_since_midnight < 0
      minutes_since_midnight += ONE_DAY
    end

    compute_time_from(minutes_since_midnight)
  end

  def ==(other_time)
    hour == other_time.hour && minute == other_time.minute
  end

  def to_s
    format("%02d:%02d", hour, minute)
  end

  private

  def compute_minutes_since_midnight
    total_minutes = 60 * hour + minute
    total_minutes % ONE_DAY
  end

  def compute_time_from(minutes_since_midnight)
    hours, minutes = minutes_since_midnight.divmod(60)
    hours %= 24
    self.class.new(hours, minutes)
  end
end