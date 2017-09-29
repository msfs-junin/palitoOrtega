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

When(/^Una vez elegido ver resultado$/) do
   visit '/resultado'
end


When(/^Una vez elegida la opcion tijera$/) do
  click_button("Tijera")
end

When(/^Una vez elegida la opcion piedra$/) do
    click_button("Piedra")
end


When /^presiono "(.*?)"$/ do |reset|
  click_button(reset)
end


