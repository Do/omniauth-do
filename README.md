# OmniAuth Deathstar

This is an OmniAuth strategy for authenticating to [Do](https://do.com). To
use it, you'll need to request an OAuth2 Application ID and Secret
by e-mailing dev@do.com.

## Basic Usage

    use OmniAuth::Builder do
      provider :deathstar, ENV['DEATHSTAR_KEY'], ENV['DEATHSTAR_SECRET']
    end

### User Scopes

Do lets you set scopes to provide granular access to different portions
of a user's data. Note that during the Do API Beta period, all scopes
will result in full-access to user data. 

    use OmniAuth::Builder do
      provider :deathstar, ENV['DEATHSTAR_KEY'], ENV['DEATHSTAR_SECRET'], scope: "user.profile"
    end

For questions about the forthcoming implementations of scopes, e-mail
dev@do.com

### Provisioning

In addition to accessing user data, [confidential
clients](http://tools.ietf.org/html/draft-ietf-oauth-v2-31#section-2.1)
can utilize Do's User and Group Provisioning API's, allowed by the
`user.provisioning` and `group.provisioning` scopes respectively. 

### Beta

The use of the Do API is subject to the terms and conditions found at
[do.com/legal](https://do.com/legal). Take care to note Section 8.4:

> Any Non-GA Services will be clearly designated as beta, pilot, limited release, developer preview, non-production or by a description of similar import. Non-GA Services are provided for evaluation purposes and not for production use, are not supported, may contain bugs or errors, and may be subject to additional terms. NON-GA SERVICES ARE NOT CONSIDERED "SERVICES" HEREUNDER AND ARE PROVIDED "AS IS" WITH NO EXPRESS OR IMPLIED WARRANTY. We may discontinue Non-GA Services at any time in Our sole discretion and may never make them generally available.

## License

Copyright (c) 2011 Austin Bales and Do.com, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
