%%% "ln8-bintree2".mp -- do not edit, generated automatically by comp210-lectureNotes-08.tex
verbatimtex
\documentclass [10pt]{article}
\begin {document}
etex;
input metauml;
beginfig(1);
LaTeX_unitlength := 1.0pt;
w := 0*LaTeX_unitlength;
h := 0*LaTeX_unitlength;

Interface.bt("BinTree")
();
classStereotypes.bt("<<interface>>");

Class.mt("MTBinTree")
()
();

Class.sing("SingletonTree")
("-root : Foo")
();

Class.node("BinTreeNode")
("-root : Foo","-left : BinTree","-right : BinTree")
();

Class.obj("Foo")
()();

topToBottom(30)(bt,sing);
leftToRight(20)(mt,sing,node);
topToBottom(30)(sing,obj);
drawObjects(bt,mt,node,obj,sing);

link(inheritance)(mt.n -- bt.s);
link(inheritance)(node.n -- bt.s);
link(inheritance)(sing.n -- bt.s);
link(associationUni)(node.n -- bt.se);
link(associationUni)(node.s -- obj.n);
link(associationUni)(sing.s -- obj.n);

endfig;
verbatimtex
\end{document}
etex;
%%% the end.
end.
endinput;
