#!/bin/bash
ssh bandit14@localhost -q -o StrictHostKeyChecking=no -i sshkey.private cat /etc/bandit_pass/bandit14