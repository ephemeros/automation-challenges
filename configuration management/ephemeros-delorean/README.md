The delorean module facilitates setting up a car for time travel.

This module will place a configuration at /etc/widgetfile which contains settings controlled by the following parameters:

option: Options selected for the car
speed: Speed you wish the car to travel at
capacitor: Type of capacitor to install in the car; maps to capacitor_type in the configuration file
model: Model of the car, default is delorean
avoid: Areas that the car should avoid

The template widgetfile.erb contains these parameters, as well as the fact "widget," which is provided by the operating system of the car.
