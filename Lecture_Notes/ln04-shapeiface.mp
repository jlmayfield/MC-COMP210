%%% "ln04-shapeiface".mp -- do not edit, generated automatically by comp210-lectureNotes-04.tex
verbatimtex
\documentclass [10pt]{article}
\begin {document}
etex;
input metauml;
beginfig(1);
LaTeX_unitlength := 1.0pt;
w := 0*LaTeX_unitlength;
h := 0*LaTeX_unitlength;

Interface.Shp("Shape")(
 "+area() : double" ,
 "+isWithin(Loc l)) : boolean",
 "+boundingBox() : Rectangle",
 "+distanceTo(Loc l) : double",
 "+moveTo(Loc l) : void");
classStereotypes.Shp("<<interface>>");

drawObjects(Shp);

endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
