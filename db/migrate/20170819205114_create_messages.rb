class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :content
      t.string :type
      t.references :parent, foreign_key: true
      t.references :student, foreign_key: true
      t.references :teacher, foreign_key: true
    

      t.timestamps
    end
  end
end
