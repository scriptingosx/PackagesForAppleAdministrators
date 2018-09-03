#!/bin/sh

PATH=/usr/bin:/bin:/usr/sbin:/sbin export PATH

profileName="GoogleChrome.mobileconfig"
setupPath="/private/var/db/ConfigurationProfiles/Setup/"

resources=$(dirname "$0")
profilePath="${resources}/${profileName}"

if [ "$3" = "/" ] ; then
    profiles -I -F "${profilePath}"
else
    mkdir -p "$3${setupPath}"
    cp "$3${profilePath}" "$3${setupPath}${profileName}"
    /bin/rm -f "$3${setupPath}.profileSetupDone"
fi

settingsDir="Library/Application Support/Google/Chrome/"

# function to touch the First Run file
createSettingsFile() { # userUID userHome
    if [ ! -d "$2/${settingsDir}" ]; then
        mkdir -p "$2/${settingsDir}"
        chown "$1" "$2/Library"
        chown "$1" "$2/Library/Application Support/"
        chown "$1" "$2/Library/Application Support/Google"
        chown "$1" "$2/Library/Application Support/Google/Chrome"
    fi
    if [ -d "$2$/{settingsDir}" ]; then
        touch "$1/${settingsDir}/First Run"
        chown "$1" "$2/${settingsDir}/First Run"
    fi
}

# create file in existing user home directories
for userHome in "$3/Users"/*
do
    userUID=$(basename "${userHome}")
    # skip the Shared folder
    if [ ! "${userUID}" = "Shared" ]; then
        createSettingsFile "${userUID}" "${userHome}"
    fi
done

# create file in user templates
for userTemplate in "$3/System/Library/User Template"/*
do
    createSettingsFile "root" "${userTemplate}"
done
