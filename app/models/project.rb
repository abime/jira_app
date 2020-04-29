class Project
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :created_by, type: BSON::ObjectId
  has_many :todos, class_name: "Todo"
  has_and_belongs_to_many :developers, class_name: "User"
  has_and_belongs_to_many :teams, class_name: "Team"


  def manager
    User.find self.created_by
  end

end