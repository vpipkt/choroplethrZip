-1 fork choroplethr zip and then clone here, then do this stuff!

0. update to R 3.2.x? & get package roxygenize2? roxygen?

1. create a data.frame called df_zip_area

2. build package from source

3. run R_cmd_check

4. save df_zip_area as .Rdata in \data

5. Document data object 

6. run roxygenize 

7. re-build package 

8. re-run R_cmd_check

-----
    
1. creat normalize_zip_data function 



data(zip.map)
library(dplyr)
df_zip_area <- zip.map %>%
    group_by(region) %>%
    summarise(ALAND10 = first(ALAND10), AWATER10 = first(AWATER10), 
              ALANDWATER10 = first(ALAND10) + first(AWATER10))

save(df_zip_area, file = 'data/df_zip_area.rdata')
