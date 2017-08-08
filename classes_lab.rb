# Part A
class CodeclanStudent

  def initialize( name, cohort)
    @student_name = name
    @cohort_number = cohort
  end

  def get_student_name
    return @student_name
  end

  def get_student_cohort
    return @cohort_number
  end

  def set_student_name(name)
    @student_name = name
  end

  def set_student_cohort(cohort)
    @cohort_number = cohort
  end

  def can_you_speak
    return "I can even sing!"
  end

  def say_favourite_language(language)
    return "I love #{language.capitalize()}!"
  end
end

#Part B

class SportingTeam

  attr_reader(:team_name, :players, :coach)
  attr_writer(:coach)

  def initialize( name, players, coach )
    @team_name = name
    @players = players
    @coach = coach
    @points = 0
  end
  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_team_players
  #   return @players
  # end
  #
  # def get_team_coach
  #   return @coach
  # end
  #
  # def set_team_coach(coach)
  #   @coach = coach
  # end

  def add_player(name)
    players.push(name)
  end

  def search_for_players(name)
    player_found = false
    for player in @players do
      if player == name
      return true
      # return true if(player == name)
      end
    end
    return player_found
  end

  def points_tracking(points)
    @points += points
    return @points
  end

  # write functions for wins and losses
#   def play_game
  #   if(result == :win)
  #     @points += 1
#     @points += 1 if(result == :win) (this is a guard statement)
#   end
#
# end
