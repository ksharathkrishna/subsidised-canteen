package DataLayer;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;


public class reviews {
    //public static void main( String args[] ) throws UnknownHostException{
    // Creating a Mongo client
    MongoClient mongo = new MongoClient("localhost", 27017);
//        DB database = mongo.getDB("myMongoDb");

    // Creating Credentials
//        MongoCredential credential;
//        credential = ngoCredential.createCredential("sampleUser", "myDb",
//                "password".toCharArray());
    //    System.out.println("Connected to the database successfully");
    //m//o/ngo.getDatabaseNames().forEach(System.out::println);
    MongoDatabase database = mongo.getDatabase("canteen");


    //Accessing the database
    public void addReview(String name, String country, String service) {


        //Creating a collection

        //   MongoDatabase database = mongo.getDatabase("myDb");

        // Creating a collection
        System.out.println("Collection created successfully");
        //  database.createCollection("sampleCollection");
//
//
//        // Retieving a collection

        MongoCollection<Document> collection = database.getCollection("reviews");
        Document document = new Document("Rating", name)
                .append("Service Feedback", service)
                .append("Food Feedback", country);
//                .append("likes", 100)
//                .append("url", "http://www.tutorialspoint.com/mongodb/")
//                .append("by", "tutorials point");
        collection.insertOne(document);

//    void viewReviews(){
//        MongoCollection<Document> collection = database.getCollection("reviews");
//
//        FindIterable<Document> iterDoc = collection.find();
//        int i = 1;
//
//        // Getting the iterator
//        Iterator it = iterDoc.iterator();
//
//        while (it.hasNext()) {
//            System.out.println(it.next());
//            i++;
//        }

        System.out.println("Collection myCollection selected successfully");

        System.out.println("Collection created successfully");
    }
}

//}
