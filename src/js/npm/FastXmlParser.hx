package js.npm;

import haxe.extern.EitherType;

#if nodejs
@:jsRequire("fast-xml-parser")
#else
@:native("parser")
#end
extern class FastXmlParser {
    @:overload(function(xmlData:String, ?options:X2JOptions, ?validationOptions:Bool):Dynamic {})
    static function parse(xmlData:String, ?options:X2JOptions, ?validationOptions:ValidationOptions):Dynamic;
    
    @:overload(function(node:Dynamic, eSchema:{}, ?options:X2JOptions):Dynamic {})
    @:overload(function(node:Dynamic, eSchema:Array<String>, ?options:X2JOptions):Dynamic {})
    @:overload(function(node:Dynamic, eSchema:Array<{}>, ?options:X2JOptions):Dynamic {})
    static function convert2nimn(node:Dynamic, eSchema:String, ?options:X2JOptions):Dynamic;
    
    static function getTraversalObj(xmlData:String, ?options:X2JOptions):Dynamic;

    static function convertToJson(node:Dynamic, ?options:X2JOptions):Dynamic;

    static function convertToJsonString(node:Dynamic, ?options:X2JOptions):String;

    @:overload(function(xmlData:String, ?validationOptions:Bool):Dynamic {})
    static function validate(xmlData:String, ?validationOptions:ValidationOptions):Bool;

    static function parseToNimn(xmlData:String, schema:Dynamic, options:J2XOptions):Dynamic;
}

typedef X2JOptions = {
    var ?attributeNamePrefix:String;
    var ?attrNodeName:EitherType<String, Bool>;
    var ?textNodeName:String;
    var ?ignoreAttributes:Bool;
    var ?ignoreNameSpace:Bool;
    var ?allowBooleanAttributes:Bool;
    var ?parseNodeValue:Bool;
    var ?parseAttributeValue:Bool;
    var ?arrayMode:EitherType<Bool, String>;
    var ?trimValues:Bool;
    var ?cdataTagName:EitherType<String, Bool>;
    var ?cdataPositionChar:String;
    var ?localeRange:String;
    var ?parseTrueNumberOnly:Bool;
    var ?tagValueProcessor: (tagValue:String, tagName:String) -> String;
    var ?attrValueProcessor: (attrValue:String, attrName:String) -> String;
    var ?stopNodes:Array<String>;
}

typedef J2XOptions = {
    var ?attributeNamePrefix:String;
    var ?attrNodeName:EitherType<String, Bool>;
    var ?textNodeName:String;
    var ?ignoreAttributes:Bool;
    var ?cdataTagName:EitherType<String, Bool>;
    var ?cdataPositionChar:String;
    var ?format:Bool;
    var ?indentBy:String;
    var ?supressEmptyNode:Bool;
    var ?tagValueProcessor:(tagValue:String) -> String;
    var ?attrValueProcessor:(attrValue:String) -> String;
}

typedef ValidationOptions = {
    var ?allowBooleanAttributes:Bool;
    var ?localeRange:String;
}
