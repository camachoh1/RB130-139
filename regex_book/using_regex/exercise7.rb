# Challenge: write a method that changes dates in the format 2016-06-17 or 2016/06/17 to the format 17.06.2016. You must use a regular expression and should use methods described in this section.

def format_date(original_date)
  date_regex = /\A(\d\d\d\d)([\-\/])(\d\d)\2(\d\d)\z/
  original_date.sub(date_regex, '\4.\3.\1')
end

#the solution saves the original pattern into the date_regex instance variable. note that a second capture group was created with the delimiter characters `-` and `/` both of them are grouped as pattern into square brackets [/-\/] and then into a parentheses in order to turn them into a capture group ([\-\/]) this becomes capture group 2 (\2) later on the regex pattern the capture group /2 is used in order to specify the second delimiter pattern.

# since a new capture group was created we now have 4 capture groups \1, \2, \3, \4. We then pass in original_date into gsub as the first argument (denoting the pattern we want to change) and use our backreferences to format the output which is this case is'\4.\3.\1'.

#note that each capture group is then delimited by a period (.)

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)