COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) GeoWorks 1992 -- All Rights Reserved

PROJECT:	
MODULE:		
FILE:		circlespref.asm

AUTHOR:		Adam de Boor, Dec  3, 1992

ROUTINES:
	Name			Description
	----			-----------

	
REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Adam	12/ 3/92	Initial revision


DESCRIPTION:
	Saver-specific preferences for Circles driver.
		

	$Id: circlespref.asm,v 1.1 97/04/04 16:44:34 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

; include the standard suspects
include geos.def
include geode.def
include lmem.def
include object.def
include graphics.def
include gstring.def
UseLib	ui.def

include	vmdef.def		; contains macros that allow us to create a
				;  VM file in this way.
UseLib config.def		; Most objects we use come from here
UseLib saver.def		; Might need some of the constants from
				;  here, though we can't use objects from here.

;
; Define the VMAttributes used for the file.
;
ATTRIBUTES	equ	PREFVM_ATTRIBUTES

;
; Include constants from Circles, the saver, for use in our objects.
;
include ../circles.def

;
; Now the object tree.
; 
include	circlespref.rdef

;
; Define the map block for the VM file, which Preferences will use to get
; to the root of the tree we hold.
; 
DefVMBlock	MapBlock
PrefVMMapBlock	<RootObject>
EndVMBlock	MapBlock
