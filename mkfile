# -*- mode:mkfile -*-
TECO = teco # need to rebuild TECO-64 with nstrict=1 to disable syntax check
SQUSH = `{ls sqush.* | awk 'FNR <= 1'}
all:V: sqush.tec

test:V:
	$TECO -T 'conv.tec=conv.tes/D:Y/B:Y/C:+:/T:Y/E:Y/P/A:Y' -E sqush.tes
    $TECO -T 'unsqu.tec=unsqu.tes/D:Y/B:Y/C:+:/T:Y/E:Y/P/A:Y' -E sqush.tes

sqush.tec: sqush.tes
	$TECO -T 'tmp.tec=sqush.tes/D:Y/B:Y/C:+:/T:Y/E:Y/P/A:Y' -E $SQUSH
	mv tmp.tec sqush.tec
