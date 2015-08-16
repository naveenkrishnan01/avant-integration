def assert_box
  expect(page).to have_content 'FIRST BOX'
end

def assert_shave
  expect(page).to have_content 'SHAVE'
end

def assert_total(num)
  @num = num
  expect(page).to have_content (@num + ' ' + 'Item')
end

