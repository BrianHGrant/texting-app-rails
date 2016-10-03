# Project Name: Texting app rails

## Description

Skeleton Application built in rails to show use of Twilio API, a random qoute API, and the use of the RestClient gem

## Ruby version
Version: >= 2.2.1<br>
Rails: '~> 5.0.0', '>= 5.0.0.1'

## System dependencies

This application requires:
  * Bundler
  * PostGresSQL

## Deployment instructions
  1. Clone Repo locally
  2. Navigate to local repo directly in your terminal
  3. Run 'bundle install'
  4. Create Databases
    * Run 'rails db:create'
    * Run 'rails db:migrate'
    * Run 'rails db:test:prepare'
  5. Create .env file (see below)
  6. Run 'rails server' to start local server
  7. Open 'localhost:3000' in your browser

## APIs and the .env
  This application makes use of the Twilio and Andrux random qoute apis. 
  1. Twilio: https://www.twilio.com/try-twilio
  2. Andruxnet: https://market.mashape.com/andruxnet/random-famous-quotes
  
  notate your twilio api_key and your mashape key. Create a .env file in your route directory.

    YOUR-X-Mashape-Key="<YOUR-MASHAPE_KEY>"
    TWILIO_ACCOUNT_SID="<YOUR_TWILIO_ACCOUNT_SID>"
    TWILIO_AUTH_TOKEN="<YOUR_TWILIO_AUTH_TOKEN>"
    
Enter your actual credentials. Restart the server if it was running.

## Contact
  Contact me @ <a href="mailto:bhgrant@gmail.com">bhgrant8@gmail.com</a><br>

## License
  This program is Free Software under the GNU General Public License (GPL) version 3
  Visit: https://www.gnu.org/licenses/gpl.html
