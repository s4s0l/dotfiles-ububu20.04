# dotfiles-ububu20.04

## instalacja z zfsem jako root
```
https://www.medo64.com/2020/05/installing-encrypted-uefi-zfs-root-on-ubuntu-20-04/
```

## Generyczne problemy

```
sudo add-apt-repository universe
sudo apt install git

```
Odpowiednio skonfigurować sobie git'a, podegrać jakieś kluczyki itp

```
sklonować to repo:
git submodule init
git submodule update
sudo apt install python3-pip
sudo pip3 install -r dotdrop/requirements.txt --user
pip3 install -r dotdrop/requirements.txt --user
```


```
docker 
opera
spotify
exa
fd
ripgrep-bash-completion
fzf bash completion
terraform
aws-cli


```





# Other stuff

## karta sd
```
nie działa mi sd
```

##  Modem 
```
z modemem to za chuja nie wiem jak to ma działa ogólnie mmcli coś robi z dotfiles-mx ale network manager tego w ubuntu nie ogarnia ale po paru włączeniach i wyłączeniach i wyłączeniu i wyłączeniu interfejsu sieciowego wwan0 pommogło jakby
```
## smart card

```
gpg --card-status
gpgconf --kill gpg-agent
gpg --import stubs.asc	
gpgconf --kill gpg-agent
gpg --card-status

ensure enable-ssh-support is present in ~/.gnupg/gpg-agent.conf. 
gpg --with-keygrip -K kopiujemy keygrip ten który ma [A] i dodajemy do ~/.gnupg/sshcontrol

sasol@localhost:~/Projects> cat ~/.gnupg/gpg-agent.conf 
enable-ssh-support
sasol@localhost:~/Projects> cat ~/.gnupg/sshcontrol 
D9BD0CA4FEDD94DB329988641B9BE4D09DDF2250

gpgconf --kill gpg-agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
ssh-add -l


```



