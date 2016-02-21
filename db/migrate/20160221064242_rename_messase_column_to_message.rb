class RenameMessaseColumnToMessage < ActiveRecord::Migration
  def change
    rename_column :talks, :messase, :message
  end
end
