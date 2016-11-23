require_relative('../models/student.rb')
require_relative('../models/house.rb')

house1 = House.new({
    'name' => 'Gryffindor',
    'logo_url' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Gryffindorcolours.svg/64px-Gryffindorcolours.svg.png',
    'head' => 'Gandalf'
    })

house2 = House.new({
    'name' => 'Hufflepuff',
    'logo_url' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Hufflepuff_colours.svg/64px-Hufflepuff_colours.svg.png',
    'head' => 'Alan Titchmarsh'
    })

house3 = House.new({
    'name' => 'Ravenclaw',
    'logo_url' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Ravenclawcolours.svg/64px-Ravenclawcolours.svg.png',
    'head' => 'AJ Styles'
    })

house4 = House.new({
    'name' => 'Slytherin',
    'logo_url' => 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Slytherin_colours.svg/64px-Slytherin_colours.svg.png',
    'head' => 'Vince McMahon'
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