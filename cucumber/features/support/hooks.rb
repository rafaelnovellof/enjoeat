#Comment: Hook to resize the window before each step

# Before do 
#     page.current_window_resize_to(1440, 900)
# end

After do 
    temp_shot = page.save_screenshot("log/temp_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot).read)
    embed(screenshot, "image/png", "Screenshot")
end