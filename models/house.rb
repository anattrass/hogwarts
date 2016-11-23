require_relative('../db/sqlrunner')

class House

    attr_reader :name, :logo_url, :id, :head

    def initialize( options )
        @name = options['name']
        @id = options['id'].to_i if options['id']
        @logo_url = options['logo_url'] 
        @head = options['head']
    end

    def save()
        sql = "INSERT INTO houses (name,logo_url, head) 
        VALUES ('#{@name}', '#{@logo_url}', '#{@head}') RETURNING *;"
        house = SqlRunner.run(sql)
        @id = house.first()['id'].to_i
    end

    def self.all()
        sql = "SELECT * FROM houses;"
        houses = SqlRunner.run(sql)
        result = houses.map { |house| House.new (house) }
        return result
    end

    def self.find_by_id( id )
        sql = "SELECT * FROM houses WHERE id=#{id}"
        house = SqlRunner.run(sql)
        result = House.new( house.first )
        return result
    end
    
    
end
