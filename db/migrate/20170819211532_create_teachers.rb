class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
