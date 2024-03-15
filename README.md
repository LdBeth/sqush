# SQUSH

This TECOC's `squ.tes` macro which removes comments and extra space in
TECO macro source code to improve speed, adapted for TECO-64. Original
author and license are unknown.

SQUSH sub-squish into `^U` macros, and uses non-printable ASCII
characters whenever possible, which TECO-64's builtin squisher `EM`
does not do.

To use with TECO-64, you need to rebuild it using `nstrict=1` to
disable strict syntax check, there is currently a bug which
prevents usage of GO TO inside macro level.

Note that not all language extensions of TECO-64 are covered, and
original `squ.tes` also missed several F and E commands. Using this
program at your own risks.

Using command
```
teco -T 'sqush.tec=sqush.tes/D:Y/B:Y/C:+:/T:Y/E:Y/P/A:Y' -E sqush.tes
```

to produce the squished macro from the source itself. It took about
one minute to bootstrap so a copy of squished macro is included in repo.

Happy TECO programming.

*If you use Emacs, you can use my [emacs mode](https://github.com/LdBeth/InfernoEmacs/blob/master/core/teco-mode.el)*
Actually I made this project to torture test the emacs mode I made.

## TECO-64 specific language features that are not (yet) supported

* TECO-64 automatically skips ascii space character when look for
  delimiters for `@` modified commands. This macro does not yet do
  that, so spaces before delimiter are not allowed.

* TECO-64 supports using `!` as operator in arithmetic expression
  enclosed between `()`.

* TECO-64 does not consume text argument to `I` if it already has
  a numerical argument. This means `1i2i3i` is valid for TECO-64
  but not in traditional TECOs.

* `n^Uq` without text argument is valid but `squ.tes` insists
`^Uq` must have text argument. This is also valid in TECOC.

