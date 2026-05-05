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

gh api -H "Accept: application/vnd.github.raw" "/repos/$1/contents/$2?ref=main" | bash -s -- $3 $4 $5 $6 $7 $8 $9
