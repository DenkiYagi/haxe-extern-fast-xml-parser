package js.npm.fastxmlparser;

import haxe.extern.EitherType;

typedef X2jOptions = {
    var ?preserveOrder:Bool;
    var ?attributeNamePrefix:String;
    var ?attributesGroupName:EitherType<Bool, String>;
    var ?textNodeName:String;
    var ?ignoreAttributes:Bool;
    var ?removeNSPrefix:Bool;
    var ?allowBooleanAttributes:Bool;
    var ?parseTagValue:Bool;
    var ?parseAttributeValue:Bool;
    var ?trimValues:Bool;
    var ?cdataPropName:EitherType<Bool, String>;
    var ?commentPropName:EitherType<Bool, String>;
    var ?tagValueProcessor:(tagName:String, tagValue:String, jPath:String, hasAttributes:Bool, isLeafNode:Bool)->String;
    var ?attributeValueProcessor:(attrName:String, attrValue:String, jPath:String)->String;
    var ?numberParseOptions:{
        var ?hex:Bool;
        var ?leadingZeros:Bool;
        var ?skipLike:js.lib.RegExp;
    };
    var ?stopNodes:Array<String>;
    var ?unpairedTags:Array<String>;
    var ?alwaysCreateTextNode:Bool;
    var ?isArray:(tagName:String, jPath:String, isLeafNode:Bool, isAttribute:Bool)->Bool;
    var ?processEntities:Bool;
    var ?htmlEntities:Bool;
    var ?ignoreDeclaration:Bool;
    var ?ignorePiTags:Bool;
}