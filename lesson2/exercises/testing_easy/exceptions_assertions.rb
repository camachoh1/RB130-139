# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.

def test_hire
  assert_raises(NoExperienceError) do
    employee = Employee.new(employee.hire)
  end
end