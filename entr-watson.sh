#!/bin/bash
ls "$HOME/.config/watson/frames" | entr -cr "$HOME/scripts/reporting.sh"
