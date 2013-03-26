package org.opencv;;
import org.opencv.core.Core;

public class LdLibraryLoader {
    static {
        System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
    }
}

