require_relative('../models/student.rb')

student1 = Student.new({
    'first_name' => 'Harry',
    'last_name' => 'Potter',
    'house' => 'Gryffindor',
    'age' => 16
    })

student2 = Student.new({
    'first_name' => 'Draco',
    'last_name' => 'Malfoy',
    'house' => 'Slytherin',
    'age' => 16
    })

student1.save()
student2.save()