require 'pry'

class Robot
  @@names_taken = []

  def name
    return @name if @name
    @name = generate_name while @@names_taken.include?(@name) || @name.nil?
    @@names_taken << @name
    
    @name
  end

  def reset
    @@names_taken.delete(@name)
    @name = nil
  end

  private

  def generate_name
    random_name = ''
    2.times { random_name << ('A'..'Z').to_a.sample }
    3.times { random_name << ('0'..'9').to_a.sample }
    random_name
  end
end

robot = Robot.new
name = robot.name
robot.reset
name2 = robot.name
# p name == name2