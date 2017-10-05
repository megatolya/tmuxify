# tmuxify
run tmux ez 😌

```shell
$ pwd
~/projects/example.com

$ tmuxify # starts (or restores!) tmux session called examplecom (example.com not valid name)
```

## What's the point?
By default `tmux` pick numerical session name. 
```shell
$ tmux list-sessions
0: 1 windows (created Wed Oct  4 11:06:24 2017) [270x58]
```
And if you have several projects on same machine it is difficult to find the right session.

So now you can restore your session if you call tmux from same directory. Or just by passing it's name.

In first example we started session in `~/projects/example.com`. If it want to connect to it again from any where:
```shell
$ tmuxify example.com
```
or if you are in same directory
```shell
$ pwd
~/projects/example.com

$ tmuxify
```
