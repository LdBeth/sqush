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

Note that not all extensions of TECO-64 are covered, and original
`squ.tes` also missed several F and E commands. Using this program at
your own risks.

Happy TECO programming.

*If you use Emacs, you can use my [emacs mode](https://github.com/LdBeth/InfernoEmacs/blob/master/core/teco-mode.el)*