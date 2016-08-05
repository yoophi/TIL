# 특정 프로세스가 사용하는 파일 및 소켓 확인하기 

예를 들어, `supervisord` 라는 프로세스가 사용하는 파일 및 소켓을 찾기 위해서는
`lsof` 명령을 사용하면 된다.

```bash
$ ps -ef | awk '/supervisord/{ print $2 }'
30015
30717
```

첫번째 결과인 `30015`가 `supervisord` 의 PID 이므로, 아래 명령을 실행해서
열린 파일 및 소켓을 확인할 수 있다.

```bash
$ sudo lsof -p 30015
COMMAND   PID USER   FD   TYPE             DEVICE SIZE/OFF     NODE NAME
python  30015 root  cwd    DIR              252,0     4096  2277499 /etc/supervisor/conf.d
python  30015 root  rtd    DIR              252,0     4096        2 /
python  30015 root  txt    REG              252,0  2993744  1577408 /usr/bin/python2.7
python  30015 root  mem    REG              252,0    52120   393286 /lib/x86_64-linux-gnu/libnss_files-2.15.so
python  30015 root  mem    REG              252,0    47680   393291 /lib/x86_64-linux-gnu/libnss_nis-2.15.so
python  30015 root  mem    REG              252,0    97248   393251 /lib/x86_64-linux-gnu/libnsl-2.15.so
python  30015 root  mem    REG              252,0    35680   393296 /lib/x86_64-linux-gnu/libnss_compat-2.15.so
python  30015 root  mem    REG              252,0    11040  1605980 /usr/lib/python2.7/lib-dynload/resource.so
...
# 생략
```

권한이 불충분할 경우, `sudo` 를 이용하여 실행해야할 수도 있다. `xargs` 이용해 
한 줄로 실행한다면 아래 형태가 되겠다.

```bash
$ ps aux | awk '/supervisord/ { print $2}' | xargs -IP sudo lsof -p P
```