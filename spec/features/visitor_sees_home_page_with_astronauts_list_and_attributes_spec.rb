require 'rails_helper'
   describe 'user index' do
     context 'as a visitor' do
       it 'user can see a list of astronauts with the following info' do
        neil = Astronaut.new(name: "Neil Armstrong", age: 37, job: "Commander")

        visit '/astronauts'
      save_and_open_page
        expect(page).to have_content(neil.name)
        expect(page).to have_content(neil.age)
        expect(page).to have_content(neil.job)
     end
   end
 end
