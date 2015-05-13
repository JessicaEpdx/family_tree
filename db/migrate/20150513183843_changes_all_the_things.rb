class ChangesAllTheThings < ActiveRecord::Migration
  def change
    remove_table(:mothers)
    create_table(:marriages) do |t|
      t.column(:spouse1_id, :int)
      t.column(:spouse2_id, :int)
    end

    create_table(:offsprings) do |t|
      t.column(:marriage_id, :int)
      t.column(:)
  end
end
