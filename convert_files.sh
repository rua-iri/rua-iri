#!/bin/bash

# links_array=(
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/pytest/pytest-original.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/fastapi/fastapi-original.svg"
# "https://raw.githubusercontent.com/devicons/devicon/refs/heads/master/icons/java/java-original.svg"
# "https://raw.githubusercontent.com/devicons/devicon/refs/heads/master/icons/spring/spring-original-wordmark.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original-wordmark.svg"
# "https://github.com/devicons/devicon/raw/master/icons/express/express-original-wordmark.svg"
# "https://github.com/devicons/devicon/raw/master/icons/jest/jest-plain.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/sqlite/sqlite-original.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/dynamodb/dynamodb-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/docker/docker-plain.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/raspberrypi/raspberrypi-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/amazonwebservices/amazonwebservices-original-wordmark.svg"
# "https://github.com/devicons/devicon/raw/master/icons/cloudflare/cloudflare-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/linux/linux-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/javascript/javascript-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/react/react-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/nextjs/nextjs-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/angular/angular-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/electron/electron-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/vitejs/vitejs-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/axios/axios-plain-wordmark.svg"
# "https://github.com/devicons/devicon/raw/master/icons/hugo/hugo-original.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/tailwindcss/tailwindcss-original.svg"
# "https://raw.githubusercontent.com/devicons/devicon/master/icons/bootstrap/bootstrap-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/bulma/bulma-plain.svg"
# "https://github.com/devicons/devicon/raw/master/icons/vscode/vscode-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/vim/vim-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/firefox/firefox-original.svg"
# "https://github.com/devicons/devicon/raw/master/icons/debian/debian-original.svg"
# )


# for x in "${links_array[@]}"; do
#   echo "Downloading: $x"
#   wget "$x" --directory-prefix images/svg
#   echo ""
# done


file_array=(images/svg/*.svg)


for file in "${file_array[@]}"; do

  echo "Converting: $file"
  new_filename="${file//svg/webp}"
  echo $new_filename

  rsvg-convert $file --height 40 --width 40 -o $new_filename
  echo ""

done
