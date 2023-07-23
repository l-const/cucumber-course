package stepdefinitions;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.*;

public class StepDefinitions {

    @Given("I tried to login with username {word}")
    public void step_one(String username) {
        System.out.println("step_one: hello there , username: " + username);
    }

    @Then("I proceed")
    public void step_two() {
        System.out.println("step two: I proceed called!");
    }

    @Then("Logged in")
    public void step_three() {
        System.out.println("step two: I proceed called!");
    }

    @Then("User logged in with the following details")
    public void logged_in_details(DataTable data) {
        System.out.println("Data in datatable: "  + data);
        data.asList().forEach(System.out::println);
    }
}
