execute store result score $current OtcFishingTimer run time query daytime
execute store result score $day OtcFishingSleep run time query day

schedule function otc_fishing:loop 1t