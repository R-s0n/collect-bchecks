#!/bin/bash

repos=(
    "https://github.com/PortSwigger/BChecks"
    "https://github.com/NetSPIWillD/BChecks"
    "https://github.com/lisandre-com/BChecks"
    "https://github.com/beishanxueyuan/BChecks"
    "https://github.com/nullfuzz-pentest/bchecks-templates"
    "https://github.com/cyberK9/BChecksFTW"
    "https://github.com/IAmRoot0/BCheck-Rules"
    "https://github.com/0xm4v3rick/Burp-BChecks"
    "https://github.com/buggysolid/bchecks"
    "https://github.com/vrechson/copy-to-bcheck"
    "https://github.com/MrW0l05zyn/bchecks"
    "https://github.com/jimiss/bchecks"
    "https://github.com/QdghJ/burpsuite-bchecks"
    "https://github.com/yeswehack/BCheck-Burp-scripts"
    "https://github.com/CosasDePuma/Hacktomation"
    "https://github.com/KaustubhRai/bchecks"
    "https://github.com/nithisshs/Custom-Bchecks"
    "https://github.com/vmnguyen/bcheck-collection"
    "https://github.com/0x0msg/Bcheck_Collection"
    "https://github.com/j3ssie/custom-bcheck-scan"
    "https://github.com/AliAhdy/Burp-Suite-BChecks---OWASP-ASVS-V4.0.3"
)

clone_dir="cloned_repos"
output_dir="bchecks-full"

mkdir -p "$clone_dir"
mkdir -p "$output_dir"

cd "$clone_dir" || exit

counter=1

for repo in "${repos[@]}"; do
    target_dir="bchecks-repo-$counter"
    git clone "$repo" "$target_dir"
    ((counter++))
done

find . -type f -name '*.bcheck' -exec mv {} ../"$output_dir" \;