class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.string :tmsId

      t.timestamps
    end
    add_index :programs, [:tmsId, :title]
  end
end
