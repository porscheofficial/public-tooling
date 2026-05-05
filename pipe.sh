#!/usr/bin/env bash
set -e

if ! command -v gh &>/dev/null; then
  echo "❌ GitHub CLI is required. Install it"
  exit 1
fi

if ! gh auth status &>/dev/null; then
  echo "⚠️ GitHub CLI is not authenticated. Starting login…"
  gh auth login
fi

curl -L "https://github.com/$1" | bash -s -- $2 $3 $4 $5 $6 $7 $8 $9
