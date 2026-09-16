#!/usr/bin/env bash

read -r n

factorial=1
for ((i = 2; i <= n; i++)); do
    factorial=$((factorial * i))
done

printf '%d\n' "$factorial"
