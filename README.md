# cache_drop
A very small program I wrote to learn windows batch scripting. This helps delete the __pycache__ file without .gitignore file to smoothly merge backend.
### Parameter
Pass the parent directory that contains the backend.\n 
> \> cache_drop D:\Project\Backend-Api

### When new NBA folders are added?
Set the last element of ***nba[] Array*** as shown below.

```batchfile
set nba[0]=NBA21
set nba[1]=NBA22
set nba[3]=<$name> //here the 3rd folder name is added
```
