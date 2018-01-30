import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import static org.junit.Assert.assertEquals;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

public class GradleTest {

	private final ByteArrayOutputStream outContent = new ByteArrayOutputStream();

    @Before
    public void setUpStreams() {
        System.setOut(new PrintStream(outContent));
    }

    @After
    public void restoreStreams() {
        System.setOut(System.out);
    }

    @Test
    public void testMain() {
		String[] args = null;
		io.cloudsmith.Main.main(args);

        assertEquals("Cloudsmith: Be Awesome. Automate Everything.\n", outContent.toString());
    }
}
