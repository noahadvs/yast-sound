#!/usr/bin/ruby

# read all static predefined databases
require File.join(File.dirname(__FILE__), "alsa_drivers.rb")
require File.join(File.dirname(__FILE__), "sound_db_generator.rb")
require File.join(File.dirname(__FILE__), "ycp_format.rb")

# generate the database for the first kernel found
kernel_path = Dir['/lib/modules/*'].first + '/kernel/sound/'

# print the database on STDOUT
puts SoucardDBGenerator.generate_sound_card_db kernel_path

