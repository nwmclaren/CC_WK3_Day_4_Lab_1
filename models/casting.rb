require_relative("../db/sql_runner")

class Casting

  attr_reader :id
  attr_accessor :movie_id, :star_id, :fee

  def initialize(options)
      @id = options['id'].to_i if options['id']
      @movie_id = options['movie_id'].to_i
      @star_id = options['star_id'].to_i
      @fee = options['fee']
  end

  def save()
      sql = "INSERT INTO castings
      (
        movie_id,
        star_id,
        fee
      )
      VALUES
      (
        $1, $2, $3
      )
      RETURNING id"
      values = [@movie_id, @star_id, @fee]
      visit = SqlRunner.run( sql,values ).first
      @id = visit['id'].to_i
    end

    def self.all()
      sql = "SELECT * FROM castings"
      visits = SqlRunner.run(sql)
      result = visits.map { |casting| Visit.new( casting ) }
      return result
    end

    def self.delete_all()
    sql = "DELETE FROM castings"
    SqlRunner.run(sql)
  end


end
