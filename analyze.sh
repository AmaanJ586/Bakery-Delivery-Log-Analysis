
#!/bin/bash

echo "=================================="
echo " BAKERY AUTHENTICATION LOG ANALYSIS"
echo "=================================="

echo ""
echo "1. Total log entries:"
wc -l auth.log

echo ""
echo "2. Failed login attempts:"
grep "Failed" auth.log

echo ""
echo "3. Failed login IP addresses:"
grep "Failed" auth.log | awk '{print $(NF-3)}'

echo ""
echo "4. Failed login counts per IP:"
grep "Failed" auth.log | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr

echo ""
echo "5. Suspicious IP activity:"
grep "192.0.2.45" auth.log | grep "Failed"

echo ""
echo "6. Total attempts from primary suspicious IP:"
grep "192.0.2.45" auth.log | grep "Failed" | wc -l

echo ""
echo "Analysis completed."
