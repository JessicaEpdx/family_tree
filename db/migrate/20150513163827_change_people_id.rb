class ChangePeopleId < ActiveRecord::Migration
  def change
    remove_column(:mothers, :name_id)
  end
    add_column(:mothers, :people_id, :int)
end
