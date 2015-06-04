How to generate these files using vim and command-line
======================================================

First, using a bit of inspection, we see that the urls are of the form

    http://www.4lyrics.eu/eurovison/esc-<year>/

So we want to create these. Let's put them in a file by running python within
vim. The following code generates the filenames.

```
for i in range(1956,2016):
  print r'http://www.4lyrics.eu/eurovision/esc-' + str(i) + r'/'
```

To run it in vim, we highlight it and press `:!python`. Then the files
magically populate. I call this file baseget.

We now need to extract each year from this url. I do this in stages. Each year has a url. We will give each year a directory and populate each directory with the lyrics from that year. I save the following macro to the `q` register in vim.

```vim
/\dnvt/"dyHvLh"fy:!wget f:!mkdir d:!mv index.html	 d/
```

Let's parse what it does. TODO

We then apply it to the whole file by visually selecting everything `ggVG` and then typing

```VimL
:norm! @q
```

This applies the macro in the `q` register to each highlighted file. Now we have many directories. In each directory we want to get and then extract the lyrics from each country.

vim: foldmethod=indent foldcolumn=2 ts=2 sw=2 sts=2
