package js.npm.fastxmlparser;

typedef ValidationError = {
    final err:{
        final code:String;
        final msg:String;
        final line:Int;
        final col:Int;
    };
};

