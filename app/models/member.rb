class Member < ApplicationRecord
    VALID_NAME_REGEX = /\A[A-Z\s]{1,20}\z/    #1文字以上20文字以下のアルファベット大文字またはスペース
    VALID_NUMBER_REGEX = /\A[0-9]{2}[A-Z]{1,2}[0-9]{4}[A-Z]\z/    #学籍番号のフォーマットに沿うか
    VALID_IDM_REGEX = /\A[0-9A-F]{16}\z/      #16桁の16進数
    
    validates :name, presence: true, format: { with: VALID_NAME_REGEX }
    validates :number, presence: true, format: { with: VALID_NUMBER_REGEX } , uniqueness: true
    validates :idm, presence: true, format: { with: VALID_IDM_REGEX } , uniqueness: true
end
