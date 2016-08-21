# `pip` 를 이용해 github 등에 올려놓은 코드 설치하기

Pypi 에 등록하지 않고, github 등에 올려놓은 코드를 `pip` 를 통해 설치하려면
다음과 같이 `git+` prefix 를 사용하면 된다.

```bash
$ pip install git+https://github.com/some/repo.git@master
$ pip install git+https://github.com/some/repo.git@issue/34/oscar-0.6
```

다음과 같은 방법들도 사용할 수 있다.

```bash
$ pip install https://github.com/user/repository/archive/branch.zip
```

예를 들어, `django` 의 `master` 브랜치, 또는 `stable/1.7.x` 브랜치를 
설치하려면,

```bash
$ pip install https://github.com/django/django/archive/master.zip
$pip install https://github.com/django/django/archive/stable/1.7.x.zip
```

bitbucket 경우에도 비슷하게 할 수 있다.

```bash
$ pip install https://bitbucket.org/izi/django-admin-tools/get/default.zip
```

아니면, `-e` 파라메터를 이용해 다음과 같이 설치할 수 있다. (`-e`는 생략 가능)

```bash
$ pip install -e git+https://github.com/tangentlabs/django-oscar-paypal.git@issue/34/oscar-0.6#egg=django-oscar-paypal
``` 

`requirements.txt` 파일에 의존성을 명시할 때, 아래와 같은 표현식을 사용할 수 있다.

```
[-e] git+git://git.myproject.org/SomeProject#egg=SomeProject
[-e] git+https://git.myproject.org/SomeProject#egg=SomeProject
[-e] git+ssh://git.myproject.org/SomeProject#egg=SomeProject
-e git+git@git.myproject.org:SomeProject#egg=SomeProject
```