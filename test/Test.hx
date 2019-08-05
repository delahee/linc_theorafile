
import theorafile.Theorafile;
import theorafile.Theorafile.OggTheora_File;
import theorafile.Theorafile.OggTheora_FileRef;

class Test {
        
    static function main() {

        trace(theorafile.Theorafile.example());

		var file : OggTheora_File = OggTheora_File.create();
		//var fPtr : OggTheora_FileRef = cast cpp.Pointer.addressOf(OggTheora_File).ref;
		
		var filePtr : cpp.Pointer<OggTheora_File> = cpp.Pointer.addressOf( file );
		
		
		//var result = Theorafile.tf_fopen( "../test.ogv", filePtr);
		
		//trace("result:" + result);
		var result = Theorafile.tata();
    }

}