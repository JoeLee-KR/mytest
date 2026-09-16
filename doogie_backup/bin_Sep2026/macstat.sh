#!/bin/bash
# CPU, GPU temperature
sudo powermetrics --samplers smc -n 1 | grep -i "temp\|die"
