# gives access to CSV library and methods.
# https://ruby-doc.org/stdlib-3.0.0/libdoc/csv/rdoc/CSV.html
require "csv"

# array for storing ltv values which is in row "1" but actually row 0 because of zero based indexing.
# array for cac + churn
ltvarray = []
cacarray = []
churnarray = []

# for each method to read CSV file line by line. foreach not for each
# add rows into it's own array
# converter numeric is an option that allows the values to be integer or float
CSV.foreach("test.csv", headers: true, converters: :numeric, col_sep: ",") do |row|
  ltvarray << row[0]
  cacarray << row[1]
  churnarray << row[2]
end

# totals each column
totalltv = ltvarray.sum
totalcac = cacarray.sum
totalchurn = churnarray.sum

# sample manipulation of the data
results = totalltv + totalcac + totalchurn

puts results
