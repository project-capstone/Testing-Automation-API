import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberSerenityRunner;
import org.junit.runner.RunWith;

@RunWith(CucumberSerenityRunner.class)
@CucumberOptions(
    plugin = {"pretty"},
        features = "src/test/resources/features/signup",
        tags = "@TC_1"
)
public class TestSuite {
}
// update test 3