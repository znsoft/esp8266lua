function switch(lev)
gpio.write(3,lev)
file.remove("laststate")
file.open("laststate","w")
file.write(lev)
file.flush()
file.close()
end
