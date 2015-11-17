class Kid < Account
    has_paper_trail
    belongs_to :teacher
    has_many :time_outs

    validates_associated :teacher
end
