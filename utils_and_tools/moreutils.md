# moreutils

## chronic

Runs a command, and arranges for its standard out and standard error to only be displayed if the command fails.

```bash
➜ chronic ls twitter.json

➜ chronic ls dir_0
ls: dir_0: No such file or directory
```

## combine

Combines the lines in two files using boolean operations.

```bash
➜ cat a
Berlin
Hamburg
Munich
Cologne
Frankfurt

➜ cat b
Dortmund
Frankfurt
Essen
Berlin
Stuttgart

➜ combine a and b
Berlin
Frankfurt

➜ combine a not b
Hamburg
Munich
Cologne

➜ combine a or b
Berlin
Hamburg
Munich
Cologne
Frankfurt
Dortmund
Frankfurt
Essen
Berlin
Stuttgart

➜ combine a xor b
Hamburg
Munich
Cologne
Dortmund
Essen
Stuttgart
```

## errno

This tool looks up errno macro names, errno codes, and the corresponding descriptions.

```bash
➜ errno 2
ENOENT 2 No such file or directory

➜ errno 100
EPROTO 100 Protocol error

➜ errno -l
EPERM 1 Operation not permitted
ENOENT 2 No such file or directory
ESRCH 3 No such process
EINTR 4 Interrupted system call
...
```

## ifdata

This tool can be used to check for the existence of a network interface, or to get information about the interface, such as its IP address, all statistics on input and output, number of packets, bytes, errors, drops, incoming and outgoing bit rate, etc

## ifne

This tool runs a program if the standard input is not empty. The name stands for “if not empty” and it simply runs the passed command to it, if it receives at least one byte in the stdin. You can also use the -n flag which causes ifne to reverse the operation, e.g., runs the command passed to it if the standard input is empty.

```bash
➜ find . -name core | ifne mail -s "Core files found" root
```

## isutf8

This tool checks if a file or standard input are syntactically valid UTF-8. Input is either files named on the command line, or the standard input.

## parallel

This tool runs the specified command, passing it a single one of the specified arguments.

```bash
➜ parallel sh -c "echo hi; sleep 2; echo bye" -- 1 2 3
```

```bash
➜ parallel -j 3 ufraw -o processed -- *.NEF
```

The above command runs three ufraw processes at the same time until all of the NEF files have been processed.

## pee

This command is similar to how tee uses the standard input but for pipes, hence the name. It allows redirecting output to multiple commands at once.

```bash
➜ cat file
5
4
3
2
1
➜ cat file | pee 'sort -u > sorted' 'sort -R > unsorted'
➜ cat sorted
1
2
3
4
5
➜ cat unsorted
3
2
4
1
5
```

## sponge

This tool reads standard input and writes it out to the specified file. Unlike a shell redirect, sponge soaks up all its input before writing the output file.

```bash
sort filename | uniq | sponge filename
```

## ts

This tool adds a timestamp to the beginning of each line of input.

```bash
➜ cat script.sh
#!/bin/bash
echo "The first line"
sleep 5s
echo "The last line"

➜ ./script.sh | ts
Apr 20 02:42:08 The first line
Apr 20 02:42:13 The last line
```

## vidir

This tool allows editing of the contents of a directory in a text editor.

## vipe

This tool allows you to run your editor in the middle of a unix pipeline and edit the data that is being piped between programs.

```bash
➜ ping -c 4 ya.ru | vipe | cut -d ' ' -f 7 | cut -d '=' -f 2
23.332
23.790
23.777
28.019
```

## zrun

This tool automatically decompresses arguments to command. Prefixing a shell command with zrun causes any compressed files that are arguments of the command to be transparently uncompressed to temp files (not pipes) and the uncompressed files fed to the command. This is a quick way to run a command that does not itself support compressed files, without manually uncompressing the files.
