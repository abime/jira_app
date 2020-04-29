(1..10).to_a.each do |elem|
  user = User.create(
    name: "user#{elem}",
    email: "#{elem+1}@gmail.com",
    password: "test123"
  )
end

(1..10).to_a.each do |elem|
  Project.create(
    name: "user#{elem}",
    created_by: User.all.to_a.sample._id,
    developer_ids: User.all.to_a.pluck(:_id).sample(3)
  )
end

(1..5).to_a.each do |elem|
  Team.create(
    name: "team#{elem}",
    member_ids: User.all.to_a.pluck(:_id).sample(3),
    project_ids: Project.all.to_a.pluck(:_id).sample(3)
  )
end

(1..10).to_a.each do |elem|
  Todo.create(
    status: "team#{elem}",
    description: 'description',
    project_id: Project.all.to_a.pluck(:_id).sample,
    user_id: User.all.to_a.pluck(:_id).sample
  )
end