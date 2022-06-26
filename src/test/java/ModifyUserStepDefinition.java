import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import static org.junit.Assert.assertNotNull;

public class ModifyUserStepDefinition {
    String POSTS_API_URL = "https://afterdrawingapp.herokuapp.com/api";
    HttpClient _client;
    HttpRequest _request;
    String _api ;

    @Given("I set PUT user service api for {string}")
    public void iSetPUTUserServiceApiFor(String arg0) {
        HttpClient client = HttpClient.newHttpClient();
        _client = client;
        _api = arg0;
    }

    @And("I perform PUT for the user number {string}")
    public void iPerformPUTForTheUserNumber(String arg0) {
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(POSTS_API_URL))
                .header("accept", "application/json")
                .PUT(HttpRequest.BodyPublishers.ofString("element1"))
                .build();
        _request = request;
    }

    @Then("I get a {int} status from modify user service")
    public void iGetAStatusFromModifyUserService(int arg0) throws IOException, InterruptedException {
        HttpResponse<String> response = _client.send(_request, HttpResponse.BodyHandlers.ofString());
        assertNotNull(response);
    }
}