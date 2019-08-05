package theorafile;

private typedef Ptr<T> = cpp.Pointer<T>;

@:keep
@:include('linc_theorafile.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('theorafile'))
#end
extern class Theorafile {

        //external native function definition
        //can be wrapped in linc::libname or call directly
        //and the header for the lib included in linc_empty.h

    @:native('linc::theorafile::example')
    static function example() : Int;

        //inline functions can be used as wrappers
        //and can be useful to juggle haxe typing to or from the c++ extern

    static inline function inline_example() : Int {
        return untyped __cpp__('linc::theorafile::example()');
    }

    @:native('linc::theorafile::example')
    private static function _internal_example() : Int;
    static inline function other_inline_example() : Int {
        return _internal_example();
    }
	
	//@:native('tf_open')
	//public static function tf_fopen( fname:cpp.ConstCharStar, file : cpp.Pointer<OggTheora_File> ) : Int;
	
	@:native('tata')
	public static function tata():Int;

} //Empty


@:keep
@:structAccess
@:unreflective
@:native("OggTheora_File")
extern class OggTheora_File{
	
	public static inline function create() : OggTheora_File{
		return untyped __cpp__("OggTheora_File()");
	}
}

@:keep
@:include('linc_theorafile.h')
@:native("::cpp::Reference<OggTheora_File>") 
extern class OggTheora_FileRef extends OggTheora_File {}

