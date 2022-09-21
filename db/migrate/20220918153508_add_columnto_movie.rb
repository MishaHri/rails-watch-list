class AddColumntoMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :bookmarks, :movie_id, :integer
    add_column :bookmarks, :list_id, :integer
    add_foreign_key :bookmarks, :movies
    add_foreign_key :bookmarks, :lists

  end
end
