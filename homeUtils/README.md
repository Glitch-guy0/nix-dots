this file is extention of *home-manager*
and should contain configuraion of application / packages with it's dependencies and service configs, so that it should work out of the box

but the application configuration will be on the userside.

## file structure
homeUtils
    - modules => this is the main function of this file contains all packages with it's required config to work.
        - type of package for easier management
            - package
    - specialfolders => these folder is extention of modules for adding bulk into one import declaration.


### example
to run *hyprland* you need additional packages like dunst, swww, these will be in **modules**, and you need that when you use hyprland right. So add it to this special folder and import this you will get all the packages by default.
for additional packages add to modules and import that one config.
