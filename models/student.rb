require_relative('../db/sqlrunner')
require_relative('house')

class Student
    attr_reader :first_name, :last_name, :age, :id

    def initialize( options )
        @first_name = options['first_name']
        @last_name = options['last_name']
        @house_id = options['house_id'].to_i
        @age= options['age'].to_i
        @id = options['id'].to_i if options['id']
    end
    
    def pretty_name()
        return @first_name + " " + @last_name
    end

    def save()
        sql = "
        INSERT INTO students
        (first_name, last_name, house_id, age)
        values
        ('#{@first_name}', '#{@last_name}', #{@house_id}, #{@age})
        returning *
        ;"

        result = SqlRunner.run(sql)

        @id = result[0]['id'].to_i
    end

    def house()
        return House.find_by_id(@house_id)
    end

    def self.all()
        sql = "SELECT * FROM students;"
        students = SqlRunner.run(sql)
        result = students.map { |student| Student.new ( student) }
        return result
    end

    def self.find_by_id( id )
        sql = "SELECT * FROM students WHERE id=#{id}"
        student = SqlRunner.run(sql)
        result = Student.new( student.first )
        return result
    end








    
end