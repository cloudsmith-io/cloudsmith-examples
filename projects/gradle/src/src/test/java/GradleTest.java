
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

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
		io.cloudsmith.gradle.example.Main.main(args);

        assertEquals("Cloudsmith: Be Awesome. Automate Everything.\n", outContent.toString());
    }
}
