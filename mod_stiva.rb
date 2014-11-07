module ModStiva

def adauga_in_stiva(obj)
	@stiva[@stiva.length]=obj
end

def scoate_din_stiva
	@stiva=@stiva[0..-2]
end

end
