package REST_Data;

/**
 * Created by mihai on 2/21/2018.
 */
import database.ItemsCRUD;
import model.PcStatistics;

import javax.ws.rs.GET;
import  javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.xml.bind.annotation.XmlRootElement;
import java.awt.*;
import java.util.ArrayList;

@Path("/Pag")
public class Pagination {
    private ItemsCRUD statistics= new ItemsCRUD();

    @GET
    @Path("/test1")
    @Produces(MediaType.APPLICATION_JSON)
  public ArrayList<PcStatistics> get_dates_intervat(){

        ArrayList<PcStatistics> pc_dates= null;
        try {
            pc_dates = new ArrayList<PcStatistics>();
            pc_dates=statistics.get_interval_items(2,11);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return pc_dates;
    }



    @GET
    @Path("/test2")
    @Produces(MediaType.APPLICATION_XML)
    public String[] get_data1(){

      String[] dat= new String[3];
      dat[0]="asafasfa";
        dat[1]="asafasfa1";
        dat[2]="asafasfa2";
        return dat;
    }

}
