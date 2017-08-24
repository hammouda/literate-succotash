class FixGroupColumnName < ActiveRecord::Migration[5.0]
  def change
    change_table :groups do |t|
      t.rename :decription, :description
    end
  end
end
