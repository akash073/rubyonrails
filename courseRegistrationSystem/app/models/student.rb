class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   mount_uploader :avatar, AvatarUploader # Tells rails to use this uploader for this model.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :student_course_registers

  #getter
  def full_name
    [first_name,last_name].join(' ')
  end

  #setter
  def full_name=(name)
    split = name.split(' ',2)
    first_name=split.first
    last_name=split.last
  end

  def image_path
    @path="/uploads/student/avatar/1/logo.jpg"
  end

end
