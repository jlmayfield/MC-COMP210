%%% "ln7-multilist".mp -- do not edit, generated automatically by comp210-lectureNotes-07.tex
verbatimtex
\documentclass [10pt]{article}
\begin {document}
etex;
input metauml;
beginfig(1);
LaTeX_unitlength := 1.0pt;
w := 0*LaTeX_unitlength;
h := 0*LaTeX_unitlength;

Interface.adtlst("ADTList")
();

Class.llst("LinkedList")
("-lst : List")
();

Class.alst("ArrayList")
("- lst : Foo[*]")
();

Interface.lst("List")
();
classStereotypes.lst("<<interface>>");

Class.mt("MTList")
()
();

Class.cons("ConsList")
("fst : Object","rst : List")
();

Class.obj("Foo")
()();

llst.ne = adtlst.sw + (-20,-30);
alst.nw = adtlst.se + (20,-30);
topToBottom(20)(llst,lst);
mt.ne = lst.sw + (-10,-30);
cons.nw = lst.se + (10,-30);
leftToRight(20)(cons,obj);
drawObjects(llst,alst,adtlst,lst,mt,cons,obj);

link(inheritance)(mt.n -- lst.s);
link(inheritance)(cons.n -- lst.s);
link(associationUni)(cons.n -- lst.se);
link(associationUni)(cons.e -- obj.w);
link(inheritance)(llst.n -- adtlst.s);
link(inheritance)(alst.n -- adtlst.s);
link(associationUni)(alst.s -- obj.n);
link(associationUni)(llst.s -- lst.n);

endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
