# -*- mode:mkfile -*-
TECO = teco # need to rebuild TECO-64 with nstrict=1 to disable syntax check
all:V: sqush.tec

test:V:
	$TECO -T 'conv.tec=conv.tes/D:Y/B:Y/C:+ :/T:Y/E:Y/P/A:Y' -E sqush.tec

sqush.tec: sqush.tes
	$TECO -T 'test.tec=sqush.tes/D:Y/B:Y/C:+ :/T:Y/E:Y/P/A:Y' -E sqush.tec
