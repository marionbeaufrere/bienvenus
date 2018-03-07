class TranslateTasks < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        I18n.with_locale(:en) do
          Task.create_translation_table!({
            :title => :string,
            :description => :string
          }, {
            :migrate_data => true
          })
        end
      end

      dir.down do
        Task.drop_translation_table! :migrate_data => true
      end
    end
  end
end
