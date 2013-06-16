Lightshow
=========
Command line interface for LED lighting systems.

Command line reference
======================
```
NAME
    lightshow - Manage color and dimmable LEDs

SYNOPSIS
            lightshow <command> [options] [@profile]

            lightshow <on|off|dim|dimest|bright|brightest>
            lightshow color <color-number>
            lightshow list
            lightshow <program>

COMMANDS
    on      Turn all lights on.

    off     Turn all lights off.

    dim     Dim all lights by one dim step.

    dimest  Dim all lights to the lowest setting.

    bright  Brighten all lights by one dim step.

    dimest  Birghten all lights to the highest setting.

    color [color-number]
            Set all lights to the color code specified. The color code must
            be between 0 and 255 or 'white'.

    list    List all available macro programs.

    <program>
            Run a macro program.

            You can use 'list' to get a list of available programs.

    version Display various version informaiton about the lightshow program.

OPTIONS
    [@profile]
            Specifies which profile to use when addressing Lightshow.

                    # Display version information fod the default profile
        
                    lightshow version


                    # Use profile 'upstairs' specifically

                    lightshow version @upstairs

    --dryrun
    -n      Dry run mode. When enabled Lightshow will continue as normal but
            no actual call to the remote interface is made. This can be
            useful for debugging when combined with '--verbose'.

    -v
    --verbose
            Be more verbose when outputting information to STDERR. Specify
            multiple times to increase verbosity.

DESCRIPTION
    A command line tool for the manipulation LED lighting systems.

EXAMPLES
    lightshow on
        Turn on all lights.

    lightshow color 50 @upstairs
        Set all lights under the profile 'upstairs' to color number 50.

    lightshow strobe
        Run the macro program 'strobe' on the default profile.

FILES
    /etc/lightshowrc
            System global Lightshow file.

    .vmmrc  Lightshow config file for the local user.

CONFIG
    The /etc/lightshowrc and .lightshowrc files will be processed to
    determine Lightshow's configuration, the latter file taking precedence.

    The layout of the config file spcifies which profiles to use.

            [GLOBAL]
            profile = Downstairs
            protocol = udp

            [Upstairs]
            address = 10.0.0.101
            port = 50000
            mode = white

            [Downstairs]
            address = 10.0.0.102
            port = 50000
            mode = color

INSTALLATION
    VMM requires a few external modules before it can work correctly. Follow
    the following stages to get everything working.

    Install all the required CPAN modules:

            cpan Config::IniFiles Getopt::Long

BUGS
    Quite probably.

    Please report to https://github.com/hash-bang/Lightshow if found.

AUTHOR
    Matt Carter <m@ttcarter.com>

```
