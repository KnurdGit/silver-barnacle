# Top Quick Reference

## Display

|Function|Key's|
|-|-|
| Show\Hide uptime info | `l` |
| Show\Hide info per core | `1` |
| Switch CPU info display mod | `t` |
| Switch MEM info display mod | `m` |
| Switch bold\backlight mod | `b` |
| Highlight the sorting column | `x` |
| Show full path | `c` |
| Show processes for specific user | `u` or `U` |
| Hide processes for specific user | `u` or `U` and `!` between user name |
| Tree view | `V` |
| Processes\Threads | `H` |
| Refresh interval | `d` or `s` |
| Switch between sort columns | `<` and `>` |
| Search | `L` |
| Drop filters | `=` or `+` |
| Select sort field | `f` or `F`, select field, `d`, `s` |
| Hide idle processes | `i` |
| Switch memory units in memory string | `E` |
| Switch memory units in processes strings | `e` |
| Enable cumulative mode | `S` |

## Filtering

|Function|Key's|
|-|-|
| Print all field available to sorting with `o` | `top -O` |
| Filter by field value |`o`|

Examples:
```
COMMAND=getty
!COMMAND=getty
%CPU>3.0
```

## Alternative mode

|Function|Key's|
|-|-|
| Alternative mode | `A` |
| Switch to next window | `s` |
| Switch to previous window | `w` |
| Select window | `g` |
| Change window name | `G` |
| Hide window | `-` |

## Processes

|Function|Key's|
|-|-|
| Kill process | `k`, then PID and pick signal |
| Change nice value | `r`, then PID, then new nice |

## Command line

|Function|Key|
|-|-|
| Print to output | `top -b -n 1` |
| Per user | `top -u username` |
| Top for specific process | `top -p 1309, 1882` |
| Cumulative time. Each process is listed with the cpu time that it and its dead children have used.| `-S` |

## Other

|Function|Key|
|-|-|
| Save top config to `~/.config/procps/toprc` | `W` |
