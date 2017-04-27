# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Student.create(:first_name =>"fname" ,:last_name=> "lanme",:email=> "test@test.com")

Semister.create!(
            [
                {id:1 ,name: "test semister 1",is_active: true},
                {id:2 ,name: "Inactive Semister",is_active: false}
            ]
)


Course.create!([
                    {id: 1, name: "Nintendo Wii U Premium",semister_id: 1},
                    {id: 2, name: "XBox 360 250GB",semister_id: 1},
                    {id: 3, name: "Incative_course_1",semister_id: 2},
                    {id: 4, name: "Incative_course_2",semister_id: 2},
                    {id: 5, name: "Incative_course_3",semister_id: 2}



                ])

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')