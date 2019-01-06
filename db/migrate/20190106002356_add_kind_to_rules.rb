class AddKindToRules < ActiveRecord::Migration[5.2]
  def change
    add_column :rules, :kind, :integer
  end
end
