# job, fg, bg

## bash

```Shell
$ ping ya.ru &> test.file &
[1] 22968
```

Use `jobs` to view running jobs:

```Shell
$ jobs
[1]+  Running   ping ya.ru >&test.file &
```

You can use Ctrl + Z to send running job to background:

```Shell
$ ping ya.ru &> test.file
^Z
[1]+  Stopped   ping ya.ru >&test.file
$ jobs
[1]+  Stopped   ping ya.ru >&test.file
```

When you use Ctrl + Z jobs stopped. To continue use `bg` with job number:

```Shell
$ bg 1
[1]+ ping ya.ru >&test.file &
$ jobs
[1]+  Running   ping ya.ru >&test.file &
```

Now, for move jobs to foreground use `fg`:

```Shell
$ jobs
[1]+  Running   ping ya.ru >&test.file &
$ fg 1
ping ya.ru >&test.file
^C
$
```

## fish

```Shell
~> ping ya.ru &> test.file &
```

Use `jobs` to view running jobs:

```Shell
~> ping ya.ru &> test.file &
~> jobs
Job Group   State   Command
1   22153   running ping ya.ru &> test.file &
```

You can use Ctrl + Z to send running job to background:

```Shell
~> ping ya.ru &> test.file
^Z
~> jobs
Job Group   State   Command
1   22242   stopped ping ya.ru &> test.file
```

When you use Ctrl + Z jobs stopped. To continue use `bg`. In fish shell you need to use pid, instead of job number:

```Shell
~> jobs
Job Group   State   Command
1   22242   stopped ping ya.ru &> test.file
~> bg 22242
Send job 1 'ping ya.ru &> test.file' to background
~> jobs
Job Group   State   Command
1   22242   running ping ya.ru &> test.file
```

Now, for move jobs to foreground use `fg`:

```Shell
~> jobs
Job Group   State   Command
1   22242   running ping ya.ru &> test.file
~> fg 22242
Send job 1, 'ping ya.ru &> test.file' to foreground
^C
~>
```
