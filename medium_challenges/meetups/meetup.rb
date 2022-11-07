require 'date'

class Meetup
  attr_reader :year, :month

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(day, schedule)
    first_day = Date.new(year, month)
    last_day = Date.new(year, month, -1)
    range = (first_day..last_day).to_a

    possible_meetings = range.select do |date|
      select_days(date, day)
    end

    schedule_meeting(possible_meetings, schedule)
  end

  private

  # rubocop: disable Metrics/CyclomaticComplexity
  def select_days(date, day)
    case day.downcase
    when "monday"    then date.monday?
    when "tuesday"   then date.tuesday?
    when "wednesday" then date.wednesday?
    when "thursday"  then date.thursday?
    when "friday"    then date.friday?
    when "saturday"  then date.saturday?
    when "sunday"    then date.sunday?
    end
  end
  # rubocop: enable Metrics/CyclomaticComplexity

  def schedule_meeting(possible_meetings, schedule)
    case schedule.downcase
    when 'first' then possible_meetings[0]
    when 'second' then possible_meetings[1]
    when 'third' then possible_meetings[2]
    when 'fourth' then possible_meetings[3]
    when 'fifth' then possible_meetings[4]
    when 'last' then  possible_meetings[-1]
    else              teenth(possible_meetings)
    end
  end

  def teenth(possible_meetings)
    range = (Date.new(year, month, 13)..Date.new(year, month, 19)).to_a

    possible_meetings.select do |date|
      range.include?(date)
    end[0]
  end
end
