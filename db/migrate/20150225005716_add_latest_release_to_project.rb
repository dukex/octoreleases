class AddLatestReleaseToProject < ActiveRecord::Migration
  def change
    add_column :projects, :latest_release, :number
  end
end
