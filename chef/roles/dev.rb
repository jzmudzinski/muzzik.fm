name "dev"
description "Development workstation for muzzik.fm (vagrant)."
run_list(
	"recipe[zsh]",
	"recipe[git]",
	"recipe[sqlite]",
	"recipe[rbenv]",
	"recipe[nginx]",
	"recipe[muzzikfm::vagrant]"
	# "recipe[unicorn]"
)
# default_attributes()
# override_attributes()