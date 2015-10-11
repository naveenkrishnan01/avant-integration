def assert_signup
  expect(page).to have_content 'Sign up'
end

def assert_signin
 expect(page).to have_content 'Log in'
end


def assert_edit_profile
  expect(page).to have_content 'Edit Profile'
end

def assert_home_page
  expect(page).to have_content 'Sign Up | Sign In'
end

def assert_profile_page
  expect(page).to have_content 'Edit your Profile:'
end

