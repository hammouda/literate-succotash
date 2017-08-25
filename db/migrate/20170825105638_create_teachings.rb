class CreateTeachings < ActiveRecord::Migration[5.0]
  def change
    create_table :teachings do |t|
      t.references :teacher, foreign_key: true
      t.references :classe, foreign_key: true
      t.date :year

      t.timestamps
    end
  end
end
