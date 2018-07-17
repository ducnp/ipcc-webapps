package vn.vnpt.ssdc.core.errors;

import java.net.URI;

public class ErrorConstants {
    public static final String PROBLEM_BASE_URL = "http://www.vnpt-technology.vn/problem";
    public static final URI DEFAULT_TYPE = URI.create(PROBLEM_BASE_URL + "/problem-with-message");
    public static final URI INVALID_CREDENTIALS_TYPE = URI.create(PROBLEM_BASE_URL + "/invalid-credentials");
}
