ssh-keygen -t rsa -C "your@email.com" #generates the private and public keys
cat demo.pub #copy the content. This will be using in Github to add the SSH Keys
cp demo* $HOME/.ssh #copy files generated to the $HOME
eval "$(ssh-agent -s)" #creates a persistent SSH process 
ssh-add $HOME/.ssh/demo #add Keys to .ssh
ssh-add -l #shows your identitiy
ssh -T git@github.com #Test connectivity