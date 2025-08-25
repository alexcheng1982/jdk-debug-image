import sun.misc.Unsafe;
import java.lang.reflect.Field;

public class SegmentFault {
    public static void main(String[] args) throws Exception {
        Field f = Unsafe.class.getDeclaredField("theUnsafe");
        f.setAccessible(true);
        Unsafe unsafe = (Unsafe) f.get(null);

        System.out.println("About to crash with SIGSEGV...");

        unsafe.putAddress(0, 12345L);

        System.out.println("This line will never be reached.");
    }
}
