%%% "lab6".mp -- do not edit, generated automatically by comp210-lab6.tex
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
 "-people : Group",
 static "-impType : GroupImp")
("-PuzzleState()",
 "-PuzzleState(Flashlight, Group)",
 "+canCross() : boolean",
 "+getGroup() : Group",
 static "+setGroupImplementation(GroupImp) : void",
 static "+createInitialState(int flighttime, int[] speeds) : PuzzleState",
 static "+main(String[] args) : void");

Class.GImp("GroupImp")
("+Array","+List")();
GImp.info.iMethodStack.top := 0;
GImp.info.iMethodStack.bottom := 0;
Class_stereotypes.GImp("<<enumeration>>");

Class.Pson("Person")
("-speed : int","-int : id","-isOnA : boolean")
("+getSpeed() : int");

Class.Flight("Flashlight")
("-batleft : int",
 "-isonA : boolean")
("+batteryLeft() : int");

Interface.iGrp("Group")
("+totalTime() : int",
 "+findFastest() : Person",
 "+size() : int");
Class_stereotypes.iGrp("<<interface>>");

Class.aGrp("ArrayGroup")
("-people : Person[*]")
();

Class.lGrp("ListGroup")
("-people : PList")
("+isEmpty() : boolean",
 "+prepend(Person) : ListGroup"
);

Interface.plst("PList")
("+totalTime() : int",
 "+findFastest() : Person",
 "+size() : int");
Class_stereotypes.plst("<<interface>>");

Class.mtplst("MTPList")
()
();

Class.cplst("ConsPList")
("-fst : Person","-rst : PList")
();

leftToRight(20)(GImp,pState);
iGrp.ne = pState.s + (-40,-30);
Flight.nw = pState.s + (40,-30);
aGrp.ne = iGrp.sw + (-20,-30);
lGrp.nw = iGrp.se + (20,-30);
cplst.ne = plst.sw + (-10,-30);
mtplst.nw = plst.se + (10,-30);
topToBottom(50)(aGrp, Pson);
topToBottom(30)(lGrp,plst);
drawObjects(pState,GImp,Flight,lGrp,Pson,iGrp,aGrp,plst,mtplst,cplst);

link(inheritance)(lGrp.nw -- iGrp.s);
link(inheritance)(aGrp.ne -- iGrp.s);
link(inheritance)(cplst.n -- plst.s);
link(inheritance)(mtplst.n -- plst.s);
link(associationUni)(pState.w -- GImp.e);
link(associationUni)(pState.s -- iGrp.ne);
link(associationUni)(pState.s -- Flight.nw);
link(associationUni)(aGrp.s -- Pson.n);
link(associationUni)(cplst.w -- Pson.e );
link(associationUni)(cplst.nw -- plst.sw );
link(associationUni)(lGrp.s -- plst.n);


endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
