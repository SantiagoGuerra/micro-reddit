class User < ApplicationRecord
    validates :name, :email, presence: true
    validates :name, length: { minimum: 2 }
    validates :name, uniqueness: {case_sensitive:true}
    validates :email, uniqueness: true
    validates_each :name do |record, attr, value|
        record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
    end

    def a_method_used_for_validation_purposes
        errors.add(:name, "cannot contain the characters !@#%*()_-+=")
    end

    def validate_each(record, attribute, value)
        unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
          record.errors[attribute] << (options[:message] || "is not an email")
        end
    end
end
