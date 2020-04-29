class Todo
  include Mongoid::Document
  include Mongoid::Timestamps
  # include Mongoid::Enum
  
  # enum :status, [:draft, :in_progress, :dev_done]
  field :status, type: String
  field :body, type: String
  field :description, type: String
  belongs_to :project, class_name: "Project"
  belongs_to :user, class_name: "User"
end