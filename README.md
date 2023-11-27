# Omniauth - Jets CSRF Protection

[![Gem Version](https://badge.fury.io/rb/omniauth-jets_csrf_protection.png)](http://badge.fury.io/rb/omniauth-jets_csrf_protection)

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

[![BoltOps Learn Badge](https://img.boltops.com/boltops-learn/boltops-learn.png)](https://learn.boltops.com)


This gem provides protection against [CVE-2015-9284] (Cross-Site Request
Forgery on the request phase when using OmniAuth gem with a Ruby on Jets
application) for Jets applications using OmniAuth gem. It achieves this by integrating a CSRF token verifier that leverages the `ActionController::RequestForgeryProtection`.

[CVE-2015-9284]: https://nvd.nist.gov/vuln/detail/CVE-2015-9284

This is a fork of [cookpad/omniauth-rails_csrf_protection](https://github.com/cookpad/omniauth-rails_csrf_protection). Credit goes to the original authors of that gem.
