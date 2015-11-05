class AddTodolistToUser < ActiveRecord::Migration
  def change
    add_reference :todo_list, :user, index: true, foreign_key: true
  end
end
