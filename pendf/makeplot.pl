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
    unlink glob('mf3mt3/*');
    unlink glob('mf3mt5/*');
    unlink glob('mf6mt5/*');
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
if ($mode >= 0){
    unlink glob('eps/*');
    unlink glob('eps-law0/*');
    unlink glob('eps-log/*');
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
    my $title = substr($nucl,2,);
    my ($zap, $law, $np, $npl, $nk, $residual);
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
    my @dataset = ();

    open (MF6,  "$files") or die "No MF6 file";
    open (OUT,  ">$out");
    open (PLT,  ">$plot");
    print "$files\n";
    
    # Write gnuplot input, command and MF3 part
    print PLT "set term postsc portrait color solid font 'Helvetica,10'\n";
    print PLT "set output '$eps'\n";
    print PLT "set size ratio 0.65\n";
    #print PLT "set format x '10^{%L}'\nset xtics 10\nset log x\n";
    print PLT "set format y '10^{%L}'\nset ytics 10\nset log y\n\n";
    print PLT "set format y2 '10^{%L}'\nset log y2\nset y2tics\n\n";
    print PLT "set yrange [1E-10:]\nset xrange [9E-1:]\n\n";
    print PLT "set xlabel 'Incident photon energy [MeV]' offset 0,0.5\nset ylabel 'Cross section [b]'\n";
    print PLT "set y2label 'Residual multiplicity'\nset ytics nomirror\n";
    print PLT "set title '$title' offset 0,-0.7\n";
    print PLT "set key font 'Helvetica,10'\n\n";
    print PLT "set key outside below samplen 2 vertical maxrows 50 spacing 0.8\n\n";
    #print PLT "set format y '10^{%L}'\nset ytics 10\nset key bottom\nset log y\n\n";
    
    if ($nucl =~ /0128|0425|0625|0725|0825/){
         print PLT "plot '$mf3' u (\$1\/1E+6):2 ti 'MF3 MT3' w l lw 2 lc rgb 'black',";
    }
    else{
         print PLT "plot '$mf3' u (\$1\/1E+6):2 ti 'MF3 MT5' w l lw 2 lc rgb 'red',";
    }

    # Find non LAW=0 data from MF6 file and write them to another file with an extention .resid
    while(<MF6>){
	my $line           = $_;
	if(/ZAP/){ $zap         = substr($line,15,13);
		   $zap         = trim($zap);
		   my $elem     = zaptoelem($zap);
		   my $resi_z   = int($zap/1000);
		   my $resi_a   = $zap-(1000*$resi_z);
		   if($elem =~ /^[a-p]{1}/ ){$residual = $elem;}
		   else{$residual    = $elem ."-". $resi_a};
		   #print "$zap, $elem,$resi_z,$resi_a,$residual\n";
	}
	if(/LAW/){ $law = substr($line,15,13); $law = trim($law);}
	if(/NP/) { $np  = substr($line,15,13); $np  = trim($np) ; $npl = $. ;
		# select $law == 1 or 0 in line 93 and 100.
		if($law >= 0){
		    $index ++;
		    $dataset[$index]   =  $residual;
		    print OUT "\n\n\n#     $index\n#     ZAP    $zap\n#     LAW    $law\n#     NP    $np\n";
		   
		    # Write gnuplot input for MF6 part
		    #if ($index <= 200 || $zap == "0"){
		    print PLT "'$out' i $index u (\$1\/1E+6):3 ti '$residual' w l dt $index axes x1y2,";
		    #}
		    #else{
		    #print PLT "'$out' i $index u (\$1\/1E+6):3 noti w l dt (10,5) axes x1y2,";
		    #}
		    
	        }
	}
	if($line =~ /^\s[0-9]/ && $law >= 0 && $. > $npl+1 && $. < $npl+1+$np ) {print OUT "$line";}
    }
    
    # Write gnuplot input with y axis in log scal

    print PLT "\n\nset output '$epsl'\n";
    print PLT "set format y '10^{%L}'\nset ytics 10\nset log y\n\n";
    print PLT "unset y2label\nunset y2tics\nset ytics mirror\n\n";
    print PLT "plot '$mf3' u (\$1\/1E+6):2 w l lw 2 lc rgb 'red' noti,";
    my $i;
    for ($i =0; $i <= $index; $i++){
	 # Write gnuplot input for MF6 part again for cs
	print PLT "'$out' i $i u (\$1\/1E+6):4 w l dt $i ti '$dataset[$i]',";
    }
   
    # Run gnuplot
    my $return_value = `gnuplot "$plot"`;
    my $return_value = `mv "$plot" inp/"$nucl"plt`;
    # Write tex file
    #    print TEX "\\begin{figure}\n \\includegraphics[width=\\linewidth]{$eps}\n  \\caption{$residual}\n\\end{figure}\n";
    if ($nucl !~ /0128|0425|0625|0725|0825|6925|6725|6525|3925|2725|4525|7328/){
	print TEX "\\begin{figure}\n \\includegraphics[width=\\linewidth]{$eps}\n  \\caption{$nucl}\n\\end{figure}\n\\newpage \\clearpage\n\n";
	print TEX "\\begin{figure}\n \\includegraphics[width=\\linewidth]{$epsl}\n \\caption{$nucl}\n\\end{figure}\n\\newpage \\clearpage\n\n";
    }
    
}
}
# Run tex compile
#my $return_value = `pdflatex main.tex`;
#my $return_value = `open main.pdf`;
close(MF6);
close(OUT);
close(PLT);
close(TEX);


sub trim {
	my $val = shift;
	$val =~ s/^ *(.*?) *$/$1/;
	return $val;
}


sub zaptoelem {
    my $zap = shift;
    my $elem_name = "";
    if    ($zap == "0")   {$elem_name = "g";}
    elsif ($zap == "1")   {$elem_name = "n";}
    elsif ($zap == "1001"){$elem_name = "p";}
    elsif ($zap == "1002"){$elem_name = "d";}
    elsif ($zap == "2004"){$elem_name = "alpha";}
    else{
	my $resi_z = int($zap/1000);
	my @elem_list=("", 
		       "H" , "He", "Li", "Be", "B" , "C" , "N" , "O" , "F" , "Ne",
		       "Na", "Mg", "Al", "Si", "P" , "S" , "Cl", "Ar", "K" , "Ca",
		       "Sc", "Ti", "V" , "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn",
		       "Ga", "Ge", "As", "Se", "Br", "Kr", "Rb", "Sr", "Y" , "Zr",
		       "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn",
		       "Sb", "Te", "I" , "Xe", "Cs", "Ba", "La", "Ce", "Pr", "Nd",
		       "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb",
		       "Lu", "Hf", "Ta", "W" , "Re", "Os", "Ir", "Pt", "Au", "Hg",
		       "Tl", "Pb", "Bi", "Po", "At", "Rn", "Fr", "Ra", "Ac", "Th",
		       "Pa", "U" , "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm",
		       "Md", "No", "Lr", "Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds",
		       "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og", "Uue","Ubn",
		       "Ubu","Ubb","Ubt","Ubq","Ubp","Ubh","Ubs","Ubo","Ube","Utn",
		       "Utu","Utb","Utt","Utq","Utp","Uth","Uts","Uto","Ute","Uqn",);
	 $elem_name = $elem_list[$resi_z];
    }
  return $elem_name;
}

