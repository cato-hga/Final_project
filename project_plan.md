# Final Project Idea: Gift Buying Tracker Application

## Features for App (what will the app do?)
1. Keep track of friends/family special occasions
2. Have User signup, in, and out.
3. Mailer that thanks User for signing up. In the future send out email reminding User of Occasion coming up.
4. Have a section that displays items you already bought or items you need to buy.
5. Have picture attach to User and friends/family.

## User Stories
1. Visitors should be able to look at the home page.
2. Visitors can sign up and sign in.
3. User should be able to sign in, and out.
4. User should be able to create different occasions.
5. User should be able to create different people.
6. User should be able to create a gift given section for Special_Occasion and Recipients
7. User should be able to show prior gifts that were given.
8. User should be able to upload an avatar.

## Models
1. User Model: name:string email:string password_digest:string avatar:string
2. Special_Occasion Model: name:string
3. Recipient Model: name:string birthday:string relationship:string notes:text
4. Gift_Given Model : gift_name:string



## Future
1. I would eventually like to add an API that would allow users to look up actual prices of item they are looking to purchase via Amazon.


## Technologies I Will Need

1. Carrierwave gem
2. S3
3. Create a search Engine
4. Kaminari gem for pagination
5. bcrypt
6. Install fog gem
7. Install minimagic gem

## Concerns

1. I never used Active Admin before. If I have time I will add it to the application.
