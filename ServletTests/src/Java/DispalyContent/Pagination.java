package DispalyContent;

/**
 * Created by mihai on 2/20/2018.
 */
public class Pagination {


    public static int pagination_size=0,curent_page=0,firs_db=0,last_db=0;

    public Pagination(int pagination_size) {
        this.pagination_size = pagination_size;
    }
    public Pagination() {}

    public static int[] pagination_steps(){
        int[] step= new int[3];

        if(firs_db==0){
            firs_db=1;last_db=5;curent_page=1;
            step[0]=firs_db;
            step[1]=last_db;
            step[2]=curent_page;
        }
        else {
            step[0]=firs_db;
            step[1]=last_db;
            step[2]=curent_page;
        }
        return step;
    }

    public static void pagination_next(){
        int[] step= new int[3];
        if((last_db+1)<=pagination_size){
            last_db+=1;firs_db+=1;
            step[0]=firs_db;step[1]=last_db;
            if(curent_page<firs_db){
                ++curent_page;
                step[2]=curent_page;
            }
        }
    }


    public static void pagination_last(){
        int[] step= new int[3];
        if((firs_db-1)>=1){
            firs_db-=1;last_db-=1;
            step[0]=firs_db;step[1]=last_db;
            if(curent_page>last_db){
                --curent_page;
                step[2]=curent_page;
            }
        }
    }

}
