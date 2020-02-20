class Task < ApplicationRecord
# このファイルにバリデーションのコールバックをかく

	before_validation :set_nameless_name
	# before_validation :set_nameless_description
	belongs_to :user, optional: true

	private

	def set_nameless_name
		self.name = '名前なし' if name.blank?
		self.description = '説明なし' if description.blank?
	end

end
