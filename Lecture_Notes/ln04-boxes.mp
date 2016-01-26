%%% "ln04-boxes".mp -- do not edit, generated automatically by comp210-lectureNotes-04.tex
verbatimtex
\documentclass [10pt]{article}
\begin {document}
etex;
input metauml;
beginfig(1);
LaTeX_unitlength := 1.0pt;
w := 0*LaTeX_unitlength;
h := 0*LaTeX_unitlength;

Interface.Shp("Shape")();
Shp.info.iAttributeStack.top := 0;
Shp.info.iAttributeStack.bottom := 0;
Shp.info.iMethodStack.top := 0;
Shp.info.iMethodStack.bottom := 0;
classStereotypes.Shp("<<interface>>");

Class.Dot("Dot")()();
Dot.info.iAttributeStack.top := 0;
Dot.info.iAttributeStack.bottom := 0;
Dot.info.iMethodStack.top := 0;
Dot.info.iMethodStack.bottom := 0;

Class.Rec("Rectangle")()();
Rec.info.iAttributeStack.top := 0;
Rec.info.iAttributeStack.bottom := 0;
Rec.info.iMethodStack.top := 0;
Rec.info.iMethodStack.bottom := 0;

Class.Circ("Circle")()();
Circ.info.iAttributeStack.top := 0;
Circ.info.iAttributeStack.bottom := 0;
Circ.info.iMethodStack.top := 0;
Circ.info.iMethodStack.bottom := 0;

Class.Loc("Loc")()();
Loc.info.iAttributeStack.top := 0;
Loc.info.iAttributeStack.bottom := 0;
Loc.info.iMethodStack.top := 0;
Loc.info.iMethodStack.bottom := 0;

topToBottom(40)(Shp,Circ);
topToBottom(50)(Circ,Loc);
leftToRight(40)(Rec,Circ,Dot);

drawObjects(Shp,Rec,Circ,Dot,Loc);
link(inheritance)(Rec.ne -- Shp.sw);
link(inheritance)(Circ.n -- Shp.s);
link(inheritance)(Dot.nw -- Shp.se);

link(associationUni)(Rec.se -- Loc.nw);
link(associationUni)(Circ.s -- Loc.n);
link(associationUni)(Dot.sw -- Loc.ne);

endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
