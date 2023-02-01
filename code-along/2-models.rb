# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
puts "there are #{Company.all.count} companies"

company = Company.new
# puts company.inspect
company["name"] = "Apple"
company["city"] = "Cupertino"
company["state"] = "CA"
company["url"] = "http://apple.com"
# puts company.inspect
company.save
# insert into companies () values ()
puts "there are #{Company.all.count} companies."

company = Company.new
# puts company.inspect
company["name"] = "Amazon"
company["city"] = "Seattle"
company["state"] = "WA"
company["url"] = "http://amazon.com"
# puts company.inspect
company.save
# insert into companies () values ()
puts "there are #{Company.all.count} companies."

company = Company.new
# puts company.inspect
company["name"] = "Twitter"
company["city"] = "San francisco"
company["state"] = "CA"
company["url"] = "http://twitter.com"
# puts company.inspect
company.save
# insert into companies () values ()

# 3. query companies table to find all row with California company
# all_companies = Company.all
# puts all_companies.inspect
# puts all_companies[0]#.inspect
# if do it without .inspect, computer won't give you all the information

# cali_companies = Company.where({"state" => "CA"})
# puts cali_companies.inspect

# 4. query companies table to find single row for Apple
# apple = Company.where({"name" => "Apple"})[0]
# apple = Company.find_by({"name" => "Apple"})
# puts apple.inspect

# 5. read a row's column value
# puts apple["url"]
# or
# puts apple.url

# 6. update a row's column value
# amazon = Company.find_by({"name" => "Amazon"})
# puts amazon.inspect

# amazon["url"] = "http://amazon.com"
# amazon.save

# puts amazon.inspect

# 7. delete a row
# twitter = Company.find_by({"name" => "Twitter"})
# puts twitter.inspect
# twitter.destroy

# puts "there are #{Company.all.count} companies"