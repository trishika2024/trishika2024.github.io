#!/bin/bash
/opt/trishikasolutions/env/bin/python /opt/trishikasolutions/manage.py distill-local /home/badal/trishika2024.github.io/docs/
cd trishika2024.github.io

cd docs
cat <<EOF >CNAME
trishikasolutions.com
EOF

cp -r /opt/trishikasolutions/media .
cd /home/badal/trishika2024.github.io

git add .
git commit -m "Website Pushed"
git push origin
