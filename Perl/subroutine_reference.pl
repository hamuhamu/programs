# ********************************************************************************
# サブルーチンのリファレンス
# コードレフと呼ばれる
# ********************************************************************************

use 5.016;

sub Hello {
    my $arg = shift;

    say 'Hello! ' . $arg;
}

Hello('はむはむ');

# \&でコードレフ
#    $scalarref = \$foo;
#    $arrayref  = \@ARGV;
#    $hashref   = \%ENV;
#    $coderef   = \&handler;
#    $globref   = \*foo;
my $ref_hello = \&Hello;

# 呼び出し方は複数ある
$ref_hello->('hamuhamu');
&$ref_hello('hamuhamu');
