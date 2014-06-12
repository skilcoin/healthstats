# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

BodyMeasurement.create(measurementDate:"2014-05-01", occurrence: 0, weight: 150.0, bodyFat:15.0)
BodyMeasurement.create(measurementDate:"2014-05-04", occurrence: 0, weight: 152.0, bodyFat:17.0)
BodyMeasurement.create(measurementDate:"2014-05-08", occurrence: 0, weight: 155.0, bodyFat:21.0)
BodyMeasurement.create(measurementDate:"2014-05-15", occurrence: 0, weight: 154.2, bodyFat:19.0)
BodyMeasurement.create(measurementDate:"2014-05-22", occurrence: 0, weight: 154.0, bodyFat:17.0)
BodyMeasurement.create(measurementDate:"2014-05-29", occurrence: 0, weight: 152.0, bodyFat:16.5)
BodyMeasurement.create(measurementDate:"2014-06-06", occurrence: 0, weight: 151.0, bodyFat:15.0)

