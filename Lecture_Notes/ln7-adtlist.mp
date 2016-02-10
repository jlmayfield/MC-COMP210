%%% "ln7-adtlist".mp -- do not edit, generated automatically by comp210-lectureNotes-07.tex
verbatimtex
\documentclass [10pt]{article}
\begin {document}
etex;
input metauml;
beginfig(1);
LaTeX_unitlength := 1.0pt;
w := 0*LaTeX_unitlength;
h := 0*LaTeX_unitlength;

Class.adtlst("ADTList")
("-lst : List")
("+isEmpty() : boolean",
 "+first() : Foo",
 "+rest() : List",
 "+contains(Foo key) : boolean",
 "+prepend(Foo fst) : List",
 "+append(Foo last) : List",
 "+concatenate(List end) : List" );

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

topToBottom(20)(adtlst,lst);
mt.ne = lst.sw + (-10,-30);
cons.nw = lst.se + (10,-30);
leftToRight(20)(cons,obj);
drawObjects(adtlst,lst,mt,cons,obj);

link(inheritance)(mt.n -- lst.s);
link(inheritance)(cons.n -- lst.s);
link(associationUni)(cons.n -- lst.se);
link(associationUni)(cons.e -- obj.w);
link(associationUni)(adtlst.s -- lst.n);

endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
