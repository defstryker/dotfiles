function clone
	git clone $argv; cd (echo $argv| cut -d "/" -f5)
end
