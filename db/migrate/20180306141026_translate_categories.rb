class TranslateCategories < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        I18n.with_locale(:en) do
          Category.create_translation_table!({
            :name => :string
          }, {
            :migrate_data => true
          })
        end
      end

      dir.down do
        Category.drop_translation_table! :migrate_data => true
      end
    end
  end
end
