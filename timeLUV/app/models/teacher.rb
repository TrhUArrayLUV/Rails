class Teacher < Account
    has_paper_trail
    has_many :kids

    validates :email, presence: true,
                      uniqueness: true

    validate :invalid_email

    def invalid_email
      if !email.include?("@")
        errors.add(:email, "is_invalid")
      end
    end




end
