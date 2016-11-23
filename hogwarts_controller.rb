require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/student')


get '/students' do
    @students = Student.all()
    erb(:index)
end

get '/students/new' do
    @houses = House.all()
    erb(:new)
end

post '/students' do
    student = Student.new( params )
    student.save()
    redirect to '/students'
end

get '/students/:id' do
    @student = Student.find_by_id( params['id'] )
    erb(:show) 
end

get '/students/house/:house_id' do
    @students = Student.find_by_house( params['house_id'])
    @house = House.find_by_id( params['house_id'] )
    erb(:house)
end

get '/houses' do
    @houses = House.all()
    erb(:houses)
end