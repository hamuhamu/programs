package Human2;

use strict;
use warnings;
use base qw/Class::Accessor::Lite/;
use Class::Accessor::Lite (
    new => 1, # デフォルトコンストラクタ作成
    rw  => [ qw(foo bar) ],
    ro  => [ qw(name) ],
    wo  => [ qw(hoge) ],
);

# __PACKAGE__->mk_ro_accessors(qw/ name /);

1;
__END__
