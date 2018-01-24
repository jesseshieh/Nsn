use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: :dev

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/configuration.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :":0_fcO]QDL`=q(5yx~5ood.kmVV7T@I_,y^M4X}MsS~4j%8RjO?I]<KwZLYNZZBO"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"*6~4EK;3E/o}sHU5{0TS>,]_O)zBZzz<uE8.A7O0_C~4r]6IiLWm`W1`g=:dBJLh"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :nsn do
  set version: current_version(:nsn)
end

