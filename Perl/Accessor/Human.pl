use 5.16.0;
use strict;
use warnings;
use Human;
use Data::Dumper;

my $human = Human->new({
    height => 170,
    weight => 55,
});

say $human->height;
say $human->weight;

$human->height(160);
$human->weight(45);

say $human->height;
say $human->weight;

$human->set('height', 180);
$human->set('weight', 65);

say $human->get('height');
say $human->get('weight');

say Dumper $human->get(qw/ height weight /);

use Human2;
my $human2 = Human2->new({name => 'はむはむ'});
say $human2->name;

# 値をセットできない
# $human2->name('ばむばむ');

# セットできない
# $human2->set('name', 'ばむばむ');

# getメソッドは使えない
# say $human2->get('name');

1;

__END__
