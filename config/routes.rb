Rails.application.routes.draw do
root to: 'flats#home'
# As a user, I can see all the available flats on our website => index
# As a user, I can post a flat to the website, specifying its name and address => new/create
# As a user, I can see detailed information of a given flat => show
# As a user, I can edit the details of a flat if I made a mistake => edit/update
# As a user, I can delete a flat from the website, in case I don’t want to rent it anymore => destroy
resources :flats, except: [ :index ]
end
