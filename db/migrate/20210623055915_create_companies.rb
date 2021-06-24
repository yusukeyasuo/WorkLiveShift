class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|

      t.string     :my_company_name, null: false #会社名
      t.string     :company_image, null: false   #会社の写真
      t.integer    :prefecture_id, null: false   #所在地
      t.date       :founding_date, null: false   #創立日
      t.string     :phone_number, null: false    #電話番号
      t.string     :company_url, null: false     #会社のHP
      t.text       :company_content, null: false   #事業内容
      t.text       :company_purpose, null: false   #事業目的
      t.text       :company_environment, null: false #社内の環境
      t.text       :ingredients, null: false #職種の選択
      t.references :user, foreign_key: true
      t.timestamps
    end

    add_index :companies, :prefecture_id

  end
end
