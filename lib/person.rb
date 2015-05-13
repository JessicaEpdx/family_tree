# class Person < ActiveRecord::Base
#   has_many :relationees, class_name:  "Person",
#                        foreign_key: "relation_id"
#
#   belongs_to :relationers, class_name: "Person"
#   validates(:name, {:presence => true})
#
# end
#
# class Person < ActiveRecord::Base
#   has_and_belongs_to_many(:relations)
# end

class Person < ActiveRecord::Base
  has_many :relations, :through => :relationships
  has_many :relationships
end
