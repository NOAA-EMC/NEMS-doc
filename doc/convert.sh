#!/bin/sh

cd html

for i in `ls _*`
do
  new=`echo $i | cut -c2-`
  mv $i $new
done

for i in `find . -name "*.html"`
do
  cat $i | sed s:_g_r_i_d:g_r_i_d:g | sed s:_how_to:how_to:g | sed s:_r_e_p_o_r_t:r_e_p_o_r_t:g | sed s:_note_on:note_on:g > tmp.txt
  mv tmp.txt $i
done
for i in `find . -name "*.js"`
do
  cat $i | sed s:_g_r_i_d:g_r_i_d:g | sed s:_how_to:how_to:g | sed s:_r_e_p_o_r_t:r_e_p_o_r_t:g | sed s:_note_on:note_on:g > tmp.txt
  mv tmp.txt $i
done

exit
