package js.npm.fastxmlparser;

#if nodejs
@:jsRequire("fast-xml-parser", "j2xParser")
#else
@:native("parser.j2xParser")
#end
extern class J2xParser {
    function new(options:js.npm.FastXmlParser.J2XOptions);
    function parse(obj:Dynamic):String;
}
