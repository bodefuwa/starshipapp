class Section < ActiveRecord::Base
  has_many :officers

  validates :name, presence: true, uniqueness: true

  def shirt_color
    case self.name
      when "Command"
        "red"
      when "Science"
        "yellow"
      when "Engineering"
        "yellow"
      when "Tactical"
        "yellow"
      when "Transporter Room"
        "yellow"
      when "Medical"
        "blue"        
      else 
        "gray"
    end
  end
end
