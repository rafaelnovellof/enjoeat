#utf-8

#Comment: Hook to resize the window before each step

# Before do 
#     page.current_window_resize_to(1440, 900)
# end

After do |scenario|
    shot = page.save_screenshot("log/#{scenario.__id__}.png")
    embed(shot, "image/png", "SCREENSHOT")
  end