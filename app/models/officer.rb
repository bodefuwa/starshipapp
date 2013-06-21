class Officer < ActiveRecord::Base
  belongs_to :section # officers-table: section_id

  STARFLEET_RANKS = ["Crewmen", "Ensign", "Lt.", "Lt. Commander", "Commander", "Captain", "Admiral"]

  validates :name, :rank, presence: true
  validates :rank, inclusion: { in: STARFLEET_RANKS }
  validate :captain_must_be_in_command

  # def self.officers_in( section_name )
  #   section = Section.where( name: section_name ).first
  #   where( section: section )
  # end

  def shirt_color
    return section.shirt_color if section
    ""
  end

  def promote!
    current   = STARFLEET_RANKS.index( self.rank )    
    self.rank = STARFLEET_RANKS[ current + 1 ] if current < STARFLEET_RANKS.count - 1
    save
  end

  def demote!
    current   = STARFLEET_RANKS.index( self.rank )
    self.rank = STARFLEET_RANKS[ current - 1 ] if current > 0
    save
  end

  private

  def captain_must_be_in_command
    if rank == "Captain" && section.name != "Command"
      errors.add( :section, "invalid. A Captain must be assigned to Command.")
    end
  end
end
