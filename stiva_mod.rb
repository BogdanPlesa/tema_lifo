require_relative "mod_stiva.rb"
require_relative "Class_Stiva"
load


s=Stiva.new
# Introducere in stiva
flag=true
while flag
print "***** adaugi ceva in stiva ? (y/n)"
	rasp=gets.chomp
	rasp.upcase!
	case rasp
	when "Y"	
		print "***** ** Introdu in stiva : "
		obj=gets.chomp
		s.adauga_in_stiva(obj)
	when "N"
		puts "*** Bine pa ! "
		puts "*** Asta ti-e stiva : "
		print s.stiva
		puts
		flag=false
	end
end
#Scoatere din stiva 
flag=true
while flag
print "***** scoti din stiva ? (y/n)"
	rasp=gets.chomp
	rasp.upcase!
	scos=s.stiva
	case rasp
	when "Y"
		if s.stiva.length>0	
			puts "***** ** Se scoate din stiva ultimul element introdus ..... "
			scos=s.scoate_din_stiva
		else
			puts "***** ** lista e deja goala "
			flag=false
		end
	when "N"
		puts "*** Bine pa ! "
		puts "*** Asta ti-e stiva : "
		print scos
		puts
		flag=false
	end
end
