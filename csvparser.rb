# gives access to CSV library and methods.
# https://ruby-doc.org/stdlib-3.0.0/libdoc/csv/rdoc/CSV.html
require "csv"

# array for storing ltv values which is in row "1" but actually row 0 because of zero based indexing
ltvarray = []

# for each method to read CSV file line by line. foreach not for each
# add rows into it's own array
CSV.foreach("test.csv", headers: true, col_sep: ",") do |row|
  ltvarray << row[0]
end

puts ltvarray
