class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :name

      t.timestamps
    end
    add_index :keywords, [:name]
  end
end
