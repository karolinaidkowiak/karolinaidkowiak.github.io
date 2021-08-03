
# On s28.vdl.pl and copy id_rsa.pub to bitbucket authorized keys
ssh-keygen
cat ~/.ssh/id_rsa.pub

# Clone git repo via ssh
mkdir repo
git clone git@bitbucket.org:lukaszidkowiak/terapeuta.git

# Create link to karolinaidkowiak.pl
ln -s ~/repo/terapeuta/dist/ ~/domains/karolinaidkowiak.pl/public_html

# Generate keys for current machine and add id_rsa.pub to lukaszi@s28.vdl.pl
ssh-copy-id lukaszi@s28.vdl.pl -p 59184
