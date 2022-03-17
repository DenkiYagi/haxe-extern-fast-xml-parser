package js.npm.fastxmlparser;

@:jsRequire("fast-xml-parser", "XMLBuilder")
extern class XMLBuilder {
    function new(options:XmlBuilderOptions);
    function build(jObj:Dynamic):Dynamic;
}