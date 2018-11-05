package DataLayer;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
public class reviews {
    public static void main(String[] args){
        try{
//---------- Connecting DataBase -------------------------//
            MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
//---------- Creating DataBase ---------------------------//
            MongoDatabase db = mongoClient.getDatabase("canteen");
//---------- Creating Collection -------------------------//
            MongoCollection<Document> table = db.getCollection("reviews");
            System.out.println("hi");
//---------- Creating Document ---------------------------//
            Document doc = new Document("name", "Peter John");
            doc.append("id",12);
//----------- Inserting Data ------------------------------//
            table.insertOne(doc);
        }catch(Exception e){
            System.out.println(e);
        }
    }
}