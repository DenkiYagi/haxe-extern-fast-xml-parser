package js.npm.fastxmlparser;

import haxe.extern.EitherType;

@:jsRequire("fast-xml-parser", "XMLValidator")
extern class XMLValidator {
    static function validate(xmlData:String, ?options:ValidationOptions):EitherType<Bool, ValidationError>;
}