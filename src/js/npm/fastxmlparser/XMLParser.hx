package js.npm.fastxmlparser;

import haxe.extern.EitherType;
import js.node.Buffer;

@:jsRequire("fast-xml-parser", "XMLParser")
extern class XMLParser {
    function new(?options:X2jOptions);
    function parse(xmlData:EitherType<String, Buffer>, ?validationOption:EitherType<Bool, ValidationOptions>):Dynamic;
    function addEntity(entityIndentifier:String, entityValue:String):Void;
}
