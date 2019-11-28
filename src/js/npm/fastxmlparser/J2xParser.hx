package js.npm.fastxmlparser;

@:jsRequire("fast-xml-parser", "j2xParser")
extern class J2xParser {
    function new(options:js.npm.FastXmlParser.J2XOptions);
    function parse(obj:Dynamic):String;
}
