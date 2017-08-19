class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :designation
      t.text :decription

      t.timestamps
    end
  end
end
