Given('I click on OK button') do
     find_element(id:"android:id/button1").click
 end

Then('I click on Try us out link at the bottom left corner of the screen') do
    find_element(id:"vivino.web.app.beta:id/txtTryUsOut").click
    sleep 3
end


Then('I click on Next') do
    i = 0
    until i == 4
    i += 1
   find_element(id:"vivino.web.app.beta:id/next").click
    sleep 2
    end
end

Then('I click on Continue without account') do
  find_element(id:"vivino.web.app.beta:id/continue_without_account").click
end

Then('I land on My Profile Screen') do
  puts("My Profile screen is displayed")
end