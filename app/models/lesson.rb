class Lesson
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :title, type: String
end
