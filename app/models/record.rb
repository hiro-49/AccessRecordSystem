class Record < ApplicationRecord
    VALID_NAME_REGEX = /\A[A-Z\s]{1,20}\z/    #1文字以上20文字以下のアルファベット大文字またはスペース
    VALID_NUMBER_REGEX = /\A[0-9]{2}[A-Z]{1,2}[0-9]{4}[A-Z]\z/    #学籍番号のフォーマットに沿うか
    
    validates :name, presence: true, format: { with: VALID_NAME_REGEX }
    validates :number, presence: true, format: { with: VALID_NUMBER_REGEX }
    validates :temperature, presence: true, numericality: { greater_than_or_equal_to: 34.5, less_than_or_equal_to: 37.5 }
    
end
