# -*- coding: UTF-8 -*-
# Generated by banner-generator. Github: https://github.com/KasRoudra/banner-generator
import os, sys, time
# Normal
black="\033[0;30m"
red="\033[0;31m"
green="\033[0;32m"
yellow="\033[0;33m"  
blue="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
white="\033[0;37m"
# Bold
bblack="\033[1;30m"
bred="\033[1;31m"
bgreen="\033[1;32m"
byellow="\033[1;33m"
bblue="\033[1;34m"
bpurple="\033[1;35m"
bcyan="\033[1;36m"
bwhite="\033[1;37m"

# Use colors according to your wish       

# Use https://fsymbols.com/generators/carty/ for your own font in banner

# If you use a custom banner from any site, you may use custombanner.py to add colors easily

logo='''
███████████                      █████                        ██████   ██████
░░███░░░░░███                    ░░███                        ░░██████ ██████
 ░███    ░███ ████████   ██████  ███████    ██████             ░███░█████░███
 ░██████████ ░░███░░███ ███░░███░░░███░    ███░░███ ██████████ ░███░░███ ░███
 ░███░░░░░░   ░███ ░░░ ░███ ░███  ░███    ░███ ░███░░░░░░░░░░  ░███ ░░░  ░███
 ░███         ░███     ░███ ░███  ░███ ███░███ ░███            ░███      ░███
 █████        █████    ░░██████   ░░█████ ░░██████             █████     █████
░░░░░        ░░░░░      ░░░░░░     ░░░░░   ░░░░░░             ░░░░░     ░░░░░

'''+bcyan+'''┏┓ ╻ ╻    ┏┓┏━┓╻ ╻┏━┓┏┓╻
'''+bcyan+'''┣┻┓┗┳┛     ┃┃ ┃┣━┫┣━┫┃┗┫
'''+bcyan+'''┗━┛ ╹    ┗━┛┗━┛╹ ╹╹ ╹╹ ╹

'''+byellow+''' C o m a n d o s:

'''+bgreen+'''		sudo johan || menu || proto

'''
def slowprint(n):
    for word in n + '\n':
        sys.stdout.write(word)
        sys.stdout.flush()
        time.sleep(0.01)
slowprint(logo)
