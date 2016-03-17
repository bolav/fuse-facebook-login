using Uno;
using Uno.Collections;
using Fuse;
using Fuse.Scripting;
public class FacebookJS : NativeModule
{
	public FacebookJS() {
		AddMember(new NativeFunction("login", (NativeCallback)Login));
	}

	object Login (Context c, object[] args) {
		debug_log("Hello from Uno");
		if defined(Android) {
			MainView._fb.Login();
		}
		return null;
	}
}