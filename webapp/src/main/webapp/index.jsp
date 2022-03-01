public class HttpBasicAuth {

    private static final String ENCODING = "UTF-8";

    /**
     * @param args
     */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        try {

            HttpClient client = new HttpClient();

            client.getState().setCredentials(
                    new AuthScope("ipaddress", 443, "realm"),
                    new UsernamePasswordCredentials("test1", "test1")
                    );

            PostMethod post = new PostMethod(
                    "http://address/test/login");

            post.setDoAuthentication( true );

            try {
                int status = client.executeMethod( post );
                System.out.println(status + "\n" + post.getResponseBodyAsString());
            } finally {
                // release any connection resources used by the method
                post.releaseConnection();
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
