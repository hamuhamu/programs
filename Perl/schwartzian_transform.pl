# ********************************************************************************
# シュワルツ変換
# ********************************************************************************

use 5.016;
use Data::Dumper;
use Benchmark qw(:all);
use Devel::Size qw/size total_size/;

my @unsorted;

my $roopCount = 10000;
# $roopCount = 10;
for (my $i = 1; $i <= $roopCount; $i++) {
    push (@unsorted, int rand(10000));
    # push (@unsorted, int rand(10));
}


my @sorted = map { $_->[0] }
    sort { $a->[1] <=> $b->[1] }
    map { [ $_, lc($_) ] } @unsorted;

# # say Dumper @sorted;
# 
# # say Dumper 
#     map { [ $_ . 'ほげ', $_ ] } @unsorted;
# 
# # say Dumper 
#     sort { $a->[1] <=> $b->[1] }
#     map { [ $_ . 'ほげひこ', $_ ] } @unsorted;


cmpthese timethese (-3,
    {
        test_a => sub {
            my @sorted = map { $_->[0] }
            sort { $a->[1] <=> $b->[1] }
            map { [ $_, lc($_) ] } @unsorted;
        },
        test_b => sub {
            my @sorted = map { $_->[0] }
            sort { $a->  <=> $b->[1] }
            map { [ $_, lc($_) ] } @unsorted;
        }
    }
);

シュワルツ変換は、メモリは食うがオーバヘッドが短いので計算は速い

http://www.wdic.org/w/TECH/%E3%82%B7%E3%83%A5%E3%83%AF%E3%83%AB%E3%83%84%E5%A4%89%E6%8F%9B
http://d.hatena.ne.jp/koba04/20100131/1264915581
http://d.hatena.ne.jp/jitsu102/20091017/1255747996
http://d.hatena.ne.jp/koba04/20100131/1264915581
http://blog.remora.cx/2010/05/schwartzian-transform-in-perl-and-python.html
http://d.hatena.ne.jp/fbis/20071115/1195117187
http://perl.g.hatena.ne.jp/keyword/%E3%82%B7%E3%83%A5%E3%83%AF%E3%83%AB%E3%83%84%E5%A4%89%E6%8F%9B
http://www2u.biglobe.ne.jp/~MAS/perl/waza/bench.html
https://teratail.com/questions/8257
