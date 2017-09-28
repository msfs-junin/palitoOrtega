Given(/^Abro la pagina del juego$/) do
  visit '/'
end

Then(/^tiene que aparecer "(.*?)"$/) do |texto|
  last_response.body.should =~ /#{texto}/m
end

Given(/^Una vez iniciado el juego$/) do
  visit '/juego'
end

Given(/^Una vez elegida la opcion papel$/) do
 click_button("Papel")
end


