# Given a year, return the century it is in. The first century spans
# from the year 1 up to and including the year 100, the second -
#from the year 101 up to and including the year 200, etc.

def century_from_year(year)
  (year - 1) / 100 + 1
end


p century_from_year(1905)
p century_from_year(1700)
p century_from_year(8)