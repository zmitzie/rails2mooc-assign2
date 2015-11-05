class AddTodoListToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :users, index: true, foreign_key: true
  end
end
