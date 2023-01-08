import Config

import_config "#{config_env()}.exs"

config :blake3, Blake3.Native,
  mode: :release,
  features: MixBlake3.Project.config_features()
