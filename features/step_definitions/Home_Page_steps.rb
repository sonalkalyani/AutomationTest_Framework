Given('I click on OK button') do
  find_element(id: 'android:id/button1').click
end

Then('I click on Try us out link at the bottom left corner of the screen') do
  find_element(id: 'vivino.web.app.beta:id/txtTryUsOut').click
  sleep 3
  end

Then('I click on Next') do
  i = 0
  until i == 4
    i += 1
   find_element(id: 'vivino.web.app.beta:id/next').text
    Appium::TouchAction.new.swipe(start_x: 0.9, start_y: 0.5, end_x: 0.2, end_y: 0.2, duration:500).perform
    sleep 2
  end
end

Then('I click on Continue without account') do
  find_element(id: 'vivino.web.app.beta:id/continue_without_account').click
  sleep 10
end

Then('I land on My Profile Screen') do
  page_text = find_element(xpath: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.LinearLayout[4]/android.widget.ImageView').text
  log(page_text)
end

When('I click on Shop icon') do
  find_element(xpath: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.ImageView').click
  sleep 5
end

Then('I should land on Shop Screen') do
  page_text = find_element(xpath: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.widget.LinearLayout[4]/android.widget.ImageView').text
  log page_text
end

Then('I should see current date on upper left corner of the  screen') do
  time = Time.new
  presentdate = time.strftime('%A, %b %y')
  page_text = find_element(id: 'vivino.web.app.beta:id/title_date').text
  raise("Date on the screen is #{page_text}, PresentDate is #{presentdate}") if page_text != presentdate
end
