require('spec_helper')

describe(Person) do
  it("ensures name is not blank") do
    person1 = Person.new({:name => ""})
    expect(person1.save()).to(eq(false))
  end
end
