# write a minitest assertion that will fail if the Array list is not empty.

def test_empty_list
  list = []
  assert_empty(list)
end