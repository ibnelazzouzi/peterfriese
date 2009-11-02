/*
* generated by Xtext
*/
grammar InternalEntity;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package org.xtext.example.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.common.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.example.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.xtext.parsetree.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.common.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.xtext.example.services.EntityGrammarAccess;

}

@parser::members {
 
 	private EntityGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(EntityGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleModel
entryRuleModel :
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel 
    @init {
		int stackSize = keepStackSize();
    }
 :
(
{ before(grammarAccess.getModelAccess().getTypesAssignment()); }
(rule__Model__TypesAssignment)*
{ after(grammarAccess.getModelAccess().getTypesAssignment()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleType
entryRuleType :
{ before(grammarAccess.getTypeRule()); }
	 ruleType
{ after(grammarAccess.getTypeRule()); } 
	 EOF 
;

// Rule Type
ruleType 
    @init {
		int stackSize = keepStackSize();
    }
 :
(
{ before(grammarAccess.getTypeAccess().getAlternatives()); }
(rule__Type__Alternatives)
{ after(grammarAccess.getTypeAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTypeDef
entryRuleTypeDef :
{ before(grammarAccess.getTypeDefRule()); }
	 ruleTypeDef
{ after(grammarAccess.getTypeDefRule()); } 
	 EOF 
;

// Rule TypeDef
ruleTypeDef 
    @init {
		int stackSize = keepStackSize();
    }
 :
(
{ before(grammarAccess.getTypeDefAccess().getGroup()); }
(rule__TypeDef__Group__0)
{ after(grammarAccess.getTypeDefAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleJAVAID
entryRuleJAVAID :
{ before(grammarAccess.getJAVAIDRule()); }
	 ruleJAVAID
{ after(grammarAccess.getJAVAIDRule()); } 
	 EOF 
;

// Rule JAVAID
ruleJAVAID 
    @init {
		int stackSize = keepStackSize();
    }
 :
(
{ before(grammarAccess.getJAVAIDAccess().getGroup()); }
(rule__JAVAID__Group__0)
{ after(grammarAccess.getJAVAIDAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEntity
entryRuleEntity :
{ before(grammarAccess.getEntityRule()); }
	 ruleEntity
{ after(grammarAccess.getEntityRule()); } 
	 EOF 
;

// Rule Entity
ruleEntity 
    @init {
		int stackSize = keepStackSize();
    }
 :
(
{ before(grammarAccess.getEntityAccess().getGroup()); }
(rule__Entity__Group__0)
{ after(grammarAccess.getEntityAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleAttribute
entryRuleAttribute :
{ before(grammarAccess.getAttributeRule()); }
	 ruleAttribute
{ after(grammarAccess.getAttributeRule()); } 
	 EOF 
;

// Rule Attribute
ruleAttribute 
    @init {
		int stackSize = keepStackSize();
    }
 :
(
{ before(grammarAccess.getAttributeAccess().getGroup()); }
(rule__Attribute__Group__0)
{ after(grammarAccess.getAttributeAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__Type__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeAccess().getTypeDefParserRuleCall_0()); }
	ruleTypeDef
{ after(grammarAccess.getTypeAccess().getTypeDefParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getTypeAccess().getEntityParserRuleCall_1()); }
	ruleEntity
{ after(grammarAccess.getTypeAccess().getEntityParserRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__TypeDef__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeDefAccess().getTypedefKeyword_0()); }

	'typedef' 

{ after(grammarAccess.getTypeDefAccess().getTypedefKeyword_0()); }
)

	rule__TypeDef__Group__1
;
finally {
	restoreStackSize(stackSize);
}


rule__TypeDef__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeDefAccess().getNameAssignment_1()); }
(rule__TypeDef__NameAssignment_1)
{ after(grammarAccess.getTypeDefAccess().getNameAssignment_1()); }
)

	rule__TypeDef__Group__2
;
finally {
	restoreStackSize(stackSize);
}


rule__TypeDef__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeDefAccess().getGroup_2()); }
(rule__TypeDef__Group_2__0)?
{ after(grammarAccess.getTypeDefAccess().getGroup_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__TypeDef__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeDefAccess().getMapstoKeyword_2_0()); }

	'mapsto' 

{ after(grammarAccess.getTypeDefAccess().getMapstoKeyword_2_0()); }
)

	rule__TypeDef__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}


rule__TypeDef__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeDefAccess().getMappedTypeAssignment_2_1()); }
(rule__TypeDef__MappedTypeAssignment_2_1)
{ after(grammarAccess.getTypeDefAccess().getMappedTypeAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__JAVAID__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getJAVAIDAccess().getNameAssignment_0()); }
(rule__JAVAID__NameAssignment_0)
{ after(grammarAccess.getJAVAIDAccess().getNameAssignment_0()); }
)

	rule__JAVAID__Group__1
;
finally {
	restoreStackSize(stackSize);
}


rule__JAVAID__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getJAVAIDAccess().getGroup_1()); }
(rule__JAVAID__Group_1__0)*
{ after(grammarAccess.getJAVAIDAccess().getGroup_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__JAVAID__Group_1__0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getJAVAIDAccess().getFullStopKeyword_1_0()); }

	'.' 

{ after(grammarAccess.getJAVAIDAccess().getFullStopKeyword_1_0()); }
)

	rule__JAVAID__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}


rule__JAVAID__Group_1__1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getJAVAIDAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
{ after(grammarAccess.getJAVAIDAccess().getIDTerminalRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Entity__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getEntityKeyword_0()); }

	'entity' 

{ after(grammarAccess.getEntityAccess().getEntityKeyword_0()); }
)

	rule__Entity__Group__1
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getNameAssignment_1()); }
(rule__Entity__NameAssignment_1)
{ after(grammarAccess.getEntityAccess().getNameAssignment_1()); }
)

	rule__Entity__Group__2
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getGroup_2()); }
(rule__Entity__Group_2__0)?
{ after(grammarAccess.getEntityAccess().getGroup_2()); }
)

	rule__Entity__Group__3
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getLeftCurlyBracketKeyword_3()); }

	'{' 

