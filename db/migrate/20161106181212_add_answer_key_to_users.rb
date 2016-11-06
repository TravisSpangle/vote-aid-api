class AddAnswerKeyToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :answer_key, :text
  end
end
