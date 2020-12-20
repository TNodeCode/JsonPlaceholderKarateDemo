# JSON Placeholder Karate API Testing Demo

This is a demo project for testing the JSON Placeholder API with the Karate testing framework

## Configuration

Use the `src/test/resources/karate-config.js` file to manage system properties.

## Scripts

Use the scripts in the `scripts/test` directory to tun the tests with in different environments.

Otherwise you can run the tests directly from the CL with the command:

```bash
$ mvn clean test
```

## Reports

Maven Surfire Plugin will generate HTML reports in the `target/surfire-reports` directory  