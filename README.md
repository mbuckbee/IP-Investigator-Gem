
<p align="center">
  <img src="https://app.expeditedaddons.com/ipinvestigator.png"/>
  
</p>

<h1 align='center'>IP Investigator</h1>

## Check if an IP address is hosting Proxies, Bots or Malware.

## Requirements

- An API Key from Heroku
    - Add from: https://elements.heroku.com/addons/ipinvestigator

- Ruby v2.x or greater

## Usage

### Input Parameter Descriptions

| Index       | Name    | Example | Description |
| --------------- | ------- | -------- |--------|
|0|`ip`|string|IPv4 or IPv6 address|



### Making a Request

```ruby
$ > require 'ip_investigator'
=> true

# Note: the 'Controller' here is not a reference to Rails controllers
# but an internal structure, won't interfere with your Rails app and will 
# work fine in a standalone ruby app or another framework

$ > ipi = IpInvestigator::APIController.new
=> #<IpInvestigator::APIController:0x007fbc6bc02f40>

$ > result = ipi.lookup("68.10.149.45")
=> #<IpInvestigator::Result:0x007fbc6a2d03b0 @is_listed=false, @list_count=false, @last_seen=false, @is_proxy=false, @is_tor=false, @is_vpn=false, @is_malware=false, @is_spyware=false, @is_dshield=false, @is_hijacked=false, @is_spider=false, @is_bot=false, @is_spam_bot=false, @is_exploit_bot=false>
```

### Using Results

```ruby
$ > result.is_listed
=> false

$ > result.list_count
=> false

$ > result.last_seen
=> false

$ > result.is_proxy
=> false

$ > result.is_tor
=> false

$ > result.is_vpn
=> false

$ > result.is_malware
=> false

$ > result.is_spyware
=> false

$ > result.is_dshield
=> false

$ > result.is_hijacked
=> false

$ > result.is_spider
=> false

$ > result.is_bot
=> false

$ > result.is_spam_bot
=> false

$ > result.is_exploit_bot
=> false
```

## Installation

```ruby
# In your Gemfile
gem 'ipinvestigator', git: 'https://github.com/mbuckbee/Ip-Investigator-Gem.git'
```    


## Result Attribute Descriptions

| Attribute       | Type    | Description |
| --------------- | ------- | -------- |
|`is_listed`|boolean|Is this IP on a blocklist|
|`list_count`|integer|The number of blocklists the IP is listed on|
|`last_seen`|integer|The last time this IP was seen on a blocklist (in Unix time or 0 if not listed recently)|
|`is_proxy`|boolean|IP has been detected as an anonymous web proxy or anonymous HTTP proxy|
|`is_tor`|boolean|IP is coming from a Tor node|
|`is_vpn`|boolean|IP has been detected as coming from a VPN hosting provider|
|`is_malware`|boolean|IP is involved in distributing malware|
|`is_spyware`|boolean|IP is being used by spyware, malware, botnets or for other malicious activities|
|`is_dshield`|boolean|IP has been flagged on DShield (dshield.org)|
|`is_hijacked`|boolean|hijacked netblocks or netblocks controlled by criminal organizations|
|`is_spider`|boolean|IP is a hostile spider or crawler|
|`is_bot`|boolean|IP is hosting a malicious bot or is part of a botnet|
|`is_spam_bot`|boolean|IP address is hosting a spam bot, comment spamming or other spamming software|
|`is_exploit_bot`|boolean|IP is hosting an exploit finding bot or exploit scanning software|



## Live Interactive Testing

Doublecheck results, use a Live Proxy and check your API Key with the interactive documentation at:

http://docs.ipinvestigatorexp.apiary.io/

You will need your `IPINVESTIGATOR_API_KEY` from the setup screen where you've provisioned the IP Investigator add-on.

## Troubleshooting

As a sanity check it is sometimes useful to bypass your app stack and check the endpoint, your API Key and parameters directly.

*Test with your browser*

```
# Modify the following to use your actual API Key
'https://ipinvestigator.expeditedaddons.com/?api_key=REPLACE_WITH_YOUR_IPINVESTIGATOR_API_KEY&ip=68.10.149.45'
```

A successful call will return your requested data with a HTTP result code of `200` and be in `JSON` format. We recommend the [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) extension as a useful tool. 

## In Development

The IP Investigator gem relies upon the environment variable `ENV['IPINVESTIGATOR_API_KEY']` being present and correctly configured to authenticate to the service. You will need to have this variable present in your local environment for the gem to work correctly.

If you're using Heroku, please read their [Guide to Heroku Local](https://devcenter.heroku.com/articles/heroku-local) which has instructions on easily copying your config values to your development environment.

**DOTENV**

[https://github.com/bkeepers/dotenv](https://github.com/bkeepers/dotenv)

If you're trying to use IP Investigator in your local development or test environment with the [dotenv](https://github.com/bkeepers/dotenv) gem be sure that you are loading the `dotenv-rails` gem with the `rails-now` requirement. 

```ruby
# Example Gemfile excerpt

gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem 'iptoearth'
```

**FOREMAN**

[https://github.com/ddollar/foreman](https://github.com/ddollar/foreman)

If you're having issues with configuring `dotenv`, you might want to try [foreman](https://github.com/ddollar/foreman) which will also autoload `.env` files in your local environment.


**Test in the Rails console**

Launch `rails c` in your development project directory and at the prompt enter `ENV[IPINVESTIGATOR_API_KEY]` which, if you've configured your development environment correctly should display your API Key.

## Issues and Security Concerns

Please email [support@expeditedaddons.com](mailto:support@expeditedaddons.com)

## License

The IP Investigator gem is licensed under the MIT license.

## Additional Add-ons

If you found IP Investigator useful, please check out our other similarly structured services and gems.

<table>
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/qrackajack_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/qrackajack'>QRACKAJACK</a></h5>
      <p>Generate QR codes for use anywhere.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/weightsandmeasures_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/weightsandmeasures'>WEIGHTS & MEASURES</a></h5>
      <p>Conversational interface to convert between units of measure.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/scrapetastic_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>SCRAPETASTIC</a></h5>
      <p>Pull structured data from any website.</p>
    </td>

  </tr>
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/useragentidentifier_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/useragentidentifier'>USER AGENT IDENTIFIER</a></h5>
      <p>Boost User Agent identification with our always up to date UA parsing.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/ipinvestigator_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/ipinvestigator'>IP INVESTIGATOR</a></h5>
      <p>Check if an IP address is hosting Proxies, Bots or Malware.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/resizer_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>RESIZER</a></h5>
      <p>Resize images for Retina use, thumbnails and social promotion.</p>
    </td>

  </tr>  
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/urlxray_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/urlxray'>URL X-RAY</a></h5>
      <p>Pull website status and domain information for any URL.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/webtopdf_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/webtopdf'>WEB TO PDF</a></h5>
      <p>Generate PDF Documents from Webpages.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/watermarker_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/watermarker'>WATERMARKER</a></h5>
      <p>Identify and protect images by adding a watermark to them.</p>
    </td>

  </tr>    
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/iptoearth_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/iptoearth'>IP TO EARTH</a></h5>
      <p>Find the Country and City of origin for an IP Address.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/geocody_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/geocody'>GEOCODY</a></h5>
      <p>Convert mailing addresses into Lat,Long Coordinates.</p>
    </td>
    
    <td align='center' width='33%' cellpadding='10'>
       <img src="https://app.expeditedaddons.com/realemail_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/realemail'>REAL EMAIL</a></h5>
      <p>Reduce bounced emails and errors by validating emails against MX records.</p>
    </td>

  </tr>    

</table>





