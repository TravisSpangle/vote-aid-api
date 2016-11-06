class AddIndexToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.index :token
    end
  end
end
