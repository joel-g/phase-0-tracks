# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


# release 0, step 1
get '/contact' do
  "1600 Pennsylvania Ave, Washington DC"
end

# release 0, step 2
get '/great_job' do
  person = params[:person]
    if person
      "Good job #{person}!"
    else
      "Good job!"
    end
end

#release 0, step 3
get "/:number1/+/:number2" do
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i
  result = (num1 + num2).to_s
end

#release 0, step 4
get '/student_name/:name' do
  output = ""
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])[0]
  output << "Name: #{student['name']}<br>"
  output << "Age: #{student['age']}<br>"
  output << "Campus: #{student['campus']}"
  output
end