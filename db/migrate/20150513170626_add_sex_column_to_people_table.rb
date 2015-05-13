class AddSexColumnToPeopleTable < ActiveRecord::Migration
  def change
    add_column(:people, :sex, :varchar)
  end
end
