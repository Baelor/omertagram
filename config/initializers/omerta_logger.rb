# Copy this file to config/initializers/omerta_logger.rb in your app.
# Change the defaults as you see fit. By default, omerta_logger will
# import everything and keep histories for all supported entities.

OmertaLogger.setup do |config|
  # Domains which should be imported. Defaults to com.
  config.domains = [ Settings.domain ]

  # Import bullet factories. True by default.
  # config.bullet_factory = true

  # Keep a history of the number of bullets in a factory. True by default.
  # config.bullet_factory_bullet_history = true

  # Keep a history of bullet factory ownership. True by default.
  # config.bullet_factory_owner_history = true

  # Keep a history of bullet prices in bullet factories. True by default.
  # config.bullet_factory_price_history = true

  # Import business objects. True by default.
  # config.business_object = true

  # Keep a history of business object bankruptcies. True by default.
  # config.business_object_bankruptcy_history = true

  # Keep a history of business object ownership. True by default.
  # config.business_object_owner_history = true

  # Keep a history of bullet prices in bullet factories. True by default.
  # Note: the profit history table generates a lot of INSERTs.
  # Expect between 10,000 and 20,000 new rows/day if you're logging all versions.
  # config.business_object_profit_history = true

  # Keep a history of business object protection levels. True by default.
  # config.business_object_protection_history = true

  # Import casinos. True by default.
  # config.casino = true

  # Keep a history of casino bankruptcies. True by default.
  # config.casino_bankruptcy_history = true

  # Keep a history of casino max bets. True by default.
  # config.casino_max_bet_history = true

  # Keep a history of casino ownership. True by default.
  # config.casino_owner_history = true

  # Keep a history of casino profits. True by default.
  # config.casino_profit_history = true

  # Keep a history of casino protection levels. True by default.
  # config.casino_protection_history = true

  # Import families. True by default.
  # config.family = true

  # Keep a history of family banks. True by default.
  # Note: the family bank history table generates a lot of INSERTs.
  # Expect between 10,000 and 20,000 new rows/day if you're logging all versions.
  # config.family_bank_history = true

  # Keep a history of family name changes. True by default.
  # config.family_name_history = true

  # Keep a history of family high score positions. True by default.
  # config.family_position_history = true

  # Keep a history of family ranks. True by default.
  # config.family_rank_history = true

  # Keep a history of family user counts. True by default.
  # config.family_user_count_history = true

  # Keep a history of family worth changes. True by default.
  # config.family_worth_history = true

  # Import general game statistics. True by default.
  # config.game_statistic = true

  # Import hitlistings. True by default.
  # config.hitlist = true

  # Import users. True by default.
  # config.user = true

  # Keep a history of user's families. True by default.
  # config.user_family_history = true

  # Keep a history of user name changes. True by default.
  # config.user_name_history = true

  # Keep a history of user online times. True by default.
  # Note: the user online times table generates a lot of INSERTs.
  # Expect between 20,000 and 30,000 new rows/day if you're logging all versions.
  # config.user_online_time = true

  # Keep a history of user ranks. True by default.
  # config.user_rank_history = true

  # Keep a history of user revives. True by default.
  # config.user_revive = true

  # Import version updates from archive. True by default.
  # This will automatically import any missed updates from Omerta's FTP archive.
  config.archive = false
end