user = User.where(email: "test@test.com").first || User.create!(email: "test@test.com", password: "asdfasdf", first_name: "Billy", last_name: "Bob")

["Learn Vim", "Learn Ruby"].each { |name| Activity.find_or_create_by!(name: name, user_id: user.id) }
