require_relative('../models/student.rb')
require_relative('../models/house.rb')

house1 = House.new({
    'name' => 'Gryffindor',
    'logo_url' => '',
    })

house2 = House.new({
    'name' => 'Hufflepuff',
    'logo_url' => '',
    })

house3 = House.new({
    'name' => 'Ravenclaw',
    'logo_url' => '',
    })

house4 = House.new({
    'name' => 'Slytherin',
    'logo_url' => '',
    })

house1.save()
house2.save()
house3.save()
house4.save()


student1 = Student.new({
    'first_name' => 'Harry',
    'last_name' => 'Potter',
    'house_id' => house1.id,
    'age' => 16
    })

student2 = Student.new({
    'first_name' => 'Draco',
    'last_name' => 'Malfoy',
    'house_id' => house4.id,
    'age' => 16
    })


student1.save()
student2.save()