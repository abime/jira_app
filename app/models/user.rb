class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :email, type: String 
  field :password, type: String
  has_and_belongs_to_many :teams
  has_and_belongs_to_many :projects
  embeds_one :role 
  has_many :todos
end