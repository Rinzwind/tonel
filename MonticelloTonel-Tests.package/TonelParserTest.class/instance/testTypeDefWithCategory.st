tests
testTypeDefWithCategory

	self
		assertParse: '
"
this is a test
"
Class {
	#name: ''X'',
	#superclass: ''Y'',
	#category: ''Z''
}'
		rule: #typeDef
		equals: ((MCClassDefinition named: 'X')
				 superclassName: 'Y';
				 packageName: 'Z';
				 comment: 'this is a test';
				 yourself)