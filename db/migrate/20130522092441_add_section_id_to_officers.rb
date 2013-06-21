class AddSectionIdToOfficers < ActiveRecord::Migration
  def change
    add_column :officers, :section_id, :integer
  end
end