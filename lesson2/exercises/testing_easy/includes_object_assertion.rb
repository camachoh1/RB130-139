# write a minitest assertion that will fail if the 'xyz' is not in the array list.

def test_include_string
  list = ['a','b','c']
  assert_includes(list, 'xyz')
end