# User.destroy_all

user_list = 
[             
 ["Carly", "Fiorina", "Female", 1954], 
 ["Donald", "Trump", "Male", 1946], 
 ["Ben", "Carson", "Male", 1951],           
 ["Hillary", "Clinton", "Female", 1947]     
]

users = User.create! [{ username: "Fiorina" , password_digest: "123" },
              { username: "Trump" , password_digest: "123" },
              { username: "Carson" , password_digest: "123" },
              { username: "Clinton" , password_digest: "123" }]

user_list.each do |fname, lname, gender, dob|	
  User.find_by!(username: lname).create_profile(gender: gender, birth_year: dob, first_name: fname, last_name: lname)
  due = Date.today + 1.year
  TodoList.create(list_name: lname, list_due_date: due)
end

user_list.each do |fname, lname, gender, dob|
  due = Date.today + 1.year
  tl = TodoList.find_by(list_name: lname)
  5.times do
    TodoItem.create(due_date: due, title: "Cool Title", description: "Cool Description", todo_list_id: tl.id)
  end
end