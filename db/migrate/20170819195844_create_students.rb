class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.references :classe, foreign_key: true
      t.references :parent, foreign_key: true
      t.references :group, foreign_key: true
      
      t.timestamps
    end
  end
end
