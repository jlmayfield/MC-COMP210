%%% "hwk4".mp -- do not edit, generated automatically by comp210-lab5.tex
verbatimtex
\documentclass [10pt]{article}
\begin {document}
etex;
input metauml;
beginfig(1);
LaTeX_unitlength := 1.0pt;
w := 0*LaTeX_unitlength;
h := 0*LaTeX_unitlength;

Class.pState("PuzzleState")
("-flight : Flashlight",
 "-people : Group")
("+canCross() : boolean");


Class.Pson("Person")
("-speed : int","-int : id","-isOnA : boolean")
("+getSpeed() : int");

Class.Flight("Flashlight")
("-batleft : int",
 "-isonA : boolean")
("+getBatLeft() : int");

Interface.iGrp("Group")
("+totalTime() : int",
 "+findFastest() : Person",
 "+size() : int");
classStereotypes.iGrp("<<interface>>");

Class.aGrp("ArrayGroup")
("-people : Person[*]")
();

Class.lGrp("ListGroup")
("-people : PList")
();

Interface.plst("PList")
("+totalTime() : int",
 "+findFastest() : Person",
 "+size() : int");
classStereotypes.plst("<<interface>>");

Class.mtplst("MTPList")
()
();

Class.cplst("ConsPList")
("-fst : Person","-rst : PList")
();

iGrp.ne = pState.sw + (0,-30);
Flight.nw = pState.se + (20,-30);
aGrp.ne = iGrp.sw + (-20,-30);
lGrp.nw = iGrp.se + (20,-30);
cplst.ne = plst.sw + (-10,-30);
mtplst.nw = plst.se + (10,-30);

%topToBottom(30)(iGrp,lGrp);
topToBottom(50)(aGrp, Pson);
%leftToRight(30)(aGrp,lGrp);
topToBottom(30)(lGrp,plst);
%topToBottom(30)(plst,cplst);
%leftToRight(30)(cplst,mtplst);
drawObjects(pState,Flight,lGrp,Pson,iGrp,aGrp,plst,mtplst,cplst);

link(inheritance)(lGrp.nw -- iGrp.s);
link(inheritance)(aGrp.ne -- iGrp.s);
link(associationUni)(pState.s -- iGrp.ne);
link(associationUni)(pState.s -- Flight.nw);
link(associationUni)(aGrp.s -- Pson.n);
link(associationUni)(cplst.w -- Pson.e );
link(associationUni)(cplst.nw -- plst.sw );
link(associationUni)(lGrp.s -- plst.n);
link(inheritance)(cplst.n -- plst.s);
link(inheritance)(mtplst.n -- plst.s);

endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
