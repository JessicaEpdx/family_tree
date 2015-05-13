# class Person < ActiveRecord::Base
#   belongs_to(:marriage)
#   validates(:name, {:presence => true})
# end


class Person < ActiveRecord::Base
  has_many :relationees, class_name:  "Person",
                       foreign_key: "relation_id"

  belongs_to :relationers, class_name: "Person"
  validates(:name, {:presence => true})

end
