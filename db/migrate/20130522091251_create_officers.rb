class CreateOfficers < ActiveRecord::Migration
  def change
    create_table :officers do |t|
      t.string :rank
      t.string :name

      t.timestamps
    end
  end
end
