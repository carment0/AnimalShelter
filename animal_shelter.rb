require 'csv'
require 'byebug'

require_relative './dog.rb'
require_relative './cat.rb'

my_cvs_file = File.read('./data.csv')

csv = CSV.parse(my_csv_file, :headers => true)

csv.each do |csv_row|
  id = csv_row['AnimalID']
  name = csv_row['Name']
  animal_type = csv_row['AnimalType']
  outcome = csv_row['OutcomeType']
  sex_upon_outcome = csv_row['SexuponOutcome']
  age_upon_outcome = csv_row['AgeuponOutcome']
  breed = csv_row['Breed']
  color = csv_row['Color']

  if animal_type == 'Dog'
    new_dog = Dog.new(id, name, outcome, sex_upon_outcome, age_upon_outcome, breed, color)
    puts new_dog
  else
    new_cat = Cat.new(id, name, outcome, sex_upon_outcome, age_upon_outcome, breed, color)
    puts new_cat
  end
end 
