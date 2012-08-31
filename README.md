# OmniAuth Do

This is an OmniAuth strategy for authenticating to [Do][do]. To use it, you'll
need to request an OAuth2 Application ID and Secret by e-mailing
operations@do.com.

## Basic Usage

    use OmniAuth::Builder do
      provider :do, ENV['DO_KEY'], ENV['DO_SECRET']
    end

### User Scopes

Do lets you set scopes to provide granular access to different portions of a
user's data. Note that during the Do API Beta period, all scopes will result in
full-access to user data.

    use OmniAuth::Builder do
      provider :do, ENV['DO_KEY'], ENV['DO_SECRET'], scope: "user.profile"
    end

For questions about the forthcoming implementations of scopes, e-mail
operations@do.com

### Provisioning

In addition to accessing user data, [confidential clients][confidential-clients]
can utilize Do's User and Group Provisioning API's, allowed by the
`user.provisioning` and `group.provisioning` scopes respectively.

### Beta

The use of the Do API is subject to the terms and conditions found at
[do.com/legal][legal]. Take care to note Section 8.4:

> Any Non-GA Services will be clearly designated as beta, pilot, limited release, developer preview, non-production or by a description of similar import. Non-GA Services are provided for evaluation purposes and not for production use, are not supported, may contain bugs or errors, and may be subject to additional terms. NON-GA SERVICES ARE NOT CONSIDERED "SERVICES" HEREUNDER AND ARE PROVIDED "AS IS" WITH NO EXPRESS OR IMPLIED WARRANTY. We may discontinue Non-GA Services at any time in Our sole discretion and may never make them generally available.

### Contributions

Patches and bug reports are welcome. Just send a [pull request][pullrequests] or
file an [issue][issues]. [Project changelog][changelog].

[License][license]




[do]:                  https://do.com
[legal]:               https://do.com/legal
[confidential-clients] http://tools.ietf.org/html/draft-ietf-oauth-v2-31#section-2.1
[pullrequests]:        https://github.com/Do/omniauth-do/pulls
[issues]:              https://github.com/Do/omniauth-do/issues
[changelog]:           https://github.com/Do/omniauth-do/blob/master/CHANGELOG.md
[license]:             https://github.com/Do/omniauth-do/blob/master/LICENSE
