class University < ApplicationRecord
    has_many :courses

    validates :name, :city, :country, presence:true
    validates :name, uniqueness: true

    def self.search(search)
        where("name LIKE ? OR city LIKE ? OR state LIKE ? OR country LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
    end

    def self.attrib(attrib)
        self.all.map(&attrib).each{ |i| i.titleize }.uniq.sort
    end

end
