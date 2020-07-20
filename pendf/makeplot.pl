#!/usr/bin/perl

###########################################################################
#
#      Make PENDF files using DeCE for all IAEA Photonuclear data 2019
#             plot them with Gnuplot and compile them in tex
#                                                 Feb. 2020 S.Okumura
#
###########################################################################

use warnings;
use strict;
use Sort::Key::Natural qw(natsort);
use File::Basename;

# Run DeCE command to extract cross section data from ENDF format file
# Only for the cases that contains MF3-MT5 and MF6-MT5

my $mode = 1  ;# mode: 0 All, mode: 1 plot only

# Run DeCE code
if ($mode == 0){
    my @file         =  glob '../data/g-iaea-pd-2019/*.dat';
    foreach my $files (@file){
	$files =~ /([g][_].*?[t]$)/;
	my $filename = $&;
	if ($filename =~ /0128|0425|0625|0725|0825/){
	    my $comd = "dece -f3 -t3 " . $files . "> mf3mt3/" . $filename;
	    system($comd);
	}
	else{
	my $comd = "dece -f3 -t5 " . $files . "> mf3mt5/" . $filename;
	system($comd);
	$comd = "dece -f6 -t5 " . $files . "> mf6mt5/" . $filename;
	system($comd);
	}
    }
}


#my $files = "mf6mt5/g_65-Tb-159_6525.dat";
my $tex    = "alleps.tex";
open (TEX, ">$tex");

# Extract non LAW=0 data from MF6-MT5 and create gnuplot input file and compile it
# Iterate for all data in mf6mt5 folder
#my @file         = glob 'mf6mt5/*.dat';
my @file = map basename($_), <mf6mt5/*.dat>;
my @sorted = natsort @file;
my $mf3;
foreach my $files (@sorted){
    $files = "mf6mt5/" . $files;
# if($files =~ /0128/){
    my $nucl   =substr($files,7,-3); $nucl =~ s/_/-/g;
    my ($zap, $law, $np, $npl, $nk);
    my $index  = -1.0;
    my $out    = substr($files,0,-3) . "resid";
    #my $plot   = substr($files,7,-3) . "plt";
    if ($nucl =~ /0128|0425|0625|0725|0825/){
	$mf3    = "mf3mt3/" . substr($files,7,);
    }
    else{
	$mf3    = "mf3mt5/" . substr($files,7,);
    }
    my $eps    = "eps/"    . substr($files,7,-3) . "eps";
    my $epsl   = "eps-log/". substr($files,7,-3) . "eps";
    my $plot   = "plot.plt";

    open (MF6,  "$files") or die "No MF6 file";
    open (OUT,  ">$out");
    open (PLT,  ">$plot");
    print "$files\n";
    
    # Write gnuplot input, command and MF3 part
    print PLT "set term postsc enhanced eps color solid font 'Helvetica,18'\n";
    print PLT "set output '$eps'\n";
    print PLT "set format x '10^{%L}'\nset xtics 10\nset log x\n";
    print PLT "set xlabel 'Incident photon energy [eV]'\nset ylabel 'Cross section [b]'\n";
    if ($nucl =~ /0128|0425|0625|0725|0825/){
         print PLT "plot '$mf3' u 1:2 ti 'MF3 MT3' w l lw 2 lc rgb 'black',";
    }
    else{
         print PLT "plot '$mf3' u 1:2 ti 'MF3 MT5' w l lw 2 lc rgb 'black',";
    }

    # Find non LAW=0 data from MF6 file and write them to another file with an extention .resid
    while(<MF6>){
	my $line           = $_;
	if(/ZAP/){ $zap = substr($line,15,13); $zap = trim($zap);}
	if(/LAW/){ $law = substr($line,15,13); $law = trim($law);}
	if(/NP/) { $np  = substr($line,15,13); $np  = trim($np) ; $npl = $. ;
		   
		# select $law == 1 or 0 in line 93 and 100.
		if($law == 0){
		    $index ++;
		    print OUT "\n\n\n#     $index\n#     ZAP    $zap\n#     LAW    $law\n#     NP    $np\n";
		    # Write gnuplot input for MF6 part
		    print PLT "'$out' i $index u 1:4 ti '$zap' w l,";
		}
	}
	if($line =~ /^\s[0-9]/ && $law == 0 && $. > $npl+1 && $. < $npl+1+$np ) {print OUT "$line";}
    }
    # Write gnuplot input with y axis in log scale
    print PLT "\n\nset output '$epsl'\n";
    print PLT "set format y '10^{%L}'\nset ytics 10\nset key bottom\nset log y\n replot\n";
    # Run gnuplot
    my $return_value = `gnuplot "$plot"`;
    # Write tex file
    print TEX "\\begin{figure}\n \\includegraphics[width=\\linewidth]{$eps}\n  \\caption{$nucl}\n\\end{figure}\n";
    print TEX "\\begin{figure}\n \\includegraphics[width=\\linewidth]{$epsl}\n \\caption{$nucl}\n\\end{figure}\n\\newpage \\clearpage\n\n";
#    }
}
# Run tex compile
my $return_value = `pdflatex main.tex`;
# my $return_value = `open main.pdf`;
close(MF6);
close(OUT);
close(PLT);
close(TEX);


sub trim {
	my $val = shift;
	$val =~ s/^ *(.*?) *$/$1/;
	return $val;
}

