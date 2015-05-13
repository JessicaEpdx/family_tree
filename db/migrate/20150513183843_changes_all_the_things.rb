class ChangesAllTheThings < ActiveRecord::Migration
  def change
    drop_table(:mothers)
    create_table(:relations) do |t|
      t.column(:type_of_relation, :varchar)
    end

    create_table(:relationships) do |t|
      t.column(:person_id, :int)
      t.column(:relation_id, :int)
      t.column(:relationee_id, :int)
    end
  end
end
