# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap/dist/js")
Rails.application.config.assets.precompile << "bootstrap.bundle.min.js"

# Add Semantic UI paths so Sass can locate the SCSS and theme assets
Rails.application.config.assets.paths << Rails.root.join("node_modules", "@doabit", "semantic-ui-sass", "src", "scss")
Rails.application.config.assets.paths << Rails.root.join("node_modules", "@doabit", "semantic-ui-sass", "src", "assets", "fonts")
Rails.application.config.assets.paths << Rails.root.join("node_modules", "@doabit", "semantic-ui-sass", "src", "assets", "images")

# If Semantic UI references fonts or images, you may also want to precompile them:
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|woff2|ttf)$/
Rails.application.config.assets.precompile += %w( application.css )