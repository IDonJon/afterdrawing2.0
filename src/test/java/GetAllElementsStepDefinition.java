import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import static org.junit.Assert.assertNotNull;

public class GetAllElementsStepDefinition {
    String POSTS_API_URL = "https://afterdrawingapp.herokuapp.com/api";
    HttpClient _client;
    HttpRequest _request;
    String _api;

    @Given("I get all elements with GET operation for the {string}")
    public void IGetAllElementsWithGetOperationForThe(String arg0) {
        HttpClient client = HttpClient.newHttpClient();
        _client = client;
        _api = arg0;
    }

    @When("I perform GET all elements")
    public void iPerformGETAllElements() {
        HttpRequest request = HttpRequest.newBuilder()
                .DELETE()
                .header("accept", "application/json")
                .uri(URI.create(POSTS_API_URL + _api))
                .build();
        _request = request;
    }

    @Then("I get {string} elements as a result")
    public void IGetElementsAsAResult(String arg0) throws IOException, InterruptedException {
        HttpResponse<String> response = _client.send(_request, HttpResponse.BodyHandlers.ofString());
        assertNotNull(response);
    }
}
