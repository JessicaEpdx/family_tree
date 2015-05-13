require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @people = Person.all()
  erb(:index)
end

post('/') do
  person = params.fetch('name')
  sex = params.fetch('sex')
  @new_person = Person.new(name: person, sex: sex)
  @people = Person.all
  if @new_person.save
    redirect('/')
  else
    erb(:errors)
  end
end

get('/person/:id') do
  @person = Person.find(params.fetch("id").to_i)
  erb(:person)
end

post('/person/:id') do
  @person = Person.find(params.fetch("id").to_i)
  erb(:person)
end
