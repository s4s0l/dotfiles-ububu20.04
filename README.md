# dotfiles-ububu20.04

## instalacja z zfsem jako root
```
https://www.medo64.com/2020/05/installing-encrypted-uefi-zfs-root-on-ubuntu-20-04/
```

## Generyczna instrukcja 


### Inicjacja dotdropa

```
sudo add-apt-repository universe
sudo apt install git
```

Odpowiednio skonfigurować sobie git'a, podegrać jakieś kluczyki itp

```
sklonować to repo i w katalogu gdzie trafiło to repo robimy:
git submodule init
git submodule update
sudo apt install python3-pip
pip3 install -r dotdrop/requirements.txt --user
sudo pip3 install -r dotdrop/requirements.txt --user
```

### jak to uruchamiać

```
./install-global.sh #to zainstaluje rzeczy z roota, patrz dotfiles-global i config-global.yml
```

```
./install.sh # to instaluje rzeczy dla usera
```
### co gdzie się znajdzie

* `~/.bin` w tym katalogu mogą być tylko uruchamialne rzeczy pochodzące z dotdropa
* `~/.bin-opt` tu można se dorzucać swoje rzeczy które się mają znaleźć na PATH, tam też 
   sam dotdrop może dokopiowywać jakieś rzeczy. Rozdzielone względem `~/.bin`, aby dało się synchronizować `~/.bin` do i z dotdropa w całości. 
* `~/.opt` tu instalowane są aplikacje różne różniaste   


### migracja thunderbirda

Po zainstalowaniu nowy thunderbird (ze wsparciem dla pgp 78 cośtam) wyląduje w ~/.opt i będzie podlinkowany do ~/.bin-opt więc thunderbird uruchomi nowego ale linki z gnoma będą wskazywać na starego. 

Po skopiowaniu ~/.thunderbird uruchomić:

```
~/.opt/thunderbird/thunderbird -profilemanager
```
I wybrać co tam trzeba

# TODO:

* aws-cli
* 



# Other notes for sasol only

## karta sd
```
nie działa mi sd :/ 
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



