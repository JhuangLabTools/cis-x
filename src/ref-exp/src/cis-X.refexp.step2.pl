#! /usr/bin/perl -w

use Cwd qw(abs_path);

my $config  = $ARGV[0];
my $workdir = $ARGV[1];
my $expfile = $ARGV[2];

unless ($config and $workdir and $expfile) {
    die("Usage: cis-X.refexp.step2.pl [config file] [working dir] [exp matrix]");
}

my $codepath = abs_path($0);
my $codedir  = `dirname $codepath`;
chomp($codedir);
print "$codedir\n";

system "perl -w $codedir/collect.cohort.pl $config $workdir $expfile";
system "perl -w $codedir/filter.cohort.v2.pl $codedir $workdir";
system "Rscript $codedir/cleanup.bi.cases.R $workdir";
system "perl -w $codedir/refexp.gen.pl $workdir $expfile";
system "Rscript $codedir/precal.R $workdir";
system "perl -w $codedir/format.precal.pl $workdir";
