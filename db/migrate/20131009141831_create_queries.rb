class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :height
      t.integer :mass

      t.timestamps
    end
  end
end
