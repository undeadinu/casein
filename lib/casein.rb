if defined?(Rails) && Rails::VERSION::MAJOR >= 5
	require 'casein/engine'
	require 'casein/version'
	require 'will_paginate'
	require 'authlogic'
else
	puts("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	puts("!!! WARNING! This version of Casein requires Rails >= 5.x !!!")
	puts("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
end