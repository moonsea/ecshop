/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	config.htmlEncodeOutput = false;
	config.entities  = false;
	config.basicEntities = false;
	config.entities_greek = false;
	config.entities_latin = false;
	config.extraPlugins = 'codemirror';
	config.allowedContent = true;
	config.enterMode = CKEDITOR.ENTER_BR;
	config.shiftEnterMode = CKEDITOR.ENTER_P;
	CKEDITOR.dtd.$removeEmpty = false;
	CKEDITOR.config.contentsCss = 'view/javascript/ckeditor/default-font.css';
};
