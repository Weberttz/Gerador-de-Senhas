#!/usr/bin/env bash

[[ -f $1 ]] && echo "O arquivo '$1' já existe" && exit 1

echo "#!/usr/bin/env bash" >> $1
chmod +x $1
