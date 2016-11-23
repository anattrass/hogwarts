require_relative('../db/sqlrunner')

class Student
    attr_reader :first_name, :last_name, :house, :age, :id

    def initialize( options )
        @first_name = options['first_name']
        @last_name = options['last_name']
        @house = options['house']
        @age= options['age'].to_i
        @id = options['id'].to_i if options['id']
    end
    
    def save()
        sql = "
        INSERT INTO students
        (first_name, last_name, house, age)
        values
        ('#{@first_name}', '#{@last_name}', '#{@house}', #{@age})
        returning *
        ;"

        result = SqlRunner.run(sql)

        @id = result[0]['id'].to_i
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