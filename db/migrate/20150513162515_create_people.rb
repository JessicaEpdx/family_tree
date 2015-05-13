class CreatePeople < ActiveRecord::Migration
  def change
    create_table(:people) do |t|
      t.column(:name, :string)
    end
    create_table(:mothers) do |t|
      t.column(:name_id, :int)
    end
  end
end
