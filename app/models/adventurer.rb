class Adventurer < ActiveRecord::Base
  attr_accessible :name
end

# class Adventurer < ActiveRecord::Base
#   validates :name, presence: true, uniqueness: { case_sensitive: false }
# end