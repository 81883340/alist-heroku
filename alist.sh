# 创建配置文件目录
mkdir -p /alist/config/

# 写入配置文件
cat >/alist/config/conf.yml <<EOF
info:
  title: 影音云
  logo:
  footer_text: 影音云
  footer_url: 
  music_img: https://img.oez.cc/2020/12/19/0f8b57866bdb5.gif
  check_update: false
  script: ""
  autoplay: true
  preview:
    url: ""
    pre_process: []
    extensions: []
    text:
    - txt
    - htm
    - html
    - xml
    - java
    - properties
    - sql
    - js
    - md
    - json
    - conf
    - ini
    - vue
    - php
    - py
    - bat
    - gitignore
    - yml
    - go
    - sh
    - c
    - cpp
    - h
    - hpp
    max_size: 0
server:
  address: 0.0.0.0
  port: "$PORT"
  search: true
  static: dist
  site_url: '*'
  password: $DPASSWORD
ali_drive:
  api_url: https://api.aliyundrive.com/v2
  max_files_count: 200
  drives:
  - refresh_token: $ATOKEN
    root_folder: $BFOLDER
    name: home
    password: ""
    hide: false
database:
  type: sqlite3
  dBFile: alist.db
EOF

cd /alist
./alist -conf config/conf.yml
