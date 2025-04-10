# Development standard

- [Development standard](#development-standard)
  - [Git](#git)
    - [Commit Template](#commit-template)
    - [Rule](#rule)
    - [Flow](#flow)
    - [Labels](#labels)
  - [Task weight](#task-weight)
  - [Packages](#packages)
    - [Add](#add)
    - [Remove](#remove)
    - [Export requirements.txt](#export-requirementstxt)
  - [Sphinx](#sphinx)
  - [SSH Stub](#ssh-stub)
    - [Usage](#usage)


## Git
### Commit Template
```
# Format
Prefix: Message

# Prefix
- add: add files
- update: update files
- delete: delete files
- fix: fix bugs
```

 ### Rule
[Gitflow workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=What%20is%20Gitflow%3F,lived%20branches%20and%20larger%20commits.)
![gitflow](../images/git-flow.png)

### Flow
1. Design specification: `feature-<issue number>-design-<sth>`
    - Readme
    - Sequence
2. Develop: `feature-<issue number>-make-<sth>`
    - Unit test
3. Integral test: `release-<version number>`
4. Bug fix: `hotfix-<issue number>-make`

### Labels
- Design: `design`
- Develop: `M/UT`
- Integral test: `IT`
- Bug: `bug`

## Task weight
| Weight | estimated time |
| ------ | -------------- |
| 1      | less than 1h   |
| 2      | 1h <= N < 2h   |
| 3      | 2h <= N < 3h   |
| 5      | 3h <= N < 5h   |
| 8      | 5h <= N < 8h   |
| 16     | 8h <= N < 16h  |
| 24     | 16h <= N < 24h |
| 40     | more than 24h  |

:warning: if it's 40, separate the task


## Packages
### Add
```bash
# production env
poetry add hoge

# specific version
poetry add hoge=3.0.1

# development env
poetry add hoge --group dev
```
### Remove
```bash
poetry remove hoge
```
### Export requirements.txt
```bash
./tool/update-requirements.sh
```

## Sphinx
to generate doc by sphinx in dev env
1. change environment variables below in docker-compose-dev.yml
  - `PROJECT_NAME`
  - `SOURCE_VERSION`

2. run dev container
```
make dev && make python
```
2. run the bash file in the container
```bash
./tools/generate-doc.sh
```

## SSH Stub
`ssh-stub`コンテナ内で模擬したいコマンドがある場合、実行権限を付与したShell scriptを準備し`/usr/local/bin`はいかに配置することで動作させることができる。
### Usage
1. `infra/docker/ssh-stub/ssh/`配下に鍵を生成する
```bash
cd ./infra/docker/ssh-stub
./key-gen.sh
```
2. 模擬したいコマンドを用意し、権限を付与する
```bash
vi ./infra/docker/ssh-stub/demo_scripts/docker
chmod 755 ./infra/docker/ssh-stub/demo_scripts/docker
```
3.  `docker-compose-dev.yml`で`ssh-stub`コンテナ内の`/usr/local/bin/docker`にマウントする
4. sshコマンドを実行する
```bash
ssh -i infra/docker/ssh-stub/ssh/id_rsa root@localhost -p 22222 'docker inspect vpc-gitlab -f "{{json .State.Status}}"'
```