{ after(grammarAccess.getEntityAccess().getLeftCurlyBracketKeyword_3()); }
)

	rule__Entity__Group__4
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getAttributesAssignment_4()); }
(rule__Entity__AttributesAssignment_4)*
{ after(grammarAccess.getEntityAccess().getAttributesAssignment_4()); }
)

	rule__Entity__Group__5
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getRightCurlyBracketKeyword_5()); }

	'}' 

{ after(grammarAccess.getEntityAccess().getRightCurlyBracketKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}














rule__Entity__Group_2__0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getExtendsKeyword_2_0()); }

	'extends' 

{ after(grammarAccess.getEntityAccess().getExtendsKeyword_2_0()); }
)

	rule__Entity__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}


rule__Entity__Group_2__1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getSuperEntityAssignment_2_1()); }
(rule__Entity__SuperEntityAssignment_2_1)
{ after(grammarAccess.getEntityAccess().getSuperEntityAssignment_2_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Attribute__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getTypeAssignment_0()); }
(rule__Attribute__TypeAssignment_0)
{ after(grammarAccess.getAttributeAccess().getTypeAssignment_0()); }
)

	rule__Attribute__Group__1
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getManyAssignment_1()); }
(rule__Attribute__ManyAssignment_1)?
{ after(grammarAccess.getAttributeAccess().getManyAssignment_1()); }
)

	rule__Attribute__Group__2
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getNameAssignment_2()); }
(rule__Attribute__NameAssignment_2)
{ after(grammarAccess.getAttributeAccess().getNameAssignment_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__Model__TypesAssignment
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getModelAccess().getTypesTypeParserRuleCall_0()); }
	ruleType{ after(grammarAccess.getModelAccess().getTypesTypeParserRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeDef__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeDefAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getTypeDefAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TypeDef__MappedTypeAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTypeDefAccess().getMappedTypeJAVAIDParserRuleCall_2_1_0()); }
	ruleJAVAID{ after(grammarAccess.getTypeDefAccess().getMappedTypeJAVAIDParserRuleCall_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__JAVAID__NameAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getJAVAIDAccess().getNameIDTerminalRuleCall_0_0()); }
	RULE_ID{ after(grammarAccess.getJAVAIDAccess().getNameIDTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__NameAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getNameIDTerminalRuleCall_1_0()); }
	RULE_ID{ after(grammarAccess.getEntityAccess().getNameIDTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__SuperEntityAssignment_2_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getSuperEntityEntityCrossReference_2_1_0()); }
(
{ before(grammarAccess.getEntityAccess().getSuperEntityEntityIDTerminalRuleCall_2_1_0_1()); }
	RULE_ID{ after(grammarAccess.getEntityAccess().getSuperEntityEntityIDTerminalRuleCall_2_1_0_1()); }
)
{ after(grammarAccess.getEntityAccess().getSuperEntityEntityCrossReference_2_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Entity__AttributesAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEntityAccess().getAttributesAttributeParserRuleCall_4_0()); }
	ruleAttribute{ after(grammarAccess.getEntityAccess().getAttributesAttributeParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__TypeAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getTypeTypeCrossReference_0_0()); }
(
{ before(grammarAccess.getAttributeAccess().getTypeTypeIDTerminalRuleCall_0_0_1()); }
	RULE_ID{ after(grammarAccess.getAttributeAccess().getTypeTypeIDTerminalRuleCall_0_0_1()); }
)
{ after(grammarAccess.getAttributeAccess().getTypeTypeCrossReference_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__ManyAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getManyAsteriskKeyword_1_0()); }
(
{ before(grammarAccess.getAttributeAccess().getManyAsteriskKeyword_1_0()); }

	'*' 

{ after(grammarAccess.getAttributeAccess().getManyAsteriskKeyword_1_0()); }
)

{ after(grammarAccess.getAttributeAccess().getManyAsteriskKeyword_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__NameAssignment_2
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0()); }
	RULE_ID{ after(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


