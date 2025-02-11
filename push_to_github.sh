#!/bin/bash
/opt/trishikasolutions/env/bin/python /opt/trishikasolutions/manage.py distill-local /home/badal/trishika2024.github.io/docs/
cd /home/badal/trishika2024.github.io

cd /home/badal/trishika2024.github.io/docs
cat <<EOF >CNAME
www.trishikasolutions.com
EOF

cp -r /opt/trishikasolutions/media /home/badal/trishika2024.github.io/docs/
cd /home/badal/trishika2024.github.io

git add .
git commit -m "Website Pushed"
git push origin
