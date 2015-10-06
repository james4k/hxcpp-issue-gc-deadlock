package;


class Main {


	static function work ():Void {

		var a;
		var b;
		var c;

		for (i in 0...100000) {

			// allocs of various sizes, hopefully hitting all or most of the alloc paths
			a = haxe.io.Bytes.alloc (Std.int (Math.random () * 64));
			b = haxe.io.Bytes.alloc (Std.int (Math.random () * 1024));
			c = haxe.io.Bytes.alloc (Std.int (Math.random () * 256*1024));

		}

	}


	public static function main ():Void {

		cpp.vm.Thread.create (work);
		cpp.vm.Thread.create (work);
		cpp.vm.Thread.create (work);
		cpp.vm.Thread.create (work);
		cpp.vm.Thread.create (work);
		cpp.vm.Thread.create (work);
		cpp.vm.Thread.create (work);

		work ();

	}


}
