Gibbon::Request.api_key = ENV.fetch("MAILCHIMP_API")
Gibbon::Request.timeout = 15
Gibbon::Request.open_timeout = 15
Gibbon::Request.symbolize_keys = true
Gibbon::Request.debug = false