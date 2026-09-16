#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
run(){ local a; a=$(printf '%s' "$1" | "$root/solution.sh"); [[ "$a" == "$2" ]] || { echo "FAIL: $a != $2"; exit 1; }; }
run '2' 2
run '5' 120
run '9' 362880
echo 'All tests passed.'
