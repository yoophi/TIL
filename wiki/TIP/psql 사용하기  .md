`mysql`을 사용할 때 다음과 같은 방법으로 간단하게 쿼리를 실행하고, 출력 결과를 다른 shell 프로그램에서 사용할 수 있었다.

```bash
$ echo 'show databases;' | mysql -u user --password=secret db
```

`psql`을 사용할 때, 비슷한 상황을 해결하려면 아래와 같은 방법을 사용하면 된다.
다만, 몇가지 단계가 필요하다.

### 비밀번호 없이 실행하기

가장 간단한 방법은, 로컬에서 `psql`을 사용할 때 비밀번호를 사용하지 않아도 되도록 설정하는 
것인데, 그렇게 할 수 없는 경우가 있다. 그럴때 쉬운 방법으로 `PGPASSWORD` 환경변수를 
이용하면 된다.

```bash
$ PGPASSWORD=secret psql -h hostname -U user db
```

### 쿼리를 실행하고 바로 종료하기, 출력 조정하기

쿼리를 실행하고 바로 종료하기 위해스는 `-c` 를 이용하면 된다. 그리고, 출력결과에서 
column header 를 표시하지 않고, record 정렬을 사용하지 않기 위해
`-t`, `-A` 옵션을 주면, 최종적으로 아래와 같이 된다.

```bash
$ PGPASSWORD=secret psql -A -t -h hostname -U user \
  -c 'select max(id) from users' db
```