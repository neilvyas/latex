**NOTE**: You must make this repository visible to whatever distribution of $\LaTeX$ you are using. For me,
this involved adding 

```bash
export TEXINPUTS=".:~/latex:"
```

to my `.zshrc` and then keeping this repository in `~/latex`.

* * *
##Packages

**mymath**  
Commonly used math stuff, mostly shortcuts for fields like the reals, common text expressions like
span and argmin, etc.

##Classes

**assignment**  
Subclasses `article`. Exposes nice header and question formatting. Also changes font to heuristica 
and has some other tweaks.
