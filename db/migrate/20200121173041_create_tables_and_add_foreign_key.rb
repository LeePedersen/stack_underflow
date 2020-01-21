class CreateTablesAndAddForeignKey < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column(:title, :string)
      t.column(:body, :string)
      t.column(:user_name, :string)

      t.timestamps()
    end

    create_table :answers do |t|
      t.column(:body, :string)
      t.column(:user_name, :string)
      t.column(:question_id, :int)

      t.timestamps
    end

    add_foreign_key :answers, :questions

  end
end
