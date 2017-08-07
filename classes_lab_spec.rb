require( "minitest/autorun" )
require( "minitest/rg" )
require_relative( "classes_lab.rb" )

class TestCodeclanStudent < Minitest::Test
# Part A

  def test_student_name
    student = CodeclanStudent.new( "Peter", 16 )
    assert_equal("Peter", student.get_student_name)
  end

  def test_student_cohort
    student = CodeclanStudent.new( "Peter", 16 )
    assert_equal(16, student.get_student_cohort)
  end

  def test_set_student_name
    student = CodeclanStudent.new( "Peter", 16 )
    student.set_student_name("Pauline")
    assert_equal("Pauline", student.get_student_name)
  end

  def test_set_student_cohort
    student = CodeclanStudent.new( "Peter", 16 )
    student.set_student_cohort(12)
    assert_equal(12, student.get_student_cohort)
  end

  def test_can_you_speak
    student = CodeclanStudent.new( "Peter", 16 )
    assert_equal("I can even sing!", student.can_you_speak)
  end

  def test_say_favourite_language
    student = CodeclanStudent.new( "Peter", 16 )
    assert_equal("I love Ruby!", student.say_favourite_language("ruby"))
  end

# # Part B

  def setup
    @team = SportingTeam.new("Kodiaks",
      ["John", "LaoZi", "Socrates"], "Love")
  end

  def test_get_team_name
    assert_equal("Kodiaks", @team.team_name)
  end

  def test_get_team_players
  assert_equal(["John", "LaoZi", "Socrates"],
  @team.players)
  end

  def test_get_team_coach
    assert_equal("Love", @team.coach)
  end

  def test_set_team_coach
    @team.coach = "Hey-Zeus"
    assert_equal("Hey-Zeus", @team.coach)
  end

  def test_add_player
    @team.add_player("The Dude")
  assert_equal(["John", "LaoZi", "Socrates", "The Dude"],
   @team.players)
  end

  def test_search_for_players__true
    assert_equal(true, @team.search_for_players("Socrates"))
  end

  def test_search_for_players__false
    assert_equal(false, @team.search_for_players("The Dude"))
  end

  def test_points_tracking
    assert_equal(1, @team.points_tracking(1))
  end
end
