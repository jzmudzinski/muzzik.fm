name "dev"
description "Development workstation for muzzik.fm (vagrant)."
run_list(
  "recipe[apt]",
	"recipe[zsh]",
	"recipe[git]",
	"recipe[sqlite]",
	"recipe[rbenv]",
	"recipe[nginx]",
	"recipe[muzzikfm::vagrant]"
	# "recipe[unicorn]"
)
default_attributes({
  "sites" => {
    "muzzikfm" => "www-data"
  }
})
# override_attributes()
