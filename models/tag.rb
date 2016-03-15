require_relative "../db/sql_runner"

class Tag
  attr_reader :id, :name

  def initialize( params )
    @id = nil || params[ "id" ].to_i
    @name = params[ "name" ]
  end

  def self.all
    query = "SELECT * FROM Tags"
    tags = SqlRunner.execute( query )
    return tags.map { |t| Tag.new( t )}
  end

  def self.create( params )
    query = "INSERT INTO Tags ( name ) VALUES ( '#{ params[ 'name' ]}' )"

    SqlRunner.execute( query )
    return Tag.new( Tag.last_entry )
  end

  def self.last_entry
    query = "SELECT * FROM Tags ORDER BY id DESC limit 1;"
    return SqlRunner.execute( query )[ 0 ]
  end

  def self.delete_all 
    query = "DELETE FROM Tags"
    SqlRunner.execute( query )
  end
end