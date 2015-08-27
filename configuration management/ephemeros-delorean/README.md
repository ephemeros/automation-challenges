The delorean module facilitates setting up a car for time travel.

This module will place a configuration at /etc/widgetfile which contains settings controlled by the following parameters:

option: Options selected for the car
speed: Speed you wish the car to travel at
capacitor: Type of capacitor to install in the car; maps to capacitor_type in the configuration file
model: Model of the car, default is delorean
avoid: Areas that the car should avoid

The template widgetfile.erb contains these parameters, as well as the fact "widget," which is provided by the operating system of the car.

Notes for Challenge:

The presence of facter implies that Puppet is present in the environment, therefore I decided to handle this challenge by creating a custom Puppet module. I created an ERB template which is then placed as a file on the node at /etc/widgetfile.

I assumed that the fact "widget" is globally available, as an operating system fact would be, since I was given no other context.

For nodes requiring this file, I would classify them with the Puppet master, and then examine the reports from the agent runs on the nodes with the delorean class applied to ensure the file was placed appropriately.

This is the first Puppet module I have written from scratch completely. I created it on my home Debian server, but I don't have any virtualization set up already that would allow me to test its functionality, but this is a simple module and does exactly what was asked and nothing more.

