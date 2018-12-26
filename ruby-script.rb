#!/usr/bin/env ruby

require 'net/http'
require "combine_pdf"
require "Prawn"
require 'find'

files = Dir["./files/*"]
puts files

pdf = CombinePDF.new
files.each do |f| 
	pdf << CombinePDF.load(f) # one way to combine, very fast.
end
pdf.save "combined.pdf"


