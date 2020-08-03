class User < ApplicationRecord
	validates :name, length: {in: 6..12, too_long: "tên người sử dụng từ 6 đến 12 ký tự"} presence: true, uniqueness: true	

	validates	:email, length: {in: 6..30, too_long: "bạn đã tạo email quá dài"}, presence: true, uniqueness: true
end

#presence: true đây là trường bắt buộc phải có
#uniqueness: true	ko đc trùng lặp 	