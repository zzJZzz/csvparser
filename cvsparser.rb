# gives access to CSV library and methods.
# https://ruby-doc.org/stdlib-3.0.0/libdoc/csv/rdoc/CSV.html
require "csv"

# for each method to read CSV file line by line. foreach not for each
CSV.foreach (("test.csv"), headers: true, col_sep: ",") do |row|
    puts row
end
