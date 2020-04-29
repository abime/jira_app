class Role
  include Mongoid::Document
  include Mongoid::Timestamps
  embedded_in :user, class_name: "User"
end