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
            lightshow server
            lightshow <macro>

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

    list    List all available macros.

    <macro> Run a Lightshow macro.

            You can use 'list' to get a list of available macros.

    server  Start the Lightshow REST server and listen for commands.

            See SERVER for more information.

    version Display various version informaiton about the lightshow macro.

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

    -p [port]
            Specify an alternate server port other than the default '8080'.

            This is only useful if Lightshow is executed with the 'server'
            command.

    -v
    --verbose
            Be more verbose when outputting information to STDERR. Specify
            multiple times to increase verbosity.

SERVER
    When started with the 'server' command lightshow will daemonize as a
    listening REST server.

    By default the server will listen on port 8080 unless it is overridden
    with '-p'.

    THIS FUNCTIONALITY IS EXPERIMENTAL

    The easiest way of commanding the server is using Wget:

            wget -qF -O - http://localhost:8080/json/list

    The following commands are accepted:

    http://localhost/json/list
            Return a JSON response of the macros supported by Lightshow.

    http://localhost/json/run/$macro
            Run a macro.

            Lightshow will actually fork and continue running the macro as a
            seperate process from the server. This means that macros that
            run in a loop can continue to do so until stopped or the
            lightshow process killed.

    http://localhost/json/stop
            Stop running any macros.

DESCRIPTION
    A command line tool for the manipulation LED lighting systems.

EXAMPLES
    lightshow on
        Turn on all lights.

    lightshow color 50 @upstairs
        Set all lights under the profile 'upstairs' to color number 50.

    lightshow strobe
        Run the macro 'strobe' on the default profile.

FILES
    /etc/lightshowrc
            System global Lightshow file.

    $HOME/.lightshowrc
            Lightshow config file for the local user.

    $HOME/.lightshow/macros
            Lightshow macro files for the local user.

CONFIG
    The /etc/lightshowrc and .lightshowrc files will be processed to
    determine Lightshow's configuration, the latter file taking precedence.

    The layout of the config file spcifies which profiles to use.

            [GLOBAL]
            profile = Downstairs
            protocol = udp
            syslog = off
            kill = off
            verbose = 0

            [Upstairs]
            address = 10.0.0.101
            port = 50000
            mode = white

            [Downstairs]
            address = 10.0.0.102
            port = 50000
            mode = color

    address The IP address of the server to use.

    kill    Attempt to find and kill all other versions of Lightshow before
            continuing.

    mode    Which mode to support. Valid options are: color and white

    port    The port to use on the remote server.

    profile Specify the default profile to use if none is explicity stated.

    protocol
            Set the protocol to use. Valid options are: tcp and udp

    verbose The amount of verbosity to use.

    syslog  Also log all output to SysLog.

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
