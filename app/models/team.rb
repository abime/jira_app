class Team
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  has_and_belongs_to_many :members, class_name: "User"
  has_and_belongs_to_many :projects, class_name: "Project"
end