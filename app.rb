require("bundler/setup")
require('rspec')
require('pry')
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
  @new_relationship = Relationship.where("person_id = ? AND relation_id = ?", @person.id, 1)
  erb(:person)
end

post('/person/:id') do
  @person = Person.find(params.fetch("id").to_i)
  Relationship.create({:person_id => @person.id, :relation_id => 1, :relationee_id => params.fetch("mother").to_i})
  @new_relationship = Relationship.where("person_id = ? AND relation_id = ?", @person.id, 1)
  redirect('/person/:id')
  erb(:person)
end
