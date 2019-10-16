class Network

attr_reader :name, :shows

  def initialize(str_network)
    @name = (str_network)
    @shows = []
  end

  def add_show(obj_show)
    @shows << obj_show
  end

  def highest_paid_actor
    all_actors = @shows.collect_concat { |show| show.characters }
    all_actors.sort_by { |character| character.salary }.last.actor
    end

    def payroll
      all_actors = @shows.collect_concat { |show| show.characters }
      payroll_hash = Hash[all_actors.collect { |character| [character.actor, character.salary] } ]
    end
  end
