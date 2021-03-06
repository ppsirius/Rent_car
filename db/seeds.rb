# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Brand.delete_all
Car.delete_all
Client.delete_all
Type.delete_all
Rent.delete_all
CarClass.delete_all


audi_car = Brand.create!(name: 'Audi', origin: 'German')
bmw_car = Brand.create!(name: 'Bmw', origin: 'German')
mercedes_car = Brand.create!(name: 'Mercedes', origin: 'German')

classes_1 = CarClass.create!(name: 'Economic')
classes_2 = CarClass.create!(name: 'Business')
classes_3 = CarClass.create!(name: 'Premium')

A5 = Type.create!(name: 'A5', brand_id: audi_car.id, car_class_id: classes_1.id)
M5 = Type.create!(name: 'M5', brand_id: bmw_car.id, car_class_id: classes_2.id)
CLS = Type.create!(name: 'CLS', brand_id: mercedes_car.id, car_class_id: classes_3.id)

client_1 = Client.create!(name: 'John', surname: 'Doe', age: 23, doc_number: 'AGF1234', doc_type: 'ID')
client_2 = Client.create!(name: 'Tom', surname: 'Flo', age: 44, doc_number: 'AGF9999', doc_type: 'Passport')
client_3 = Client.create!(name: 'Ben', surname: 'Man', age: 34, doc_number: 'ZZZ1234', doc_type: 'ID')

car_2 = Car.create!(type_id: A5.id, plate: "DW7435", production_year: 2010, state: "available", car_paint: "black")
car_3 = Car.create!(type_id: M5.id, plate: "WE6453", production_year: 2011, state: "available", car_paint: "white")
car_4 = Car.create!(type_id: CLS.id, plate: "WU3452", production_year: 2013, state: "available", car_paint: "metalic")
car_1 = Car.create!(type_id: A5.id, plate: "KR1234", production_year: 2012, state: "available", car_paint: "red")
car_6 = Car.create!(type_id: CLS.id, plate: "AG7890", production_year: 2012, state: "available",car_paint:"black")
car_7 = Car.create!(type_id: CLS.id, plate: "BG2345", production_year: 2012, state: "available",car_paint:"black")
car_8 = Car.create!(type_id: CLS.id, plate: "AD1234", production_year: 2012, state: "available",car_paint:"black")
car_9 = Car.create!(type_id: M5.id, plate: "ZV6666", production_year: 2012, state: "available",car_paint:"black")
car_10 = Car.create!(type_id: M5.id,  plate: "AS8383", production_year: 2010, state: "available", car_paint:"white")
car_11 = Car.create!(type_id: M5.id, plate: "UU7876", production_year: 2010, state: "available", car_paint:"white")
car_12 = Car.create!(type_id: A5.id, plate: "JK6336", production_year: 2010, state: "available",car_paint:"white")
car_13 = Car.create!(type_id: A5.id, plate: "WA2342", production_year: 2010, state: "available",car_paint:"metalic")
car_14 = Car.create!(type_id: A5.id, plate: "AS7622", production_year: 2010, state: "available",car_paint:"metalic")
car_15 = Car.create!(type_id: CLS.id, plate: "QW5621", production_year: 2015, state: "available",car_paint: "red")
car_16 = Car.create!(type_id: M5.id, plate: "LO1279", production_year: 2015, state: "available",car_paint:"white")
car_17 = Car.create!(type_id: A5.id, plate: "JJ9090", production_year: 2015, state: "available",car_paint:"red")
car_18 = Car.create!(type_id: A5.id, plate: "KL2020", production_year: 2015, state: "available",car_paint:"white")
car_19 = Car.create!(type_id: CLS.id, plate: "JB3232", production_year: 2015, state: "available",car_paint:"red")
car_20 = Car.create!(type_id: M5.id, plate: "HB2010", production_year: 2100, state: "available",car_paint:"red")