# Stores the daytime to $current
execute store result score $current OtcFishingTimer run time query daytime

# Stores if it is day or night to $day
execute store result score $day OtcFishingSleep run time query day

schedule function otc_fishing:loop 1t