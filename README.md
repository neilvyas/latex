##Installation

Just clone this repository in your home (or wherever is most convenient for you) directory.

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

**essay**  
Subclasses `article`. Redefines a pretty `\maketitle`, mostly, as well as typography and geometry changes.
This will change in the near future to a more MS-word like format, with double spaced text, etc.

**notes**  
Subclasses the current `essay`, with the additional feature of giving a boxed `aside` environment.

**resume**  
A nice, sparse resume, set in Optima with lots of whitespace; you can switch to Palatino, a similar,
but serif, rather than sans-serif, font if you'd like a more professional look.

* * *
##Testing 

Run `make test` to generate the examples for each class. You can find output in the `examples` folder, 
and source files in the `test` folder.
