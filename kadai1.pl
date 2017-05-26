%%language(CLanguage).
%%language(BLanguage).
%%language(C++Language).
%inheritance_of(c_language,b_anguage).
%�W�F�l���b�N-template�I��
history('ALGOL',1958).
paradigm('ALGOL','Imperative Programming').
paradigm('ALGOL','Procedural programming').
paradigm('ALGOL','Structured programming').
typing('ALGOL','static').
history('B',1969).
paradigm('B','Procedural programming').
typing('B','NOT').
history('C',1973).
paradigm('C','Imperative Programming').
typing('C','static').
history('C++',1980).
paradigm('C++','Imperative Programming').
paradigm('C++','Object-Oriented').
paradigm('C++','Generic Programming').
typing('C++','static').
history('C#',2000).
paradigm('C#','Imperative Programming').
paradigm('C#','Object-Oriented').
paradigm('C#','Generic Programming').
typing('C#','static').
history('Eiffel',1980).
paradigm('Eiffel','Object-Oriented').
typing('Eiffel','static').
history('Objective-C',1986).
paradigm('Objective-C','Imperative Programming').
paradigm('Objective-C','Object-Oriented').
typing('Objective-C','static').
history('Java',1994).
paradigm('Java','Imperative Programming').
paradigm('Java','Object-Oriented').
paradigm('Java','Generic Programming').
typing('Java','static').
history('LISP',1958).
paradigm('LISP','Functional').
paradigm('LISP','Metaprogramming').
typing('LISP','dynamic').
history('Pascal',1970).
paradigm('Pascal','Imperative Programming').
paradigm('Pascal','Structured programming').
typing('Pascal','static').
history('Perl',1987).
paradigm('Perl','Multiparadigm-Programming').
typing('Perl','dynamic').
history('PHP',1995).
paradigm('PHP','Object-Oriented').
paradigm('PHP','Imperative Programming').
typing('PHP','dynamic').
history('Prolog',1972).
paradigm('Prolog','Logic Programming').
typing('Prolog','dynamic').
history('Python',1991).
paradigm('Python','Object-Oriented').
paradigm('Python','Functional').
paradigm('Python','Imperative Programming').
typing('Python','dynamic').
history('Ruby',1995).
paradigm('Ruby','Object-Oriented').
paradigm('Ruby','Structured programming').
paradigm('Ruby','Imperative Programming').
typing('Ruby','dynamic').
history('Swift',2014).
paradigm('Swift','Object-Oriented').
paradigm('Swift','Functional').
paradigm('Swift','Imperative Programming').
paradigm('Swift','Generic Programming').
typing('Swift','static').
history('Smalltalk',1980).
paradigm('Smalltalk','Object-Oriented').
typing('Smalltalk','NOT').
history('Simula',1967).
paradigm('Simula','Structured programming').
typing('Simula','NOT').
history('Lua',1993).
paradigm('Lua','Multiparadigm-Programming').
typing('Lua','dynamic').

%inheritance(�p����,�p����).
inheritance('ALGOL',' ').

inheritance('B',' ').

inheritance('C','Algol').
inheritance('C','B').

inheritance('C++','C').
inheritance('C++','Simula').

inheritance('C#','Java').
inheritance('C#','Ruby').

inheritance('Eiffel',' ').

inheritance('Objective-C','C').
inheritance('Objective-C','Smalltalk').

inheritance('Java','C++').
inheritance('Java','Objective-C').
inheritance('Java','Eiffel').

inheritance('LISP',' ').

inheritance('Lua','Pascal').

inheritance('Pascal','ALGOL').

inheritance('Perl','C').
inheritance('Perl','LISP').

inheritance('PHP','Perl').
inheritance('PHP','C').

inheritance('Prolog','LISP').

inheritance('Python','Perl').

inheritance('Ruby','Perl').

inheritance('Swift','C#').
inheritance('Swift','Python').

inheritance('Smalltalk',' ').

inheritance('Simula',' ').



lookLangInfo(X,W,T,Z) :-(history(X,W),typing(X,T));paradigm(X,Z).

lookLangInfoPlus(X,W,T,Z) :-(history(X,W),typing(X,T));paradigm(X,Z).

lookLangInheritance(X,Y,Z):-
  inheritance(X,Y),
  (Y \== ' ';
  lookLangInheritance(Y,Z,X)).



lookLangInheritancePlus(LANG,RES,RES_2,YEAR,TYPE,PARA):-
  (inheritance(LANG,RES),lookLangInfo(RES,YEAR,TYPE,PARA)).
