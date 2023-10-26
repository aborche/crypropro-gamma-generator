# cryptopro-gamma-generator
Автоматический генератор гаммы для КриптоПро.

Если у вас отсутствует аппаратный ДСЧ рекомендуемый к покупке, а получать гамму через Биологический ДСЧ путём нажатия кнопок - долго и утомительно, этот скрипт специально для вас.

Он предназначен для offline создания гаммы путём имитации нажатия кнопок в linux системе, т.е. нажимает случайные кнопки для генерации гаммы за Вас.

## Причины создания
Почему скрипт ? и почему не работает заполнение Биологического ДСЧ через PIPE и перенаправление ?
Потому что генератор гаммы привязывается к длительности нажатия кнопки и её удержания в десктопных системах(uinput).
Реальный ввод от пользователя происходит с определённой задержкой, поэтому copy-paste не работает.

## Подготовка к работе
Для работы необходима Linux машина с XWindow на борту, Wayland не тестировался.

1. установите пакет xdotool
```bash
# Ubuntu/Debian
sudo apt install xdotool
# Centos/RHEL
yum install epel-release -y
yum install xdotool -y
```
2. Установите пакет CryptoPro CSP
3. Скопируйте genkpim.sh в удобное для работы место
4. Запустите отдельный терминал в котором будет работать скрипт
5. Исправьте количество генерируемых гамм для ключей
6. Запустите скрипт ./genkpim.sh
```bash
user@somehost:/tmp$ ./genkpim.sh
Generating KPIM for 10 signature keys into /tmp/genpim/f8384202/
write KPIM info OK
Press keys to provide random data...
[                                                                              ]Iterating
[..............................................................................]
Press keys to provide random data...
[......                                                                        ]Iterating
[..............................................................................]
kPress keys to provide random data...
[..............................................................................]
jPress keys to provide random data...
[..........                                                                    ]Iterating
[..............................................................................]
YPress keys to provide random data...
[..............................................................................]
mPress keys to provide random data...
[...............                                                               ]Iterating
[..............................................................................]
HPress keys to provide random data...
[..............................................................................]
RPress keys to provide random data...
[.....................                                                         ]Iterating
[..............................................................................]
NPress keys to provide random data...
[..............................................................................]
ePress keys to provide random data...
[............................                                                  ]Iterating
[..............................................................................]
aPress keys to provide random data...
[..............................................................................]
oPress keys to provide random data...
[..................................                                            ]Iterating
[..............................................................................]
aPress keys to provide random data...
[...........................................                                   ]Iterating
[..............................................................................]
SPress keys to provide random data...
[..............................................................................]
fPress keys to provide random data...
[...................................................                           ]Iterating
[..............................................................................]
YPress keys to provide random data...
[..............................................................................]
RPress keys to provide random data...
[.........................................................                     ]Iterating
[..............................................................................]
rSPress keys to provide random data...
[..............................................................................]
HPress keys to provide random data...
[..................................................................            ]Iterating
[..............................................................................]
MPress keys to provide random data...
[..............................................................................]
user@somehost:/tmp$ ls -lRn /tmp/genpim/f8384202/
/tmp/genpim/f8384202/:
total 12
drwxr-xr-x 2 1000 1000 4096 Oct 26 12:30 db1
drwxr-xr-x 2 1000 1000 4096 Oct 26 12:30 db2
-rw-rw-r-- 1 1000 1000    8 Oct 26 12:26 kpim

/tmp/genpim/f8384202/db1:
total 4
-rw-rw-r-- 1 1000 1000 432 Oct 26 12:58 kis_1

/tmp/genpim/f8384202/db2:
total 4
-rw-rw-r-- 1 1000 1000 432 Oct 26 12:58 kis_1
```
7. Скопируйте и используйте генерированную гамму в своей системе.
