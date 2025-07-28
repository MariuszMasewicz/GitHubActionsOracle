#!/bin/bash
set -e

OUT_FILE="ut_results.xml"

# 2. Pokaż zawartość dla debugowania (opcjonalne)
cat $OUT_FILE
echo " "

# 3. Parsowanie XML: sprawdzanie liczby błędów i niepowodzeń
FAILURES=$(xmllint --xpath 'string(//testsuite/@failures)' "$OUT_FILE")
ERRORS=$(xmllint --xpath 'string(//testsuite/@errors)' "$OUT_FILE")

TOTAL=$((FAILURES + ERRORS))

if [ "$TOTAL" -gt 0 ]; then
  echo "❌ Wykryto błędy testów: failures=$FAILURES, errors=$ERRORS"
  exit 1
else
  echo "✅ Wszystkie testy zakończone sukcesem"
  exit 0
fi
