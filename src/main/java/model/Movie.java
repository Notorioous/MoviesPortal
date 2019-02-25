package model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Movie {

    private int id;
    private String title;
    private String description;
    private Date createdDate;
    private String picUrl;
    private int year;
    private List<Genre> genres;
    private String director;

}
