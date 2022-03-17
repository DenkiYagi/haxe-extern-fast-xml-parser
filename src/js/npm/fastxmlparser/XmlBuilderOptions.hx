package js.npm.fastxmlparser;

import haxe.extern.EitherType;

typedef XmlBuilderOptions = {
    var ?attributeNamePrefix:String;
    var ?attributesGroupName:EitherType<Bool, String>;
    var ?textNodeName:String;
    var ?ignoreAttributes:Bool;
    var ?cdataPropName:EitherType<Bool, String>;
    var ?commentPropName:EitherType<Bool, String>;
    var ?format:Bool;
    var ?indentBy:String;
    var ?arrayNodeName:String;
    var ?suppressEmptyNode:Bool;
    var ?suppressUnpairedNode:Bool;
    var ?suppressBooleanAttributes:Bool;
    var ?preserveOrder:Bool;
    var ?unpairedTags:Array<String>;
    var ?stopNodes:Array<String>;
    var ?tagValueProcessor:(name:String, value:String)->String;
    var ?attributeValueProcessor:(name:String, value:String)->String;
    var ?processEntities:Bool;
};